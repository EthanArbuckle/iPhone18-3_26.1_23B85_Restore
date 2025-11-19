void sub_26234D160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void sub_26234DCC0(void *a1, uint64_t a2, std::string *a3, uint64_t *a4)
{
  v6 = a1;
  if (objc_msgSend_count(v6, v7, v8))
  {
    for (i = 0; objc_msgSend_count(v6, v9, v10) > i; ++i)
    {
      std::operator+<char>();
      std::to_string(&v24, i);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v24;
      }

      else
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v25, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v26, "\n", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v28 = v16->__r_.__value_.__r.__words[2];
      *__p = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v28 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      if (v28 >= 0)
      {
        v19 = HIBYTE(v28);
      }

      else
      {
        v19 = __p[1];
      }

      std::string::append(a3, v18, v19);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v21 = objc_msgSend_objectAtIndexedSubscript_(v6, v20, i);
      sub_26234F064(__p, v21);

      sub_26234E084(&v26, __p, a4);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v26.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, v22, v23);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }
}

size_t *sub_26234DF58(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
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

    v17[4] = v2;
    if (v10)
    {
      sub_26226C934(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_26226C98C(v17);
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

  v2[1] = v6;
  return result;
}

std::string *sub_26234E084(std::string *a1, float **a2, uint64_t *a3)
{
  v5 = sub_2621D0F64(a1, "");
  std::string::append(v5, "# obj_start\n", 0xCuLL);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v84 = 0uLL;
    v85 = 0;
  }

  else
  {
    do
    {
      std::to_string(&v78, *v6);
      v8 = std::string::insert(&v78, 0, "v ", 2uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v79, " ", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v77, v6[1]);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v77;
      }

      else
      {
        v12 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v77.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v80, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v81, " ", 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v76, v6[2]);
      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v76;
      }

      else
      {
        v18 = v76.__r_.__value_.__r.__words[0];
      }

      if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v76.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v82, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v83, " \n", 2uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v85 = v22->__r_.__value_.__r.__words[2];
      v84 = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v85 >= 0)
      {
        v24 = &v84;
      }

      else
      {
        v24 = v84;
      }

      if (v85 >= 0)
      {
        v25 = HIBYTE(v85);
      }

      else
      {
        v25 = *(&v84 + 1);
      }

      std::string::append(a1, v24, v25);
      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v6 += 4;
    }

    while (v6 != v7);
    v27 = *a2;
    v26 = a2[1];
    v28 = *a3;
    v84 = 0uLL;
    v85 = 0;
    if (v26 != v27)
    {
      v29 = 0;
      v30 = v28 + 1;
      do
      {
        std::to_string(&v83, v30 + v29);
        sub_26234DF58(&v84, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        ++v29;
      }

      while (v29 < (a2[1] - *a2) >> 4);
    }
  }

  sub_2621D0F64(&v75, "");
  v31 = (a2[1] - *a2) >> 4;
  v73 = (v31 / 2);
  if (v31 >= 2)
  {
    v32 = 0;
    v33 = v31 / 2;
    do
    {
      std::operator+<char>();
      v34 = std::string::append(&v76, " ", 1uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = v84 + 24 * ((v32 + 1) % v31);
      v37 = *(v36 + 23);
      if (v37 >= 0)
      {
        v38 = (v84 + 24 * ((v32 + 1) % v31));
      }

      else
      {
        v38 = *v36;
      }

      if (v37 >= 0)
      {
        v39 = *(v36 + 23);
      }

      else
      {
        v39 = *(v36 + 8);
      }

      v40 = std::string::append(&v77, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v78, " ", 1uLL);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = v84 + 24 * ((v32 + 3) % v31);
      v45 = *(v44 + 23);
      if (v45 >= 0)
      {
        v46 = (v84 + 24 * ((v32 + 3) % v31));
      }

      else
      {
        v46 = *v44;
      }

      if (v45 >= 0)
      {
        v47 = *(v44 + 23);
      }

      else
      {
        v47 = *(v44 + 8);
      }

      v48 = std::string::append(&v79, v46, v47);
      v49 = *&v48->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v80, " ", 1uLL);
      v51 = *&v50->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = v84 + 24 * ((v32 + 2) % v31);
      v53 = *(v52 + 23);
      if (v53 >= 0)
      {
        v54 = (v84 + 24 * ((v32 + 2) % v31));
      }

      else
      {
        v54 = *v52;
      }

      if (v53 >= 0)
      {
        v55 = *(v52 + 23);
      }

      else
      {
        v55 = *(v52 + 8);
      }

      v56 = std::string::append(&v81, v54, v55);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = std::string::append(&v82, "\n", 1uLL);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v83;
      }

      else
      {
        v60 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v60, v61);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      v32 += 2;
      --v33;
    }

    while (v33);
  }

  std::string::append(&v75, "f", 1uLL);
  if (v31 >= 2)
  {
    v62 = 0;
    v63 = (v31 / 2);
    do
    {
      std::operator+<char>();
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v83;
      }

      else
      {
        v64 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v64, v65);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      v62 += 48;
      --v63;
    }

    while (v63);
  }

  std::string::append(&v75, "\n", 1uLL);
  std::string::append(&v75, "f", 1uLL);
  if (v31 >= 2)
  {
    v66 = v73 + 1;
    v67 = 48 * v73 - 24;
    do
    {
      std::operator+<char>();
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v83;
      }

      else
      {
        v68 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = v83.__r_.__value_.__l.__size_;
      }

      std::string::append(&v75, v68, v69);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      --v66;
      v67 -= 48;
    }

    while (v66 > 1);
  }

  std::string::append(&v75, "\n", 1uLL);
  v83.__r_.__value_.__r.__words[0] = &v84;
  sub_2621DED18(&v83);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v75;
  }

  else
  {
    v70 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v75.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v70, v71);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *a3 += (a2[1] - *a2) >> 4;
  return std::string::append(a1, "# obj_end\n\n", 0xBuLL);
}

void sub_26234E7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(exception_object);
}

void sub_26234EA08(void *a1, uint64_t a2, std::string *a3, uint64_t *a4)
{
  v141 = *MEMORY[0x277D85DE8];
  v112 = a1;
  if (objc_msgSend_count(v112, v6, v7))
  {
    std::operator+<char>();
    v8 = std::string::append(&v136, "\n", 1uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v138 = *(&v8->__r_.__value_.__l + 2);
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v138) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((SBYTE7(v138) & 0x80u) == 0)
    {
      v11 = BYTE7(v138);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(a3, v10, v11);
    if (SBYTE7(v138) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    obj = v112;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v126, &v136, 16);
    if (v13)
    {
      v114 = *v127;
      do
      {
        v14 = 0;
        v115 = v13;
        do
        {
          if (*v127 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v126 + 1) + 8 * v14);
          v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
          objc_msgSend_endOrientation(v15, v19, v20);
          v22 = v21;
          objc_msgSend_startOrientation(v15, v23, v24);
          v28 = vcvtps_s32_f32((v22 - v27) / 5.0);
          if (v28 <= 10)
          {
            v29 = 10;
          }

          else
          {
            v29 = v28;
          }

          objc_msgSend_endOrientation(v15, v25, v26);
          v31 = v30;
          objc_msgSend_startOrientation(v15, v32, v33);
          v116 = v14;
          v34 = 0;
          v125 = (v31 - v35) / v29;
          do
          {
            v36 = objc_alloc_init(RS3DSurface);
            objc_msgSend_startOrientation(v15, v37, v38);
            v40 = v39;
            objc_msgSend_startOrientation(v15, v41, v42);
            v44 = v43;
            objc_msgSend_radius(v15, v45, v46);
            v48 = v47;
            objc_msgSend_circleCenter(v15, v49, v50);
            v124 = v51;
            v52 = (v40 + (v34 * v125)) * 3.14159265 / 180.0;
            v53 = cosf(v52);
            objc_msgSend_radius(v15, v54, v55);
            v57 = v56;
            v58 = sinf(v52);
            objc_msgSend_circleCenter(v15, v59, v60);
            v123 = v61;
            objc_msgSend_quad(v15, v62, v63);
            v122 = v64;
            objc_msgSend_radius(v15, v65, v66);
            v68 = v67;
            objc_msgSend_circleCenter(v15, v69, v70);
            v121 = v71;
            v72 = (v44 + (++v34 * v125)) * 3.14159265 / 180.0;
            v73 = cosf(v72);
            objc_msgSend_radius(v15, v74, v75);
            v77 = v76;
            v78 = sinf(v72);
            objc_msgSend_circleCenter(v15, v79, v80);
            v120 = v81;
            objc_msgSend_quad(v15, v82, v83);
            v119 = v84;
            objc_msgSend_quad(v15, v85, v86);
            v118 = v87;
            objc_msgSend_quad(v15, v88, v89);
            v117 = v90;
            v93 = objc_msgSend_type(v15, v91, v92);
            if (v36)
            {
              v36->type = v93;
            }

            v94 = objc_alloc_init(MEMORY[0x277CCAD78]);
            sub_2622C533C(v36, v94);

            *(&v96 + 1) = *(&v124 + 1);
            *&v96 = *&v124 + (v48 * v53);
            *(&v96 + 1) = v123 + (v57 * v58);
            v97 = v96;
            *(&v98 + 1) = *(&v121 + 1);
            DWORD2(v97) = v122;
            *&v98 = *&v121 + (v68 * v73);
            *(&v98 + 1) = v120 + (v77 * v78);
            v99 = v98;
            DWORD2(v99) = v119;
            DWORD2(v98) = v118;
            DWORD2(v96) = v117;
            *__p = v97;
            v138 = v99;
            v139 = v98;
            v140 = v96;
            if (v36)
            {
              objc_copyStruct(&v36[1], __p, 64, 1, 0);
            }

            objc_msgSend_addObject_(v18, v95, v36);
          }

          while (v29 != v34);

          v100 = v18;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v101 = v100;
          v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v132, __p, 16);
          if (v103)
          {
            v104 = *v133;
            do
            {
              for (i = 0; i != v103; ++i)
              {
                if (*v133 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = *(*(&v132 + 1) + 8 * i);
                sub_26234F064(v131, v106);
                sub_26234E084(&v130, v131, a4);
                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v107 = &v130;
                }

                else
                {
                  v107 = v130.__r_.__value_.__r.__words[0];
                }

                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v130.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v130.__r_.__value_.__l.__size_;
                }

                std::string::append(a3, v107, size);
                if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v130.__r_.__value_.__l.__data_);
                }

                if (v131[0])
                {
                  operator delete(v131[0]);
                }
              }

              v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v109, &v132, __p, 16);
            }

            while (v103);
          }

          ++v14;
        }

        while (v116 + 1 != v115);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v126, &v136, 16);
      }

      while (v13);
    }
  }

  v111 = *MEMORY[0x277D85DE8];
}

void sub_26234F064(void *a1, void *a2)
{
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v100 = v3;
  v6 = objc_msgSend_polygonSize(v3, v4, v5);
  objc_msgSend_quad(v100, v7, v8);
  v95 = v9;
  objc_msgSend_quad(v100, v10, v11);
  v94 = v12;
  if (objc_msgSend_type(v100, v13, v14))
  {
    v17.i32[0] = dword_2623A8280[objc_msgSend_type(v100, v15, v16) == 4];
  }

  else
  {
    v17 = 0;
  }

  v18 = v100;
  v19 = vsubq_f32(v95, v94).u64[0];
  v20.f32[0] = -*(&v19 + 1);
  v20.i32[1] = v19;
  v21 = vmul_f32(v20, v20);
  v21.i32[0] = vadd_f32(v21, vdup_lane_s32(v21, 1)).u32[0];
  v22 = vrsqrte_f32(v21.u32[0]);
  v23 = vmul_f32(v22, vrsqrts_f32(v21.u32[0], vmul_f32(v22, v22)));
  v24 = vmul_f32(v23, v23);
  v25 = vmul_n_f32(v20, vmul_f32(v23, vrsqrts_f32(v21.u32[0], v24)).f32[0]);
  v26 = vneg_f32(v25);
  if (v100)
  {
    v27 = v100[33];
    v24.f32[0] = *v17.i32 + 0.16;
    v28 = COERCE_DOUBLE(vdup_lane_s32(v24, 0));
    v29 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
    v30 = v27 <= 0.0;
    *v17.i32 = *v17.i32 + (v27 * 0.5);
    v31 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (v30)
    {
      v31 = v28;
    }
  }

  else
  {
    v23.f32[0] = *v17.i32 + 0.16;
    v31 = COERCE_DOUBLE(vdup_lane_s32(v23, 0));
    v32 = COERCE_DOUBLE(vdup_lane_s32(v17, 0));
  }

  v33 = vmul_f32(*&v31, v26);
  v34 = vmul_f32(v25, *&v32);
  if (v6 < 3)
  {
    for (i = 0; i != 64; i += 16)
    {
      objc_msgSend_quad(v18, v15, v16);
      DWORD2(v109) = v54;
      v111 = v55;
      *&v109 = v56;
      v110 = v57;
      v113 = v58;
      v115 = v59;
      v112 = v60;
      v114 = v61;
      v98 = *(&v109 + i);
      objc_msgSend_quad(v100, v62, v63);
      *&v64 = vadd_f32(v33, *&v98);
      v102 = v65;
      v104 = v66;
      v106 = v67;
      v101 = v68;
      v103 = v69;
      v108 = v70;
      v105 = v71;
      v107 = v72;
      *(&v64 + 1) = vextq_s8(*(&v101 + i), *(&v101 + i), 8uLL).u64[0];
      v116 = v64;
      sub_2621D9F60(a1, &v116);
      objc_msgSend_quad(v100, v73, v74);
      DWORD2(v109) = v75;
      v111 = v76;
      *&v109 = v77;
      v110 = v78;
      v113 = v79;
      v115 = v80;
      v112 = v81;
      v114 = v82;
      v99 = *(&v109 + i);
      objc_msgSend_quad(v100, v83, v84);
      *&v85 = vadd_f32(v34, *&v99);
      v102 = v86;
      v104 = v87;
      v106 = v88;
      v101 = v89;
      v103 = v90;
      v108 = v91;
      v105 = v92;
      v107 = v93;
      *(&v85 + 1) = vextq_s8(*(&v101 + i), *(&v101 + i), 8uLL).u64[0];
      v116 = v85;
      sub_2621D9F60(a1, &v116);
      v18 = v100;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    for (j = objc_msgSend_polygonSize(v100, v15, v16); ; j = objc_msgSend_polygonSize(v100, v51, v52))
    {
      v40 = v36 >= j;
      v18 = v100;
      if (v40)
      {
        break;
      }

      v96 = *(objc_msgSend_polygon(v100, v38, v39) + v35);
      v43 = objc_msgSend_polygon(v100, v41, v42);
      *&v44 = vadd_f32(v33, *&v96);
      *(&v44 + 1) = vextq_s8(*(v43 + v35), *(v43 + v35), 8uLL).u64[0];
      v109 = v44;
      sub_2621D9F60(a1, &v109);
      v97 = *(objc_msgSend_polygon(v100, v45, v46) + v35);
      v49 = objc_msgSend_polygon(v100, v47, v48);
      *&v50 = vadd_f32(v34, *&v97);
      *(&v50 + 1) = vextq_s8(*(v49 + v35), *(v49 + v35), 8uLL).u64[0];
      v109 = v50;
      sub_2621D9F60(a1, &v109);
      ++v36;
      v35 += 16;
    }
  }
}

void sub_26234F3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_26234F4FC(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v26, 16);
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8, v22);
        v15 = objc_msgSend_containsObject_(v4, v14, v13);

        if (v15)
        {
          v18 = objc_alloc_init(MEMORY[0x277CCAD78]);
          sub_2622C533C(v12, v18);

          if (v12)
          {
            v12[105] = 0;
          }
        }

        v19 = objc_msgSend_identifier(v12, v16, v17);
        objc_msgSend_addObject_(v4, v20, v19);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v22, v26, 16);
    }

    while (v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_26234F6BC(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = objc_msgSend_parentIdentifier(v15, v10, v11, v22);
        v17 = v16 == 0;

        if (!v17)
        {
          v18 = objc_msgSend_parentIdentifier(v15, v10, v11);
          isEqual = objc_msgSend_isEqual_(v18, v19, v6);

          if (isEqual)
          {
            sub_2622C534C(v15, v7);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v22, v26, 16);
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

RSMarkerSignal *sub_262350304(uint64_t a1, void *a2, void *a3)
{
  v438 = *MEMORY[0x277D85DE8];
  v371 = a2;
  v5 = a3;
  v373 = v5;
  if (a1)
  {
    v6 = v5;
    memset(v406, 0, sizeof(v406));
    if (v5)
    {
      v7 = *(v5 + 15);
      v8 = v6[14];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v8;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
    v369 = objc_msgSend_objectForKey_(v7, v12, v11);

    v13 = v373;
    if (v373)
    {
      v14 = v373[10];
      v13 = v373[14];
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    v18 = objc_msgSend_count(v15, v16, v17);
    if (v369)
    {
      v22 = *(v369 + 48);
      v23 = *(v369 + 64);
      v24 = *(v369 + 80);
      LODWORD(v19) = *(v369 + 8);
      LODWORD(v20) = *(v369 + 12);
      v25 = *&v19;
      v26 = *&v20;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      *&v22 = 0;
      DWORD2(v22) = 0;
      *&v23 = 0;
      DWORD2(v23) = 0;
      v24 = 0uLL;
    }

    v380 = a1;
    LODWORD(__p[1]) = DWORD2(v22);
    v427 = *(&v23 + 2);
    __p[0] = v22;
    v426 = v23;
    LODWORD(v430) = v24.n128_u32[2];
    v429 = v24.n128_u64[0];
    sub_26224041C(v14, v18, __p, v25, v26, v406, v24, *&v22, *&v23, v19, v20, v21);

    v27 = v373;
    if (v373)
    {
      v27 = v373[14];
    }

    v28 = v27;
    v31 = objc_msgSend_count(v28, v29, v30);

    if (v31)
    {
      v32 = *(v373[10] + 48);
      sub_2621CBF10(1uLL);
    }

    sub_2622669D0(a1 + 192, *(a1 + 200), 0, 0, 0);
    if (v373)
    {
      v33 = v373[4];
      v34 = (v373[5] - v33) >> 4;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    memset(v405, 0, sizeof(v405));
    sub_2621DDA38(v405, v33, v33 + 16 * v34, v34);
    sub_26229D6C8();
    v35 = v406[0];
    v395 = sub_26229DA10(v405, MEMORY[0], *v406[0]).n128_u64[0];
    v38 = *(a1 + 176);
    v37 = *(a1 + 184);
    if (v38 >= v37)
    {
      v40 = *(a1 + 168);
      v41 = (v38 - v40) >> 4;
      v42 = v41 + 1;
      if ((v41 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v43 = v37 - v40;
      if (v43 >> 3 > v42)
      {
        v42 = v43 >> 3;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v44 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        sub_2621CBF10(v44);
      }

      v45 = (16 * v41);
      *v45 = v395;
      v45[1] = v36;
      v39 = 16 * v41 + 16;
      v46 = *(a1 + 168);
      v47 = *(a1 + 176) - v46;
      v48 = 16 * v41 - v47;
      memcpy(v45 - v47, v46, v47);
      v49 = *(a1 + 168);
      *(a1 + 168) = v48;
      *(a1 + 176) = v39;
      *(a1 + 184) = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      *v38 = v395;
      v38[1] = v36;
      v39 = (v38 + 2);
    }

    *(a1 + 176) = v39;
    sub_26229D6C8();
    sub_26229D730(v404, v405, MEMORY[0], *v35, 60.0);
    sub_26229D6C8();
    sub_26229D730(v403, v405, MEMORY[0], *v35, 20.0);
    v52 = objc_msgSend_walls(v371, v50, v51);
    *v421 = 0u;
    v422 = 0u;
    v423 = 0u;
    v424 = 0u;
    obj = v52;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v421, __p, 16);
    if (v56)
    {
      v398 = 0;
      v396 = 0;
      v57 = *v422;
      do
      {
        v58 = 0;
        do
        {
          if (*v422 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = *(v421[1] + v58);
          objc_msgSend_quad(v59, v54, v55, v369);
          v391 = v60;
          objc_msgSend_quad(v59, v61, v62);
          v387 = v63;
          objc_msgSend_confidence(v59, v64, v65);
          v69 = v68;
          if (v59)
          {
            v70 = v59[29];
          }

          else
          {
            LOBYTE(v70) = 0;
          }

          objc_msgSend_quad(v59, v66, v67);
          v386 = v71;
          objc_msgSend_quad(v59, v72, v73);
          v385 = v74;
          if (v59)
          {
            objc_copyStruct(&dest, v59 + 52, 16, 1, 0);
            v75 = dest;
          }

          else
          {
            v75 = 0;
          }

          v76 = v396 - v398;
          v77 = 0xCCCCCCCCCCCCCCCDLL * ((v396 - v398) >> 3);
          v78 = v77 + 1;
          if (v77 + 1 > 0x666666666666666)
          {
            sub_2621CBEB0();
          }

          if (0x999999999999999ALL * (-v398 >> 3) > v78)
          {
            v78 = 0x999999999999999ALL * (-v398 >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-v398 >> 3) >= 0x333333333333333)
          {
            v79 = 0x666666666666666;
          }

          else
          {
            v79 = v78;
          }

          if (v79)
          {
            sub_262348BE8(v79);
          }

          v80 = 8 * ((v396 - v398) >> 3);
          *v80 = v391;
          *(v80 + 8) = v387;
          *(v80 + 16) = v385;
          *(v80 + 20) = v386;
          *(v80 + 24) = v69;
          *(v80 + 28) = v70;
          *(v80 + 32) = v75;
          v396 = v80 + 40;
          memcpy((40 * v77 + 40 * (v76 / -40)), v398, v76);
          if (v398)
          {
            operator delete(v398);
          }

          v398 = 40 * v77 + 40 * (v76 / -40);
          ++v58;
        }

        while (v56 != v58);
        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v54, v421, __p, 16);
        v56 = v81;
      }

      while (v81);
    }

    else
    {
      v398 = 0;
      v396 = 0;
    }

    v84 = objc_msgSend_openings(v371, v82, v83);
    *v421 = 0u;
    v422 = 0u;
    v423 = 0u;
    v424 = 0u;
    v85 = v84;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, v421, __p, 16))
    {
      *v422;
      *v422;
      v89 = *v421[1];
      objc_msgSend_quad(*v421[1], v87, v88, v369);
      objc_msgSend_quad(v89, v90, v91);
      sub_2621CBF10(1uLL);
    }

    v400 = 0;
    v401 = 0;
    v402 = 0;
    memset(v399, 0, sizeof(v399));
    v418 = 0;
    v419 = 0;
    v420 = 0;
    v415 = 0;
    v416 = 0;
    v417 = 0;
    v92 = v380;
    v93 = *(*(v380 + 176) - 16);
    v433 = v93;
    v94 = v396;
    if (v396 == v398)
    {
      dest = 0uLL;
      *&v432 = 0;
      __p[0] = &dest;
      sub_2621E1D40(__p);
    }

    else
    {
      v95 = 0;
      v96 = 0;
      if (0xCCCCCCCCCCCCCCCDLL * ((v396 - v398) >> 3) <= 1)
      {
        v97 = 1;
      }

      else
      {
        v97 = 0xCCCCCCCCCCCCCCCDLL * ((v396 - v398) >> 3);
      }

      v98 = (v398 + 8);
      do
      {
        LODWORD(v93) = *(v380 + 16);
        v99 = v98[-1];
        v100 = vsub_f32(*v98, v99);
        v101 = vmul_f32(v100, v100);
        v101.i32[0] = vadd_f32(v101, vdup_lane_s32(v101, 1)).u32[0];
        v102 = vrsqrte_f32(v101.u32[0]);
        v103 = vmul_f32(v102, vrsqrts_f32(v101.u32[0], vmul_f32(v102, v102)));
        v104 = vmul_n_f32(v100, vmul_f32(v103, vrsqrts_f32(v101.u32[0], vmul_f32(v103, v103))).f32[0]);
        v105 = vmla_n_f32(*v98, v104, *&v93);
        __p[0] = vmls_lane_f32(v99, v104, *&v93, 0);
        __p[1] = v105;
        if (sub_2623485D8(v404, __p))
        {
          v106 = (v95 >> 3) + 1;
          if (v106 >> 61)
          {
            sub_2621CBEB0();
          }

          if (v95 >> 3 != -1)
          {
            sub_2621CBEC8(v106);
          }

          v107 = (8 * (v95 >> 3));
          *v107 = v96;
          memcpy(0, 0, v95);
          v95 = (v107 + 1);
        }

        ++v96;
        v98 += 5;
      }

      while (v97 != v96);
      dest = 0uLL;
      *&v432 = 0;
      v92 = v380;
      if (v95)
      {
        v108 = 0;
        do
        {
          v109 = v108++;
          if (v108 >= v95 >> 3)
          {
            v117 = v95 >> 3;
          }

          else
          {
            v110 = *(8 * v109);
            v111 = v108;
            do
            {
              v112 = *(8 * v111);
              v113 = sub_2621C92AC((v398 + 40 * v110), (v398 + 40 * v112), 0);
              v114 = *(v380 + 24);
              v116 = v113 < v114;
              v115 = vabds_f32(180.0, v113);
              v116 = v116 || v115 < v114;
              if (v116)
              {
                v421[0] = v110;
                v421[1] = v112;
                v426 = 0;
                __p[0] = 0;
                __p[1] = 0;
                sub_2622AB9E8(__p, v421, &v422, 2uLL);
                sub_2623489A8(&dest, __p);
                if (__p[0])
                {
                  operator delete(__p[0]);
                }
              }

              ++v111;
            }

            while (v111 < v95 >> 3);
            v117 = v95 >> 3;
            v94 = v396;
          }
        }

        while (v108 < v117);
        v118 = *(&dest + 1);
        v119 = dest;
        v92 = v380;
        if (*(&dest + 1) != dest)
        {
          v120 = 0;
          v121 = v433;
          do
          {
            v122 = (v119 + 24 * v120);
            v123 = *v122;
            v124 = v122[1];
            if (((v124 - *v122) & 0xFFFFFFFFFFFFFFF0) == 0x10)
            {
              v372 = v120;
              v125 = 0;
              v126 = 1;
              do
              {
                v127 = (v124 - v123) >> 3;
                obja = (v125 + 1);
                if (v125 + 1 < v127)
                {
                  v374 = v126;
                  do
                  {
                    sub_2621DCD34(&v435, (v398 + 40 * *(v123 + 8 * v125)), (v398 + 40 * *(v123 + 8 * v126)));
                    v128 = v435;
                    v129 = (v435 + 4);
                    v130 = v435 == v436 || v129 == v436;
                    v131 = v435;
                    if (!v130)
                    {
                      v132 = *v435;
                      v131 = v435;
                      v133 = (v435 + 4);
                      do
                      {
                        v134 = *v133++;
                        v135 = v134;
                        if (v134 < v132)
                        {
                          v132 = v135;
                          v131 = v129;
                        }

                        v129 = v133;
                      }

                      while (v133 != v436);
                    }

                    v136 = (v131 - v435) >> 2;
                    v137 = v398 + 40 * *(*v122 + 8 * v125);
                    v139 = *(v137 + 8);
                    v138 = (v137 + 8);
                    v140 = v139;
                    if ((v136 + 1) < 3)
                    {
                      v138 = (v398 + 40 * *(*v122 + 8 * v125));
                    }

                    v141 = *v138;
                    v142 = (v398 + 40 * *(*v122 + 8 * v126));
                    v130 = (v136 & 1) == 0;
                    v143 = v142 + 1;
                    if (v130)
                    {
                      v143 = (v398 + 40 * *(*v122 + 8 * v126));
                    }

                    v144 = *v143;
                    v145 = vsub_f32(v141, *v143);
                    v146.i32[0] = vdup_lane_s32(v145, 1).u32[0];
                    v146.f32[1] = -v145.f32[0];
                    v147 = vmul_f32(v146, v146);
                    v147.i32[0] = vadd_f32(v147, vdup_lane_s32(v147, 1)).u32[0];
                    v148 = vrsqrte_f32(v147.u32[0]);
                    v149 = vmul_f32(v148, vrsqrts_f32(v147.u32[0], vmul_f32(v148, v148)));
                    v150 = vmul_n_f32(v146, vmul_f32(v149, vrsqrts_f32(v147.u32[0], vmul_f32(v149, v149))).f32[0]);
                    v151 = vmul_f32(vadd_f32(*(v398 + 40 * *(*v122 + 8 * v125)), v140), 0x3F0000003F000000);
                    v152 = vmul_f32(vadd_f32(*v142, v142[1]), 0x3F0000003F000000);
                    v153 = vsub_f32(v141, v121);
                    v154 = vmul_f32(v153, v153);
                    v154.f32[0] = sqrtf(vaddv_f32(v154));
                    v155 = vsub_f32(*v143, v121);
                    v156 = vmul_f32(v155, v155);
                    v156.f32[0] = sqrtf(vaddv_f32(v156));
                    v157 = vbsl_s8(vdup_lane_s32(vcgt_f32(v156, v154), 0), vsub_f32(v152, v151), vsub_f32(v151, v152));
                    v158 = vmul_f32(v150, v157);
                    v159 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v158, vdup_lane_s32(v158, 1))), 0), vneg_f32(v150), v150);
                    DWORD2(v422) = 0;
                    *&v422 = 0;
                    BYTE12(v422) = -1;
                    v392 = v141;
                    v421[0] = v141;
                    v421[1] = v144;
                    v160 = v398 + 40 * *(*v122 + 8 * v125);
                    v161 = v398 + 40 * *(*v122 + 8 * v126);
                    v162 = *(v161 + 16);
                    if (v162 >= *(v160 + 16))
                    {
                      v162 = *(v160 + 16);
                    }

                    *&v422 = v162;
                    v163 = *(v161 + 20);
                    if (v163 >= *(v160 + 20))
                    {
                      v163 = *(v160 + 20);
                    }

                    *(&v422 + 1) = v163;
                    *&v423 = v159;
                    LODWORD(v413[0]) = -1;
                    v164 = (v398 + 40 * *(*v122 + 8 * v125));
                    v165 = v164[1];
                    v166 = vsub_f32(*v164, v165);
                    v167 = sqrtf(vaddv_f32(vmul_f32(v166, v166)));
                    if (v167 > 0.2)
                    {
                      v168 = (v398 + 40 * *(*v122 + 8 * v126));
                      v169 = v168[1];
                      v170 = vsub_f32(*v168, v169);
                      v171 = sqrtf(vaddv_f32(vmul_f32(v170, v170)));
                      if (v171 > 0.2)
                      {
                        v172 = sqrtf(vaddv_f32(vmul_f32(v145, v145)));
                        if (v167 >= v172)
                        {
                          v167 = v172;
                        }

                        if (v171 < v167)
                        {
                          v167 = v171;
                        }

                        if (v172 <= 2.0 && v167 >= 0.1)
                        {
                          v173 = vmul_f32(vadd_f32(*v164, v165), 0x3F0000003F000000);
                          v174 = vmul_f32(vadd_f32(*v168, v169), 0x3F0000003F000000);
                          v175 = vmla_lane_f32(vmul_n_f32(vsub_f32(vzip2_s32(v173, v174), vdup_lane_s32(v392, 1)), vsub_f32(v144, v392).f32[0]), vsub_f32(vzip1_s32(v173, v174), vdup_lane_s32(v392, 0)), v145, 1);
                          if (vmul_lane_f32(v175, v175, 1).f32[0] <= 0.0)
                          {
                            v176 = 0;
                            v177 = v398;
                            while (1)
                            {
                              sub_26223FEB8(__p, v177, v421);
                              if (*__p >= 0.9 && *(&v426 + 1) <= 0.2 && v427 < 10.0)
                              {
                                break;
                              }

                              ++v176;
                              v177 += 40;
                              if (v97 == v176)
                              {
                                LODWORD(v176) = -1;
                                goto LABEL_119;
                              }
                            }

                            LODWORD(v413[0]) = v176;
                            v183 = *(v177 + 16);
                            *v421 = *v177;
                            v422 = v183;
                            v144 = v421[1];
                            v392 = v421[0];
                            v184 = vsub_f32(v421[1], v421[0]);
                            v185 = vmul_f32(v184, v184);
                            v185.f32[0] = sqrtf(vaddv_f32(v185));
                            *&v183 = vdiv_f32(vsub_f32(vext_s8(v421[0], v421[1], 4uLL), vext_s8(v421[1], v421[0], 4uLL)), vdup_lane_s32(v185, 0));
                            v186 = vmul_f32(*&v183, v157);
                            v159 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v186, vdup_lane_s32(v186, 1))), 0), vneg_f32(*&v183), *&v183);
                            *&v423 = v159;
                            if (v176 != -1)
                            {
                              if ((v176 & 0x80000000) == 0 && *(v398 + 40 * v176 + 28) != 3)
                              {
                                goto LABEL_179;
                              }

                              goto LABEL_130;
                            }

LABEL_119:
                            v179 = sub_2621C92AC(v421, (v398 + 40 * *(*v122 + 8 * v125)), 0);
                            v180 = sub_2621C92AC(v421, (v398 + 40 * *(*v122 + 8 * v126)), 0);
                            if (v180 >= v179)
                            {
                              v181 = v179;
                            }

                            else
                            {
                              v181 = v180;
                            }

                            v182 = *(v92 + 24);
                            if (v181 < (90.0 - v182))
                            {
                              goto LABEL_179;
                            }

                            if (v179 >= v180)
                            {
                              v180 = v179;
                            }

                            if (v180 > (180.0 - v182))
                            {
                              goto LABEL_179;
                            }

LABEL_130:
                            if (*(v398 + 40 * *(*v122 + 8 * v125) + 28) != 3 || *(v398 + 40 * *(*v122 + 8 * v126) + 28) != 3)
                            {
                              v187 = 0;
                              v188 = v176;
                              v381 = 1;
                              do
                              {
                                if (*(*v122 + 8 * v125) != v187 && *(*v122 + 8 * v126) != v187 && v187 != v188)
                                {
                                  v190 = (v398 + 40 * v187);
                                  sub_2621DCD34(__p, v421, v190);
                                  v191 = __p[0];
                                  v192 = __p[0];
                                  if (__p[0] != __p[1])
                                  {
                                    v193 = (__p[0] + 4);
                                    v192 = __p[0];
                                    if (__p[0] + 4 != __p[1])
                                    {
                                      v194 = *__p[0];
                                      v192 = __p[0];
                                      v195 = (__p[0] + 4);
                                      do
                                      {
                                        v196 = *v195++;
                                        v197 = v196;
                                        if (v196 < v194)
                                        {
                                          v194 = v197;
                                          v192 = v193;
                                        }

                                        v193 = v195;
                                      }

                                      while (v195 != __p[1]);
                                    }
                                  }

                                  v198 = *v192;
                                  v199 = *v190;
                                  v200 = v190[1];
                                  v201 = vsub_f32(*v190, v200);
                                  v202 = COERCE_DOUBLE(vmul_f32(v201, v201));
                                  if (sqrtf(vaddv_f32(*&v202)) >= 0.3 || (v202 = v198, v198 >= 0.00001))
                                  {
                                    LODWORD(v202) = *(v380 + 28);
                                    if (v198 < *&v202 || (v375 = *&v202, sub_2621DCE38(v392, v144, v199, v200)))
                                    {
                                      v381 = 0;
                                      v203 = 23;
                                    }

                                    else
                                    {
                                      v204 = vsub_f32(v200, v199);
                                      v205 = vaddv_f32(vmul_f32(vsub_f32(v392, v199), v204));
                                      v206 = vaddv_f32(vmul_f32(v204, v204));
                                      if (v206 < 0.000001)
                                      {
                                        v206 = 0.000001;
                                      }

                                      v207 = vmla_n_f32(v199, v204, v205 / v206);
                                      v208 = vsub_f32(v207, v199);
                                      v209 = vsub_f32(v207, v200);
                                      if (vaddv_f32(vmul_f32(v208, v209)) > 0.00001)
                                      {
                                        v210 = vmul_f32(v208, v208);
                                        v211 = vmul_f32(v209, v209);
                                        v212 = vsqrt_f32(vadd_f32(vzip1_s32(v210, v211), vzip2_s32(v210, v211)));
                                        v207 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v212, 1), v212)), 0), v200, v199);
                                      }

                                      v213 = vmla_n_f32(v199, v204, vaddv_f32(vmul_f32(vsub_f32(v144, v199), v204)) / v206);
                                      v214 = vsub_f32(v213, v199);
                                      v215 = vsub_f32(v213, v200);
                                      if (vaddv_f32(vmul_f32(v214, v215)) > 0.00001)
                                      {
                                        v216 = vmul_f32(v214, v214);
                                        v217 = vmul_f32(v215, v215);
                                        v218 = vsqrt_f32(vadd_f32(vzip1_s32(v216, v217), vzip2_s32(v216, v217)));
                                        v213 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v218, 1), v218)), 0), v200, v199);
                                      }

                                      v219 = vsub_f32(v207, v392);
                                      v220 = vmul_f32(v219, v219);
                                      v221 = vsub_f32(v213, v144);
                                      v222 = vmul_f32(v221, v221);
                                      v223 = vmvn_s8(vcgt_f32(vdup_lane_s32(v375, 0), vsqrt_f32(vadd_f32(vzip1_s32(v222, v220), vzip2_s32(v222, v220)))));
                                      v381 &= v223.i8[4] & v223.i8[0];
                                      if (v223.i32[1] & v223.i32[0])
                                      {
                                        v203 = 0;
                                      }

                                      else
                                      {
                                        v203 = 23;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v203 = 25;
                                  }

                                  if (v191)
                                  {
                                    operator delete(v191);
                                  }

                                  if (v203 == 25)
                                  {
                                    v188 = v176;
                                  }

                                  else
                                  {
                                    v188 = v176;
                                    if (v203)
                                    {
                                      break;
                                    }
                                  }
                                }

                                ++v187;
                              }

                              while (v187 != v97);
                              v92 = v380;
                              if (v381)
                              {
                                v224 = 0;
                                v225 = v176;
                                v226 = vmul_f32(vadd_f32(v392, v144), 0x3F0000003F000000);
                                v227 = (v398 + 8);
                                while (v225 == v224 || !sub_2621DCE38(v227[-1], *v227, v121, v226))
                                {
                                  ++v224;
                                  v227 += 5;
                                  if (v224 >= 0xCCCCCCCCCCCCCCCDLL * ((v396 - v398) >> 3))
                                  {
                                    v228 = 0;
                                    goto LABEL_173;
                                  }
                                }

                                v228 = 1;
LABEL_173:
                                v229 = sub_2621C92AC(v421, &v433, 0);
                                if ((v228 & 1) != 0 || ((v230 = *(v380 + 20), v229 > v230) ? (v231 = v229 < (180.0 - v230)) : (v231 = 0), !v231))
                                {
                                  v427 = 0.0;
                                  *__p = *v421;
                                  v426 = v422;
                                  v429 = v159;
                                  v428 = 2;
                                  sub_262348AE4(&v418, __p);
                                  sub_2621C7CD0(&v415, v413);
                                }
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_179:
                    if (v128)
                    {
                      operator delete(v128);
                    }

                    ++v126;
                    v123 = *v122;
                    v124 = v122[1];
                    v127 = (v124 - *v122) >> 3;
                    v94 = v396;
                  }

                  while (v126 < v127);
                  v126 = v374;
                }

                ++v126;
                ++v125;
              }

              while (obja < v127 - 1);
              v118 = *(&dest + 1);
              v119 = dest;
              v120 = v372;
            }

            ++v120;
          }

          while (v120 < 0xAAAAAAAAAAAAAAABLL * ((v118 - v119) >> 3));
        }
      }

      __p[0] = &dest;
      sub_2621E1D40(__p);
    }

    sub_2622B9F2C((v92 + 144), v403);
    v413[0] = 0;
    v413[1] = 0;
    v414 = 0;
    v411[0] = 0;
    v411[1] = 0;
    v412 = 0;
    v435 = 0;
    v436 = 0;
    v437 = 0;
    v234 = v398;
    objb = v94 - v398;
    if (v94 != v398)
    {
      do
      {
        sub_262348AE4(&v435, v234);
        v234 = (v234 + 40);
      }

      while (v234 != v94);
      v433 = 0uLL;
      v434 = 0;
      if (v436 != v435)
      {
        v235 = 0;
        v236 = 0;
        do
        {
          v237 = vsub_f32(*(v435 + v235), *(v435 + v235 + 8));
          if (sqrtf(vaddv_f32(vmul_f32(v237, v237))) > 0.06)
          {
            sub_2621CBF10(1uLL);
          }

          ++v236;
          v235 += 40;
        }

        while (v236 < 0xCCCCCCCCCCCCCCCDLL * ((v436 - v435) >> 3));
        *&v433 = 0;
        v92 = v380;
      }
    }

    if (v435)
    {
      operator delete(v435);
    }

    *v393 = *v413;
    v238 = v413[0];
    v239 = v418;
    v240 = v419;
    if (v413[1] != v413[0] && v419 != v418)
    {
      v242 = 0xCCCCCCCCCCCCCCCDLL * ((v413[1] - v413[0]) >> 3);
      LOBYTE(v421[0]) = 1;
      sub_26220F1D4(__p, v242);
      v246 = 0;
      v247 = __p[0];
      if (v242 <= 1)
      {
        v242 = 1;
      }

      do
      {
        v248 = v238 + 5 * v246;
        v249 = *v248;
        v250 = v248[1];
        v251 = v239;
        while (1)
        {
          v243.i64[0] = *v251;
          v244.i64[0] = *(v251 + 1);
          v245.i64[0] = v249;
          if (sub_2621DD0C0(v243, v244, v245, v250))
          {
            break;
          }

          v251 = (v251 + 40);
          if (v251 == v240)
          {
            goto LABEL_209;
          }
        }

        *&v247[(v246 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v246);
LABEL_209:
        ++v246;
      }

      while (v246 != v242);
      *&v422 = 0;
      v252 = 0uLL;
      *v421 = 0u;
      *&v432 = 0;
      dest = 0u;
      v253 = __p[1];
      v254 = v411[0];
      if (__p[1])
      {
        v255 = 0;
        v256 = v238;
        v257 = v411[0];
        do
        {
          if ((*(__p[0] + ((v255 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v255))
          {
            sub_262348AE4(v421, v256);
            sub_2621C7CD0(&dest, v257);
            v253 = __p[1];
          }

          ++v255;
          ++v257;
          v256 = (v256 + 40);
        }

        while (v255 < v253);
        v252 = *v421;
        v258 = v422;
        v259 = dest;
        v253 = v432;
      }

      else
      {
        v258 = 0;
        v259 = 0uLL;
      }

      v421[0] = v238;
      *v393 = v252;
      *v413 = v252;
      v414 = v258;
      *v411 = v259;
      v412 = v253;
      v92 = v380;
      if (v254)
      {
        operator delete(v254);
        v238 = v421[0];
      }

      if (v238)
      {
        operator delete(v238);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    v408 = 0;
    v409 = 0;
    v410 = 0;
    memset(v407, 0, sizeof(v407));
    for (; v239 != v240; v239 = (v239 + 40))
    {
      sub_262348AE4(&v408, v239);
    }

    v260 = v415;
    v261 = v416;
    while (v260 != v261)
    {
      sub_2621C7CD0(v407, v260++);
    }

    for (i = v393[0]; i != v393[1]; i = (i + 40))
    {
      sub_262348AE4(&v408, i);
    }

    v263 = v411[0];
    v264 = v411[1];
    while (v263 != v264)
    {
      sub_2621C7CD0(v407, v263++);
    }

    v265 = *(v92 + 176);
    v267 = v408;
    v266 = v409;
    if (v409 == v408)
    {
      v269 = 0;
      v270 = 0;
    }

    else
    {
      v388 = v265;
      v268 = 0;
      v269 = 0;
      v270 = 0;
      v271 = 0;
      do
      {
        v272 = &v267[v268];
        v273 = v269 - v270;
        v274 = 0xAAAAAAAAAAAAAAABLL * ((v269 - v270) >> 4);
        v275 = v274 + 1;
        if (v274 + 1 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v270 >> 4) > v275)
        {
          v275 = 0x5555555555555556 * (-v270 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v270 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v276 = 0x555555555555555;
        }

        else
        {
          v276 = v275;
        }

        if (v276)
        {
          sub_262348CE4(v276);
        }

        v277 = 48 * v274;
        v278 = *(v407[0] + v271);
        *v277 = 0;
        *(v277 + 8) = 0;
        *(v277 + 24) = 0;
        *(v277 + 16) = 0;
        *(v277 + 28) = -1;
        v279 = *v272;
        v280 = *(v272 + 1);
        *(v277 + 32) = *(v272 + 4);
        *v277 = v279;
        *(v277 + 16) = v280;
        *(v277 + 40) = v278;
        *(v277 + 44) = 0;
        v269 = 48 * v274 + 48;
        v281 = (v277 + 48 * (v273 / -48));
        memcpy(v281, v270, v273);
        if (v270)
        {
          operator delete(v270);
          v267 = v408;
          v266 = v409;
        }

        v270 = v281;
        ++v271;
        v268 += 40;
      }

      while (v271 < 0xCCCCCCCCCCCCCCCDLL * ((v266 - v267) >> 3));
      v265 = v388;
    }

    *&v422 = 0;
    v282 = 0uLL;
    *v421 = 0u;
    v283 = v380;
    v284 = *(v380 + 120);
    v383 = *(v380 + 128);
    v389 = v270;
    if (v284 != v383)
    {
      v382 = (v265 - 16);
      v285 = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      if (v285 <= 1)
      {
        v286 = 1;
      }

      else
      {
        v286 = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      }

      objc = 0xCCCCCCCCCCCCCCCDLL * (objb >> 3);
      v287 = v285 & 0x7FFFFFFF;
      while (1)
      {
        ++v284[5].i32[1];
        v288 = v270;
        if (v270 != v269)
        {
          while (1)
          {
            sub_26223FEB8(__p, v284, v288);
            v289 = *&__p[1] < 0.5 || *(&v426 + 1) > 0.5;
            if (!v289 && v427 < 30.0)
            {
              break;
            }

            v288 += 6;
            if (v288 == v269)
            {
              goto LABEL_263;
            }
          }

          v288[5].i32[1] = v284[5].i32[1];
          goto LABEL_319;
        }

LABEL_263:
        v291 = v398;
        if (v396 == v398)
        {
LABEL_271:
          v292 = 0xFFFFFFFFLL;
        }

        else
        {
          v292 = 0;
          while (1)
          {
            sub_26223FEB8(__p, v284, v291);
            if (*&__p[1] >= 0.9 && *(&v426 + 1) <= 0.2 && v427 < 10.0)
            {
              break;
            }

            ++v292;
            v291 += 5;
            if (v286 == v292)
            {
              goto LABEL_271;
            }
          }

          v292 = v292;
          if (*(v398 + 40 * v292 + 28) != 3)
          {
            goto LABEL_319;
          }
        }

        v294 = sub_2623485D8(v403, v284);
        if (v396 == v398)
        {
          v300 = 0;
        }

        else
        {
          v295 = vmul_f32(vadd_f32(*v284, v284[1]), 0x3F0000003F000000);
          v296 = *v382;
          v297 = (v398 + 8);
          v298 = v286 - 1;
          do
          {
            v299 = v298;
            v300 = sub_2621DCE38(v297[-1], *v297, v296, v295);
            if (v300)
            {
              break;
            }

            v298 = v299 - 1;
            v297 += 5;
          }

          while (v299);
        }

        v301 = sub_2621C92AC(v284, v382, 0);
        v283 = v380;
        if (!v294)
        {
          goto LABEL_285;
        }

        v302 = v301 <= 30.0;
        if (v301 >= 150.0)
        {
          v302 = 1;
        }

        if (v300 || v302)
        {
LABEL_285:
          *&dest = -1;
          v426 = 0;
          __p[0] = 0;
          __p[1] = 0;
          sub_2621DD5D0(__p, &dest, &dest + 8, 2uLL);
          v435 = -1;
          *&v432 = 0;
          dest = 0uLL;
          sub_2621DD5D0(&dest, &v435, &v436, 2uLL);
          *&v433 = 0;
          v436 = 0;
          v437 = 0;
          v435 = 0;
          sub_2621DD5D0(&v435, &v433, &v433 + 8, 2uLL);
          v303 = v435;
          if (objc >= 1)
          {
            v304 = 0;
            v305 = __p[0];
            v306 = dest;
            do
            {
              if (v304 != v292)
              {
                sub_2621DCD34(&v433, v284, (v398 + 40 * v304));
                v307 = v433;
                v308 = (v433 + 4);
                v309 = v433 == *(&v433 + 1) || v308 == *(&v433 + 1);
                v310 = v433;
                if (!v309)
                {
                  v311 = *v433;
                  v310 = v433;
                  v312 = (v433 + 4);
                  do
                  {
                    v313 = *v312++;
                    v314 = v313;
                    if (v313 < v311)
                    {
                      v311 = v314;
                      v310 = v308;
                    }

                    v308 = v312;
                  }

                  while (v312 != *(&v433 + 1));
                }

                if (*v310 < 0.2)
                {
                  v315 = (v310 - v433) >> 2;
                  v316 = v315 / 2;
                  v305[v316] = v304;
                  *(v306 + 4 * v316) = v315 % 2;
                  ++v303[v316];
                }

                if (v307)
                {
                  operator delete(v307);
                }
              }

              ++v304;
            }

            while (v304 < v287);
          }

          if (*v303 == 1 && v303[1] == 1)
          {
            v317 = __p[0];
            v318 = *__p[0];
            v319 = *(__p[0] + 1);
            v320 = v319 == -1 || v318 == -1;
            if (!v320 && v318 != v319)
            {
              v322 = dest;
              v323 = (v398 + 40 * v318);
              if (*dest)
              {
                ++v323;
              }

              v324 = *v323;
              *v284 = *v323;
              v325 = (v398 + 40 * v317[1]);
              if (*(v322 + 4))
              {
                ++v325;
              }

              v326 = *v325;
              v284[1] = *v325;
              v284[5].i32[0] = v292;
              v327 = vsub_f32(vext_s8(v324, v326, 4uLL), vext_s8(v326, v324, 4uLL));
              v328 = vsub_f32(v326, v324);
              v329 = vmul_f32(v328, v328);
              v329.f32[0] = sqrtf(vaddv_f32(v329));
              v330 = vdiv_f32(v327, vdup_lane_s32(v329, 0));
              v331 = vmul_f32(v330, v284[4]);
              v284[4] = vbsl_s8(vdup_lane_s32(vcgt_f32(0, vadd_f32(v331, vdup_lane_s32(v331, 1))), 0), vneg_f32(v330), v330);
              sub_262348D3C(v421, v284);
            }
          }

          operator delete(v303);
          v283 = v380;
          if (dest)
          {
            operator delete(dest);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }
        }

LABEL_319:
        v284 += 6;
        v270 = v389;
        if (v284 == v383)
        {
          v282 = *v421;
          break;
        }
      }
    }

    v332 = v282;
    v333 = *(&v282 + 1) - v282;
    if ((*(&v282 + 1) - v282) >= 1)
    {
      if (-v269 >= v333)
      {
        if (v282 != *(&v282 + 1))
        {
          memmove(v269, v282, *(&v282 + 1) - v282);
        }

        v269 += v333;
      }

      else
      {
        v334 = v270;
        v335 = v269 - v270;
        v336 = 0xAAAAAAAAAAAAAAABLL * ((v269 - v270) >> 4);
        v337 = v336 - 0x5555555555555555 * (v333 >> 4);
        if (v337 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * (-v334 >> 4) > v337)
        {
          v337 = 0x5555555555555556 * (-v334 >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v334 >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v338 = 0x555555555555555;
        }

        else
        {
          v338 = v337;
        }

        if (v338)
        {
          sub_262348CE4(v338);
        }

        v339 = 48 * v336;
        v269 = 48 * v336 + v333;
        v340 = 48 * v336;
        do
        {
          v341 = *v332;
          v342 = v332[2];
          *(v340 + 16) = v332[1];
          *(v340 + 32) = v342;
          *v340 = v341;
          v340 += 48;
          v332 += 3;
          v333 -= 48;
        }

        while (v333);
        v343 = (v339 - v335);
        memcpy((v339 - v335), v389, v335);
        if (v389)
        {
          operator delete(v389);
        }

        v270 = v343;
      }
    }

    v426 = 0;
    v344 = 0uLL;
    *__p = 0u;
    if (v270 == v269)
    {
      v346 = 0;
    }

    else
    {
      v345 = v270;
      do
      {
        if (v345[5].i32[1] <= 1000)
        {
          sub_262348D3C(__p, v345);
        }

        v345 += 6;
      }

      while (v345 != v269);
      v344 = *__p;
      v346 = v426;
    }

    v347 = v283[15];
    *(v283 + 15) = v344;
    v283[17] = v346;
    if (v347)
    {
      operator delete(v347);
    }

    if (v421[0])
    {
      operator delete(v421[0]);
    }

    if (v270)
    {
      operator delete(v270);
    }

    v348 = v283[15];
    v349 = v283[16];
    while (v348 != v349)
    {
      sub_262348AE4(&v400, v348);
      v350 = v348 + 10;
      sub_2621C7CD0(v399, v350);
      v348 = (v350 + 2);
    }

    if (v407[0])
    {
      operator delete(v407[0]);
    }

    if (v408)
    {
      operator delete(v408);
    }

    if (v411[0])
    {
      operator delete(v411[0]);
    }

    if (v413[0])
    {
      operator delete(v413[0]);
    }

    if (v415)
    {
      operator delete(v415);
    }

    if (v418)
    {
      operator delete(v418);
    }

    v351 = objc_msgSend_array(MEMORY[0x277CBEB18], v232, v233, v369);
    if (v371)
    {
      v390 = v371[3];
      v353 = v371[4];
    }

    else
    {
      v390 = 0;
      v353 = 0;
    }

    v384 = v353;
    v355 = v400;
    v354 = v401;
    if (v400 != v401)
    {
      v356 = v400 + 4;
      do
      {
        v357 = v356 - 4;
        *&v352 = *(v356 - 4);
        v397 = v352;
        *&v352 = *(v356 - 3);
        *v394 = v352;
        v358 = objc_alloc_init(RS3DMarker);
        v360 = v358;
        if (v358)
        {
          v362 = *v394;
          v361 = v397;
          v363 = v397;
          DWORD2(v363) = v390;
          v364 = *v394;
          DWORD2(v364) = v390;
          DWORD2(v362) = v384;
          DWORD2(v361) = v384;
          *&v358[1].super.isa = v363;
          *&v358[1]._normal[4] = v364;
          *&v358[2].super.isa = v362;
          *&v358[2]._normal[4] = v361;
          *&v363 = *v356;
          *&v358->_normal[4] = v363;
          v358->_score = 1.0;
        }

        objc_msgSend_addObject_(v351, v359, v358);

        v356 += 5;
      }

      while (v357 + 5 != v354);
    }

    v365 = objc_alloc_init(RSMarkerSignal);
    v366 = v365;
    if (v365)
    {
      objc_storeStrong(&v365->_markers, v351);
    }

    if (v399[0])
    {
      operator delete(v399[0]);
    }

    if (v355)
    {
      operator delete(v355);
    }

    if (v398)
    {
      operator delete(v398);
    }

    if (v403[0])
    {
      operator delete(v403[0]);
    }

    if (v404[0])
    {
      operator delete(v404[0]);
    }

    if (v405[0])
    {
      operator delete(v405[0]);
    }

    operator delete(0);

    if (v406[0])
    {
      operator delete(v406[0]);
    }
  }

  else
  {
    v366 = 0;
  }

  v367 = *MEMORY[0x277D85DE8];

  return v366;
}

void sub_262352D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  sub_2621C74C4(&STACK[0x450]);
  sub_2621C74C4(&STACK[0x210]);
  sub_2622811D0(&STACK[0x250]);
  if (__p)
  {
    *(v72 - 216) = __p;
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v74 = *(v72 - 192);
  if (v74)
  {
    operator delete(v74);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a65)
  {
    operator delete(a65);
  }

  if (a69)
  {
    operator delete(a69);
  }

  if (a72)
  {
    operator delete(a72);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a35)
  {
    operator delete(a35);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

id sub_262353250(uint64_t *a1, const char *a2, float a3, double a4)
{
  v5 = a2;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    *v8.i32 = a3 * 6.0;
    v11 = vdupq_lane_s32(v8, 0);
    *v12.i64 = a4;
    *&v12.i64[1] = a4;
    v29 = v11;
    v31 = v12;
    __asm { FMOV            V0.4S, #6.0 }

    v28 = _Q0;
    do
    {
      v37 = *v9;
      v36 = *(v9 + 8);
      v18 = *(v9 + 16);
      v19 = objc_alloc_init(RS3DSurface);
      v21 = v19;
      v22.i64[0] = v37;
      v22.i64[1] = v36;
      v23 = vsubq_f32(vdivq_f32(vmulq_f32(v22, v28), v29), v31);
      v24 = vzip2q_s64(v23, 0);
      v23.i32[2] = 0;
      v25 = v23;
      v25.i32[3] = v35;
      v26 = v24;
      v26.i32[3] = v34;
      v24.i32[3] = v33;
      v23.i32[3] = v32;
      src[0] = v25;
      src[1] = v26;
      src[2] = v24;
      src[3] = v23;
      if (v19)
      {
        objc_copyStruct(&v19[1], src, 64, 1, 0);
        *(v21 + 108) = v18;
        *(v21 + 104) = v5;
      }

      objc_msgSend_addObject_(v7, v20, v21, *&v28, *&v29);

      v9 += 24;
    }

    while (v9 != v10);
  }

  return v7;
}

void sub_2623533F8(void *a1)
{
  sub_262353430(a1);

  JUMPOUT(0x266727420);
}

void *sub_262353430(void *a1)
{
  *a1 = &unk_2874EEE20;
  sub_262353488(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_262353488(void *result)
{
  v1 = result[1];
  if (v1 != result[2])
  {
    v2 = result;
    do
    {
      result = *v1;
      if (*v1)
      {
        result = (*(*result + 8))(result);
      }

      *v1 = 0;
      v3 = v2[2];
      v4 = v3 - (v1 + 1);
      if (v3 != (v1 + 1))
      {
        result = memmove(v1, v1 + 1, v3 - (v1 + 1));
      }

      v2[2] = v1 + v4;
    }

    while (v1 != (v1 + v4));
  }

  return result;
}

void *sub_26235351C(void *a1)
{
  *a1 = &unk_2874EEDF8;
  a1[2] = a1[1];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = a1[5];
  if (v4 != v3)
  {
    v5 = v4 - 22;
    v6 = v4 - 22;
    v7 = v4 - 22;
    do
    {
      v8 = *v7;
      v7 -= 22;
      (*v8)(v6);
      v5 -= 22;
      v9 = v6 == v3;
      v6 = v7;
    }

    while (!v9);
  }

  a1[5] = v3;
  v12 = v2;
  sub_2621C5004(&v12);
  v10 = a1[1];
  if (v10)
  {
    a1[2] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_2623535F4(void *a1, int a2, uint64_t a3)
{
  v6 = a1[2];
  v5 = a1[3];
  if (v6 >= v5)
  {
    v8 = a1[1];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_2621CBEB0();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v14 = (v6 - v8) >> 2;
    v15 = (4 * v10);
    v16 = (4 * v10 - 4 * v14);
    *v15 = a2;
    v7 = v15 + 1;
    memcpy(v16, v8, v9);
    a1[1] = v16;
    a1[2] = v7;
    a1[3] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = a2;
    v7 = v6 + 4;
  }

  a1[2] = v7;

  return sub_26224663C(a1 + 4, a3, a3);
}

uint64_t sub_262353710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return sub_26224663C(a3, *(a1 + 32) + 176, a2);
}

void sub_262353750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2621C5004(va);
  _Unwind_Resume(a1);
}

void sub_262353768(void *a1)
{
  sub_26235351C(a1);

  JUMPOUT(0x266727420);
}

void sub_2623537A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v86[0] = *(a1 + 16);
  v5 = *(a1 + 20);
  memset(v85, 0, sizeof(v85));
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v7 = (a1 + 208);
  v6 = *(a1 + 208);
  v8 = a1 + 184;
  v9 = *(a1 + 160);
  v74 = a1 + 160;
  *(a1 + 192) = *(a1 + 184);
  *(a1 + 168) = v9;
  v10 = a1 + 256;
  *(a1 + 264) = *(a1 + 256);
  v76 = a1 + 280;
  v12 = (a1 + 136);
  v11 = *(a1 + 136);
  *(a1 + 288) = *(a1 + 280);
  *(a1 + 144) = v11;
  v69 = a1 + 304;
  *(a1 + 312) = *(a1 + 304);
  v68 = a1 + 328;
  *(a1 + 336) = *(a1 + 328);
  v13 = *(a1 + 216);
  while (v6 != v13)
  {
    v6[1] = *v6;
    v6 += 3;
  }

  v14 = *(a1 + 232);
  v15 = *(a1 + 240);
  v16 = (a1 + 232);
  while (v14 != v15)
  {
    v14[1] = *v14;
    v14 += 3;
  }

  sub_2621E1D94((a1 + 232));
  sub_2621E1D94(v7);
  v18 = *a2;
  v17 = *(a2 + 8);
  while (v18 != v17)
  {
    sub_2621DE070(v12, v18++);
  }

  v70 = v10;
  v20 = *(a1 + 136);
  v19 = *(a1 + 144);
  if (v20 != v19)
  {
    do
    {
      sub_2621CBA84(&v82, v20);
      v21 = v20 + 1;
      sub_2621CBA84(&v82, v21);
      __p = 0;
      sub_2621C9004(v85, &__p);
      __p = 0;
      sub_2621C9004(v85, &__p);
      v20 = v21 + 1;
    }

    while (v20 != v19);
    v22 = v82;
    v23 = v83 - v82;
    if (v83 != v82)
    {
      v24 = 0;
      v25 = 0;
      v26 = v85[0];
      v27 = v23 >> 3;
      v72 = v85[0] + 8;
      v73 = (v23 >> 3) - 1;
      v71 = v82 + 8;
      do
      {
        __p = 0;
        if (*(v26 + 8 * v25))
        {
          v28 = v25 + 1;
        }

        else
        {
          *(v26 + 8 * v25) = ++v24;
          __p = v22[v25];
          v75 = __p;
          sub_2621CBA84(v74, &__p);
          LODWORD(v78) = v75;
          sub_2621C8F2C(v8, &v78);
          LODWORD(v78) = HIDWORD(v75);
          sub_2621C8F2C(v8, &v78);
          v28 = v25 + 1;
          if (v25 + 1 < v27)
          {
            v29 = v73 - v25;
            v30 = (v72 + 8 * v25);
            v31 = &v71[8 * v25];
            do
            {
              v32 = vsub_f32(v75, *v31);
              if (sqrtf(vaddv_f32(vmul_f32(v32, v32))) < v4)
              {
                *v30 = v24;
              }

              ++v30;
              ++v31;
              --v29;
            }

            while (v29);
          }
        }

        v25 = v28;
      }

      while (v28 < v27);
    }
  }

  v33 = *(a1 + 136);
  if (*(a1 + 144) != v33)
  {
    v34 = 0;
    v35 = (v85[0] + 8);
    do
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      v78 = *(v35 - 1) - 1;
      sub_2621C9004(&__p, &v78);
      v78 = *v35 - 1;
      sub_2621C9004(&__p, &v78);
      sub_2622F88B0(v7, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      ++v34;
      v33 = *(a1 + 136);
      v35 += 2;
    }

    while (v34 < (*(a1 + 144) - v33) >> 4);
  }

  *(a1 + 144) = v33;
  v36 = *(a1 + 208);
  for (i = *(a1 + 216); v36 != i; v36 += 3)
  {
    v39 = **v36;
    v38 = (*v36)[1];
    v40 = *(a1 + 152);
    v41 = *(a1 + 160);
    if (v33 >= v40)
    {
      v42 = (v33 - *v12) >> 4;
      if ((v42 + 1) >> 60)
      {
        sub_2621CBEB0();
      }

      v43 = v40 - *v12;
      v44 = v43 >> 3;
      if (v43 >> 3 <= (v42 + 1))
      {
        v44 = v42 + 1;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v45 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        sub_2621CBF10(v45);
      }

      v46 = (16 * v42);
      *v46 = *(v41 + 8 * v39);
      v46[1] = *(v41 + 8 * v38);
      v33 = (16 * v42 + 16);
      v47 = *(a1 + 136);
      v48 = *(a1 + 144) - v47;
      v49 = v46 - v48;
      memcpy(v46 - v48, v47, v48);
      v50 = *(a1 + 136);
      *(a1 + 136) = v49;
      *(a1 + 144) = v33;
      *(a1 + 152) = 0;
      if (v50)
      {
        operator delete(v50);
      }

      v16 = (a1 + 232);
    }

    else
    {
      *v33 = *(v41 + 8 * v39);
      v33[1] = *(v41 + 8 * v38);
      v33 += 2;
    }

    *(a1 + 144) = v33;
  }

  if (*(a1 + 168) != *(a1 + 160))
  {
    v51 = 0;
    do
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      v78 = 0;
      v53 = *(a1 + 208);
      v52 = *(a1 + 216);
      if (v52 != v53)
      {
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = *(v53 + v54);
          if (v51 == *v56 || v51 == v56[1])
          {
            sub_2621C9004(&__p, &v78);
            v53 = *(a1 + 208);
            v52 = *(a1 + 216);
          }

          v78 = ++v55;
          v54 += 24;
        }

        while (v55 < 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 3));
      }

      sub_2622F88B0(v16, &__p);
      if (__p)
      {
        operator delete(__p);
      }

      ++v51;
    }

    while (v51 < (*(a1 + 168) - *(a1 + 160)) >> 3);
  }

  v57 = *(a1 + 232);
  v58 = *(a1 + 240);
  if (v57 != v58)
  {
    while (1)
    {
      __p = 0;
      v80 = 0;
      v81 = 0;
      sub_262234B80(&__p, *v57, v57[1], (v57[1] - *v57) >> 3);
      v59 = __p;
      if (v80 - __p == 16)
      {
        break;
      }

      sub_2621C8F2C(v70, v86);
      sub_2621C8F2C(v76, v86);
      if (v59)
      {
        goto LABEL_59;
      }

LABEL_60:
      v57 += 3;
      if (v57 == v58)
      {
        goto LABEL_61;
      }
    }

    v60 = sub_2621C92AC((*v12 + 16 * *__p), (*v12 + 16 * *(__p + 1)), 0);
    *&v78 = v60;
    if ((180.0 - v60) < v60)
    {
      v60 = 180.0 - v60;
    }

    v77 = v60;
    sub_2621C8F2C(v70, &v77);
    sub_2621C8F2C(v76, &v78);
LABEL_59:
    operator delete(v59);
    goto LABEL_60;
  }

LABEL_61:
  __p = 0;
  v62 = *(a1 + 136);
  v61 = *(a1 + 144);
  if (v61 != v62)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    do
    {
      v66 = vsub_f32(*(v62 + v64), *(v62 + v64 + 8));
      if (sqrtf(vaddv_f32(vmul_f32(v66, v66))) <= v5)
      {
        sub_2621C9004(v68, &__p);
        sub_2621C9004(v69, *(*v7 + v63));
        sub_2621C9004(v69, (*(*v7 + v63) + 8));
        v62 = *(a1 + 136);
        v61 = *(a1 + 144);
      }

      __p = ++v65;
      v64 += 16;
      v63 += 24;
    }

    while (v65 < (v61 - v62) >> 4);
  }

  if (v82)
  {
    operator delete(v82);
  }

  v67 = v85[0];
  if (v85[0])
  {

    operator delete(v67);
  }
}

void sub_262353DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 136);
  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262353E7C(float32x2_t *a1, float32x2_t *a2, uint64_t a3, float32x2_t a4)
{
  if (a2 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  if (((a2 - a1) >> 4) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = (a2 - a1) >> 4;
  }

  v8 = a1 + 1;
  v9 = 0xFFFFFFFFLL;
  v10 = 3.4028e38;
  do
  {
    if (a3 != v6)
    {
      v11 = sub_2621DC76C(a4, v8[-1], *v8, 0.00001);
      if (v11 >= v10)
      {
        v9 = v9;
      }

      else
      {
        v9 = v6;
      }

      if (v11 < v10)
      {
        v10 = v11;
      }
    }

    ++v6;
    v8 += 2;
  }

  while (v7 != v6);
  return v9;
}

void *sub_262353F30(void *result, float32x2_t *a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = (result[17] + 16 * a3);
  v6 = vsub_f32(*a2, *v5);
  v7 = vmul_f32(v6, v6);
  v8 = vsub_f32(*a2, v5[1]);
  v9 = vmul_f32(v8, v8);
  v10 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v7), vzip2_s32(v9, v7)));
  *(a4 + 8) = v10.f32[1] >= v10.f32[0];
  v11 = *(result[26] + 24 * a3);
  v12 = result[29];
  *(a4 + 4) = *(v12 + 24 * v11[v10.f32[1] >= v10.f32[0]] + 8) - *(v12 + 24 * v11[v10.f32[1] >= v10.f32[0]]) == 8;
  v13 = vaddv_f32(vmul_f32(vsub_f32(*a2, *v5), vsub_f32(*a2, v5[1])));
  *(a4 + 5) = v13 > 0.00001;
  if (v10.f32[0] >= v10.f32[1])
  {
    v10.f32[0] = v10.f32[1];
  }

  *a4 = v10.i32[0];
  v14 = v11[1];
  v15 = *(v12 + 24 * *v11 + 8) - *(v12 + 24 * *v11);
  v16 = *(v12 + 24 * v14 + 8) - *(v12 + 24 * v14);
  v17 = *a2;
  if (v13 <= 0.00001 && v16 != 8 && v15 == 8)
  {
    v20 = vsub_f32(v17, *v5);
    v21 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
    if (v21 < a5)
    {
      v22 = 0;
      v23 = 1;
LABEL_23:
      *(a4 + 4) = v23;
      *a4 = v21;
      *(a4 + 8) = v22;
      return result;
    }
  }

  v23 = v16 == 8;
  if (v13 <= 0.00001 && v15 != 8 && v16 == 8)
  {
    v26 = vsub_f32(v17, v5[1]);
    v21 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
    if (v21 < a5)
    {
      v22 = 1;
      goto LABEL_23;
    }
  }

  return result;
}

BOOL sub_262354078(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v6 = v4 - v5;
  v7 = v6 >> 4;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 >> 4;
    }

    v11 = 0.0;
    v12 = 10000.0;
    do
    {
      v13 = (*(a1 + 208) + v8);
      memset(v48, 0, sizeof(v48));
      sub_262234B80(v48, *v13, v13[1], (v13[1] - *v13) >> 3);
      v14 = v48[0];
      v15 = *(a1 + 256);
      v16 = *(v15 + 4 * *v48[0]);
      v17 = *(v15 + 4 * *(v48[0] + 8));
      v18 = (*(a1 + 136) + v9);
      v19 = *v18;
      v20 = v18[1];
      v21 = vabds_f32(90.0, v16);
      v22 = vabds_f32(90.0, v17);
      if (v21 > v2)
      {
        v21 = v2;
      }

      if (v22 > v2)
      {
        v22 = v2;
      }

      v23 = v21 + v22;
      v47 = v21 + v22;
      sub_2621C8F2C(&v49, &v47);
      v24 = vsub_f32(v19, v20);
      v11 = v11 + sqrtf(vaddv_f32(vmul_f32(v24, v24)));
      if (v23 < v12)
      {
        v12 = v23;
      }

      operator delete(v14);
      v9 += 16;
      v8 += 24;
      --v10;
    }

    while (v10);
    v25 = v49;
    v26 = v11;
  }

  else
  {
    v25 = 0;
    v26 = 0.0;
    v12 = 10000.0;
  }

  v27 = v2 + v2;
  if (v12 < v27)
  {
    v28 = v26 / (v7 + 0.000001);
    if (v3 <= v28)
    {
      v28 = v3;
    }

    v29 = v12 + 4.0;
    if (v27 < (v12 + 4.0))
    {
      v29 = v27;
    }

    v30 = *(a1 + 136);
    if (v50 == v25)
    {
      v35 = -1;
    }

    else
    {
      v31 = 0;
      if ((v50 - v25) <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v50 - v25;
      }

      v33 = v30 + 1;
      v34 = -1.0;
      v35 = -1;
      do
      {
        if (v25[v31] < v29)
        {
          v36 = vsub_f32(v33[-1], *v33);
          v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
          if (v37 > v34)
          {
            v34 = v37;
            v35 = v31;
          }
        }

        ++v31;
        v33 += 2;
      }

      while (v32 != v31);
    }

    v38 = vsub_f32(v30[2 * v35], v30[2 * v35 + 1]);
    if (sqrtf(vaddv_f32(vmul_f32(v38, v38))) <= v28)
    {
      v39 = v12 + 10.0;
      if (v27 < (v12 + 10.0))
      {
        v39 = v27;
      }

      if (v50 == v25)
      {
        v35 = -1;
      }

      else
      {
        v40 = 0;
        if ((v50 - v25) <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v50 - v25;
        }

        v42 = v30 + 1;
        v43 = -1.0;
        v35 = -1;
        do
        {
          if (v25[v40] < v39)
          {
            v44 = vsub_f32(v42[-1], *v42);
            v45 = sqrtf(vaddv_f32(vmul_f32(v44, v44)));
            if (v45 > v43)
            {
              v43 = v45;
              v35 = v40;
            }
          }

          ++v40;
          v42 += 2;
        }

        while (v41 != v40);
      }
    }

    *(a1 + 376) = *v30[2 * v35].f32;
  }

  if (v25)
  {
    operator delete(v25);
  }

  return v12 < v27;
}

void sub_26235433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_262354364(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 84) + *(a1 + 76);
  v3 = *(*(a1 + 208) + 24 * a2);
  v4 = *(a1 + 280);
  v5 = *v3;
  v6 = v3[1];
  if (*(v4 + 4 * v5) < v2 || *(v4 + 4 * v6) < v2)
  {
    return 1;
  }

  v9 = *(a1 + 232);
  v11 = v9 + 24 * v5;
  v10 = *v11;
  if (*(v11 + 8) - *v11 != 16)
  {
    return 0;
  }

  v13 = v9 + 24 * v6;
  v12 = *v13;
  if (*(v13 + 8) - *v13 != 16)
  {
    return 0;
  }

  v14 = *(a1 + 28);
  v15 = sub_2621C92AC((*(a1 + 136) + 16 * v10[*v10 == a2]), (*(a1 + 136) + 16 * v12[*v12 == a2]), 0);
  if ((180.0 - v15) < v15)
  {
    v15 = 180.0 - v15;
  }

  return v15 < v14;
}

uint64_t *sub_262354454(uint64_t *result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  i = v7;
  while (1)
  {
    v7 = i;
    v9 = (a2 - i) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v51 = *(a2 - 8);
      v52 = *(i + 8);
      if (v51 >= v52)
      {
        if (v51 > v52)
        {
          v53 = *(i + 12);
          v54 = *(a2 - 4);
          goto LABEL_220;
        }

        v54 = *(a2 - 4);
        v53 = *(i + 12);
        if (v54 > v53)
        {
LABEL_220:
          v132 = *i;
          *i = *(a2 - 16);
          *(a2 - 16) = v132;
          *(i + 8) = v51;
          *(a2 - 8) = v52;
          *(i + 12) = v54;
          *(a2 - 4) = v53;
        }
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v55 = (i + 16);
      v57 = i == a2 || v55 == a2;
      if (a4)
      {
        if (!v57)
        {
          v58 = 0;
          v59 = i;
          do
          {
            v60 = v59;
            v59 = v55;
            v61 = *(v60 + 6);
            v62 = *(v60 + 2);
            if (v61 >= v62)
            {
              v63 = *(v60 + 7);
              v64 = *(v60 + 3);
              v65 = v61 <= v62 && v63 <= v64;
              if (!v65)
              {
                v66 = v60[2];
                v60[2] = *v60;
                *(v59 + 2) = v62;
                *(v59 + 3) = v64;
                v67 = i;
                if (v60 != i)
                {
                  v68 = v58;
                  v67 = v60;
                  while (1)
                  {
                    v69 = v67 - 16;
                    v70 = i + v68;
                    v71 = *(i + v68 - 8);
                    if (v61 < v71)
                    {
                      break;
                    }

                    v72 = *(v70 - 4);
                    if (v61 <= v71 && v63 <= v72)
                    {
                      goto LABEL_143;
                    }

                    v74 = *(v70 - 16);
                    v75 = i + v68;
                    *v75 = v74;
                    *(v75 + 8) = v71;
                    *(v75 + 12) = v72;
                    v67 = v69;
                    v68 -= 16;
                    if (!v68)
                    {
                      v67 = i;
                      goto LABEL_143;
                    }
                  }

                  v67 = i + v68;
                }

LABEL_143:
                *v67 = v66;
                *(v67 + 8) = v61;
                *(v67 + 12) = v63;
              }
            }

            v55 = v59 + 2;
            v58 += 16;
          }

          while (v59 + 2 != a2);
        }
      }

      else if (!v57)
      {
        do
        {
          v117 = v7;
          v7 = v55;
          v118 = *(v117 + 24);
          v119 = *(v117 + 8);
          if (v118 >= v119)
          {
            v120 = *(v117 + 28);
            v121 = *(v117 + 12);
            if (v118 > v119 || v120 > v121)
            {
              v123 = *v55;
              *v7 = *v117;
              *(v7 + 8) = v119;
              *(v7 + 12) = v121;
              v124 = *(v117 - 8);
              if (v118 >= v124)
              {
                while (1)
                {
                  v126 = *(v117 - 4);
                  if (v118 <= v124 && v120 <= v126)
                  {
                    break;
                  }

                  v125 = v117 - 16;
                  *v117 = *(v117 - 16);
                  *(v117 + 8) = *(v117 - 8);
                  *(v117 + 12) = v126;
                  v124 = *(v117 - 24);
                  v117 -= 16;
                  if (v118 < v124)
                  {
                    goto LABEL_212;
                  }
                }
              }

              v125 = v117;
LABEL_212:
              *v125 = v123;
              *(v125 + 8) = v118;
              *(v125 + 12) = v120;
            }
          }

          v55 = (v7 + 16);
        }

        while (v7 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v76 = (v9 - 2) >> 1;
      v77 = v76;
      while (2)
      {
        v78 = v77;
        if (v76 >= v77)
        {
          v79 = (2 * v77) | 1;
          v80 = i + 16 * v79;
          if (2 * v78 + 2 < v9)
          {
            v81 = *(v80 + 8);
            v82 = *(v80 + 24);
            if (v81 >= v82 && (v81 > v82 || *(v80 + 12) > *(v80 + 28)))
            {
              v80 += 16;
              v79 = 2 * v78 + 2;
            }
          }

          v83 = i + 16 * v78;
          v84 = *(v80 + 8);
          v85 = *(v83 + 8);
          if (v84 < v85)
          {
            v86 = *(v83 + 12);
            v87 = *(v80 + 12);
            goto LABEL_156;
          }

          if (v84 <= v85)
          {
            v87 = *(v80 + 12);
            v86 = *(v83 + 12);
            if (v87 <= v86)
            {
LABEL_156:
              v88 = *v83;
              *v83 = *v80;
              *(v83 + 8) = v84;
              *(v83 + 12) = v87;
              if (v76 >= v79)
              {
                while (1)
                {
                  v90 = 2 * v79;
                  v79 = (2 * v79) | 1;
                  v89 = i + 16 * v79;
                  v91 = v90 + 2;
                  if (v91 < v9)
                  {
                    v92 = *(v89 + 8);
                    result = *(v89 + 24);
                    if (v92 >= result && (v92 > result || *(v89 + 12) > *(v89 + 28)))
                    {
                      v89 += 16;
                      v79 = v91;
                    }
                  }

                  v93 = *(v89 + 8);
                  if (v93 >= v85)
                  {
                    if (v93 > v85)
                    {
                      break;
                    }

                    v94 = *(v89 + 12);
                    if (v94 > v86)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v94 = *(v89 + 12);
                  }

                  *v80 = *v89;
                  *(v80 + 8) = v93;
                  *(v80 + 12) = v94;
                  v80 = v89;
                  if (v76 < v79)
                  {
                    goto LABEL_168;
                  }
                }
              }

              v89 = v80;
LABEL_168:
              *v89 = v88;
              *(v89 + 8) = v85;
              *(v89 + 12) = v86;
            }
          }
        }

        v77 = v78 - 1;
        if (v78)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v102 = 0;
        v103 = *i;
        v104 = *(i + 8);
        v105 = *(i + 12);
        v97 = i;
        do
        {
          v106 = v97;
          v107 = v97 + 16 * v102;
          v97 = v107 + 16;
          v108 = 2 * v102;
          v102 = (2 * v102) | 1;
          v109 = v108 + 2;
          if (v109 < v9)
          {
            v110 = *(v107 + 24);
            result = *(v107 + 40);
            if (v110 >= result && (v110 > result || *(v107 + 28) > *(v107 + 44)))
            {
              v97 = v107 + 32;
              v102 = v109;
            }
          }

          *v106 = *v97;
          *(v106 + 8) = *(v97 + 8);
          *(v106 + 12) = *(v97 + 12);
        }

        while (v102 <= ((v9 - 2) >> 1));
        if (v97 != a2 - 16)
        {
          *v97 = *(a2 - 16);
          *(v97 + 8) = *(a2 - 8);
          *(v97 + 12) = *(a2 - 4);
          *(a2 - 16) = v103;
          *(a2 - 8) = v104;
          *(a2 - 4) = v105;
          v111 = (v97 - i + 16) >> 4;
          v112 = v111 - 2;
          if (v111 >= 2)
          {
            v96 = v112 >> 1;
            v101 = i + 16 * (v112 >> 1);
            v113 = *(v101 + 8);
            v114 = *(v97 + 8);
            if (v113 >= v114)
            {
              if (v113 > v114)
              {
                v105 = *(v97 + 12);
                v115 = *(v101 + 12);
                goto LABEL_194;
              }

              v115 = *(v101 + 12);
              v105 = *(v97 + 12);
              if (v115 > v105)
              {
LABEL_194:
                v116 = *v97;
                *v97 = *v101;
                *(v97 + 8) = v113;
                *(v97 + 12) = v115;
                if (v112 >= 2)
                {
                  while (1)
                  {
                    v95 = v96 - 1;
                    v96 = (v96 - 1) >> 1;
                    v97 = i + 16 * v96;
                    v98 = *(v97 + 8);
                    if (v98 < v114)
                    {
                      break;
                    }

                    v99 = *(v97 + 12);
                    if (v98 <= v114 && v99 <= v105)
                    {
                      break;
                    }

                    *v101 = *v97;
                    *(v101 + 8) = v98;
                    *(v101 + 12) = v99;
                    v101 = i + 16 * v96;
                    if (v95 <= 1)
                    {
                      goto LABEL_196;
                    }
                  }
                }

                v97 = v101;
LABEL_196:
                *v97 = v116;
                *(v97 + 8) = v114;
LABEL_197:
                *(v97 + 12) = v105;
              }
            }
          }

          a2 -= 16;
          v65 = v9-- <= 2;
          if (v65)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v97 = v103;
      *(v97 + 8) = v104;
      goto LABEL_197;
    }

    v10 = v9 >> 1;
    v11 = i + 16 * (v9 >> 1);
    if (v9 < 0x81)
    {
      result = sub_262354F9C((v7 + 16 * (v9 >> 1)), v7, (a2 - 16));
    }

    else
    {
      sub_262354F9C(v7, (v7 + 16 * (v9 >> 1)), (a2 - 16));
      sub_262354F9C((v7 + 16), (v11 - 16), (a2 - 32));
      sub_262354F9C((v7 + 32), (v7 + 16 + 16 * v10), (a2 - 48));
      result = sub_262354F9C((v11 - 16), v11, (v7 + 16 + 16 * v10));
      v12 = *v7;
      *v7 = *v11;
      *v11 = v12;
      LODWORD(v12) = *(v7 + 8);
      *(v7 + 8) = *(v11 + 8);
      *(v11 + 8) = v12;
      v13 = *(v7 + 12);
      *(v7 + 12) = *(v11 + 12);
      *(v11 + 12) = v13;
    }

    --a3;
    if (a4)
    {
      v14 = *(v7 + 8);
      goto LABEL_20;
    }

    v15 = *(v7 - 8);
    v14 = *(v7 + 8);
    if (v15 < v14)
    {
      v16 = *(v7 + 12);
      goto LABEL_65;
    }

    if (v15 <= v14 && (v16 = *(v7 + 12), *(v7 - 4) <= v16))
    {
LABEL_65:
      v34 = *(a2 - 8);
      if (v14 < v34 || v14 <= v34 && v16 <= *(a2 - 4))
      {
        for (i = v7 + 16; i < a2; i += 16)
        {
          v35 = *(i + 8);
          if (v14 >= v35 && (v14 > v35 || v16 > *(i + 12)))
          {
            break;
          }
        }
      }

      else
      {
        for (i = v7 + 16; ; i += 16)
        {
          v36 = *(i + 8);
          if (v14 >= v36 && (v14 > v36 || v16 > *(i + 12)))
          {
            break;
          }
        }
      }

      v37 = *v7;
      if (i < a2)
      {
        v38 = a2 - 16;
      }

      else
      {
        v38 = a2;
      }

      if (i < a2 && v14 >= v34)
      {
        v39 = a2 - 24;
        do
        {
          if (v14 <= v34 && v16 <= *(v39 + 20))
          {
            break;
          }

          v40 = *v39;
          v39 -= 16;
          v34 = v40;
        }

        while (v14 >= v40);
        v38 = v39 + 8;
      }

      while (i < v38)
      {
        v41 = *i;
        *i = *v38;
        *v38 = v41;
        LODWORD(v41) = *(i + 8);
        *(i + 8) = *(v38 + 8);
        *(v38 + 8) = v41;
        v42 = *(i + 12);
        *(i + 12) = *(v38 + 12);
        i += 16;
        *(v38 + 12) = v42;
        while (1)
        {
          v43 = *(i + 8);
          if (v14 >= v43 && (v14 > v43 || v16 > *(i + 12)))
          {
            break;
          }

          i += 16;
        }

        v44 = *(v38 - 8);
        if (v14 >= v44)
        {
          v45 = v38 - 24;
          do
          {
            if (v14 <= v44 && v16 <= *(v45 + 20))
            {
              break;
            }

            v46 = *v45;
            v45 -= 16;
            v44 = v46;
          }

          while (v14 >= v46);
          v38 = v45 + 8;
        }

        else
        {
          v38 -= 16;
        }
      }

      if (i - 16 != v7)
      {
        *v7 = *(i - 16);
        *(v7 + 8) = *(i - 8);
        *(v7 + 12) = *(i - 4);
      }

      a4 = 0;
      *(i - 16) = v37;
      *(i - 8) = v14;
      *(i - 4) = v16;
    }

    else
    {
LABEL_20:
      v17 = *(v7 + 12);
      v18 = *(v7 + 24);
      if (v18 >= v14)
      {
        v23 = v7;
        while (1)
        {
          v19 = v23 + 16;
          if (v18 <= v14 && *(v23 + 28) <= v17)
          {
            break;
          }

          v18 = *(v23 + 40);
          v23 += 16;
          if (v18 < v14)
          {
            v19 += 16;
            goto LABEL_59;
          }
        }

        if (v23 == v7)
        {
          goto LABEL_22;
        }

LABEL_59:
        for (j = a2 - 16; ; j -= 16)
        {
          v33 = *(j + 8);
          if (v33 >= v14 && (v33 > v14 || *(j + 12) > v17))
          {
            break;
          }
        }
      }

      else
      {
        v19 = v7 + 16;
LABEL_22:
        if (v19 < a2)
        {
          for (j = a2 - 16; ; j -= 16)
          {
            v21 = *(j + 8);
            if (v21 >= v14)
            {
              if (v21 > v14)
              {
                goto LABEL_39;
              }

              if (*(j + 12) > v17 || v19 >= j)
              {
                goto LABEL_39;
              }
            }

            else if (v19 >= j)
            {
              goto LABEL_39;
            }
          }
        }

        j = a2;
      }

LABEL_39:
      v24 = *v7;
      i = v19;
      if (v19 < j)
      {
        i = v19;
        v25 = j;
        do
        {
          v26 = *i;
          *i = *v25;
          *v25 = v26;
          LODWORD(v26) = *(i + 8);
          *(i + 8) = *(v25 + 8);
          *(v25 + 8) = v26;
          v27 = *(i + 12);
          *(i + 12) = *(v25 + 12);
          *(v25 + 12) = v27;
          v28 = *(i + 24);
          if (SLODWORD(v28) >= v14)
          {
            v29 = (i + 40);
            do
            {
              if (SLODWORD(v28) <= v14 && *(v29 - 3) <= v17)
              {
                break;
              }

              v30 = *v29;
              v29 += 4;
              v28 = v30;
            }

            while (SLODWORD(v30) >= v14);
            i = (v29 - 6);
          }

          else
          {
            i += 16;
          }

          do
          {
            do
            {
              v25 -= 16;
              v31 = *(v25 + 8);
            }

            while (v31 < v14);
          }

          while (v31 <= v14 && *(v25 + 12) <= v17);
        }

        while (i < v25);
      }

      if (i - 16 != v7)
      {
        *v7 = *(i - 16);
        *(v7 + 8) = *(i - 8);
        *(v7 + 12) = *(i - 4);
      }

      *(i - 16) = v24;
      *(i - 8) = v14;
      *(i - 4) = v17;
      if (v19 < j)
      {
        goto LABEL_57;
      }

      v32 = sub_262355384(v7, i - 16);
      result = sub_262355384(i, a2);
      if (result)
      {
        a2 = i - 16;
        if (v32)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v32)
      {
LABEL_57:
        result = sub_262354454(v7, i - 16, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v9 == 3)
  {

    return sub_262354F9C(i, (i + 16), (a2 - 16));
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {

      return sub_262355110(i, i + 16, i + 32, (i + 48), (a2 - 16));
    }

    goto LABEL_10;
  }

  result = sub_262354F9C(i, (i + 16), (i + 32));
  v47 = *(a2 - 8);
  v48 = *(i + 40);
  if (v47 < v48)
  {
    return result;
  }

  if (v47 <= v48)
  {
    v50 = *(a2 - 4);
    v49 = *(i + 44);
    if (v50 <= v49)
    {
      return result;
    }
  }

  else
  {
    v49 = *(i + 44);
    v50 = *(a2 - 4);
  }

  v127 = *(i + 32);
  *(i + 32) = *(a2 - 16);
  *(a2 - 16) = v127;
  *(i + 40) = v47;
  *(a2 - 8) = v48;
  *(i + 44) = v50;
  *(a2 - 4) = v49;
  v128 = *(i + 40);
  v129 = *(i + 24);
  if (v128 >= v129)
  {
    if (v128 <= v129)
    {
      v131 = *(i + 44);
      v130 = *(i + 28);
      if (v131 <= v130)
      {
        return result;
      }
    }

    else
    {
      v130 = *(i + 28);
      v131 = *(i + 44);
    }

    v133 = *(i + 16);
    v134 = *(i + 32);
    *(i + 16) = v134;
    *(i + 32) = v133;
    *(i + 24) = v128;
    *(i + 40) = v129;
    *(i + 28) = v131;
    *(i + 44) = v130;
    v135 = *(i + 8);
    if (v128 >= v135)
    {
      v136 = *(i + 12);
      if (v128 > v135 || v131 > v136)
      {
        v137 = *i;
        *i = v134;
        *(i + 16) = v137;
        *(i + 8) = v128;
        *(i + 24) = v135;
        *(i + 12) = v131;
        *(i + 28) = v136;
      }
    }
  }

  return result;
}

uint64_t *sub_262354F9C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 2);
  v4 = *(result + 2);
  if (v3 < v4 || v3 <= v4 && *(a2 + 3) <= *(result + 3))
  {
    v5 = *(a3 + 2);
    if (v5 < v3)
    {
      return result;
    }

    if (v5 <= v3)
    {
      v7 = *(a3 + 3);
      v6 = *(a2 + 3);
      if (v7 <= v6)
      {
        return result;
      }
    }

    else
    {
      v6 = *(a2 + 3);
      v7 = *(a3 + 3);
    }

    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 2) = v5;
    *(a3 + 2) = v3;
    *(a2 + 3) = v7;
    *(a3 + 3) = v6;
    v18 = *(a2 + 2);
    v19 = *(result + 2);
    if (v18 >= v19)
    {
      if (v18 <= v19)
      {
        v21 = *(a2 + 3);
        v20 = *(result + 3);
        if (v21 <= v20)
        {
          return result;
        }
      }

      else
      {
        v20 = *(result + 3);
        v21 = *(a2 + 3);
      }

      v22 = *result;
      *result = *a2;
      *a2 = v22;
      *(result + 2) = v18;
      *(a2 + 2) = v19;
      *(result + 3) = v21;
      *(a2 + 3) = v20;
    }
  }

  else
  {
    v8 = *(a3 + 2);
    if (v8 >= v3)
    {
      v14 = *(a3 + 3);
      if (v8 > v3 || (v9 = *(a2 + 3), v14 > v9))
      {
        v15 = *result;
        *result = *a3;
        *a3 = v15;
        *(result + 2) = v8;
        *(a3 + 2) = v4;
        v16 = *(result + 3);
        *(result + 3) = v14;
        *(a3 + 3) = v16;
        return result;
      }
    }

    else
    {
      v9 = *(a2 + 3);
    }

    v10 = *result;
    *result = *a2;
    *a2 = v10;
    *(result + 2) = v3;
    *(a2 + 2) = v4;
    v11 = *(result + 3);
    *(result + 3) = v9;
    *(a2 + 3) = v11;
    v12 = *(a3 + 2);
    if (v12 >= v4)
    {
      v13 = *(a3 + 3);
      if (v12 > v4 || v13 > v11)
      {
        *a2 = *a3;
        *a3 = v10;
        *(a2 + 2) = v12;
        *(a3 + 2) = v4;
        *(a2 + 3) = v13;
        *(a3 + 3) = v11;
      }
    }
  }

  return result;
}

uint64_t *sub_262355110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_262354F9C(a1, a2, a3);
  v11 = *(a4 + 2);
  v12 = *(a3 + 8);
  if (v11 >= v12)
  {
    if (v11 <= v12)
    {
      v14 = *(a4 + 3);
      v13 = *(a3 + 12);
      if (v14 <= v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = *(a3 + 12);
      v14 = *(a4 + 3);
    }

    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    *(a3 + 8) = v11;
    *(a4 + 2) = v12;
    *(a3 + 12) = v14;
    *(a4 + 3) = v13;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 >= v17)
    {
      if (v16 <= v17)
      {
        v19 = *(a3 + 12);
        v18 = *(a2 + 12);
        if (v19 <= v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v18 = *(a2 + 12);
        v19 = *(a3 + 12);
      }

      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      *(a2 + 8) = v16;
      *(a3 + 8) = v17;
      *(a2 + 12) = v19;
      *(a3 + 12) = v18;
      v21 = *(a2 + 8);
      v22 = *(a1 + 8);
      if (v21 >= v22)
      {
        if (v21 <= v22)
        {
          v24 = *(a2 + 12);
          v23 = *(a1 + 12);
          if (v24 <= v23)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v23 = *(a1 + 12);
          v24 = *(a2 + 12);
        }

        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        *(a1 + 8) = v21;
        *(a2 + 8) = v22;
        *(a1 + 12) = v24;
        *(a2 + 12) = v23;
      }
    }
  }

LABEL_14:
  v26 = *(a5 + 2);
  v27 = *(a4 + 2);
  if (v26 < v27)
  {
    return result;
  }

  if (v26 <= v27)
  {
    v29 = *(a5 + 3);
    v28 = *(a4 + 3);
    if (v29 <= v28)
    {
      return result;
    }
  }

  else
  {
    v28 = *(a4 + 3);
    v29 = *(a5 + 3);
  }

  v30 = *a4;
  *a4 = *a5;
  *a5 = v30;
  *(a4 + 2) = v26;
  *(a5 + 2) = v27;
  *(a4 + 3) = v29;
  *(a5 + 3) = v28;
  v31 = *(a4 + 2);
  v32 = *(a3 + 8);
  if (v31 >= v32)
  {
    if (v31 <= v32)
    {
      v34 = *(a4 + 3);
      v33 = *(a3 + 12);
      if (v34 <= v33)
      {
        return result;
      }
    }

    else
    {
      v33 = *(a3 + 12);
      v34 = *(a4 + 3);
    }

    v35 = *a3;
    *a3 = *a4;
    *a4 = v35;
    *(a3 + 8) = v31;
    *(a4 + 2) = v32;
    *(a3 + 12) = v34;
    *(a4 + 3) = v33;
    v36 = *(a3 + 8);
    v37 = *(a2 + 8);
    if (v36 >= v37)
    {
      if (v36 <= v37)
      {
        v39 = *(a3 + 12);
        v38 = *(a2 + 12);
        if (v39 <= v38)
        {
          return result;
        }
      }

      else
      {
        v38 = *(a2 + 12);
        v39 = *(a3 + 12);
      }

      v40 = *a2;
      *a2 = *a3;
      *a3 = v40;
      *(a2 + 8) = v36;
      *(a3 + 8) = v37;
      *(a2 + 12) = v39;
      *(a3 + 12) = v38;
      v41 = *(a2 + 8);
      v42 = *(a1 + 8);
      if (v41 >= v42)
      {
        if (v41 <= v42)
        {
          v44 = *(a2 + 12);
          v43 = *(a1 + 12);
          if (v44 <= v43)
          {
            return result;
          }
        }

        else
        {
          v43 = *(a1 + 12);
          v44 = *(a2 + 12);
        }

        v45 = *a1;
        *a1 = *a2;
        *a2 = v45;
        *(a1 + 8) = v41;
        *(a2 + 8) = v42;
        *(a1 + 12) = v44;
        *(a2 + 12) = v43;
      }
    }
  }

  return result;
}

BOOL sub_262355384(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_262354F9C(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        sub_262354F9C(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 8);
        v26 = *(a1 + 40);
        if (v25 >= v26)
        {
          if (v25 <= v26)
          {
            v28 = *(a2 - 4);
            v27 = *(a1 + 44);
            if (v28 <= v27)
            {
              return 1;
            }
          }

          else
          {
            v27 = *(a1 + 44);
            v28 = *(a2 - 4);
          }

          v30 = *(a1 + 32);
          *(a1 + 32) = *(a2 - 16);
          *(a2 - 16) = v30;
          *(a1 + 40) = v25;
          *(a2 - 8) = v26;
          *(a1 + 44) = v28;
          *(a2 - 4) = v27;
          v31 = *(a1 + 40);
          v32 = *(a1 + 24);
          if (v31 >= v32)
          {
            if (v31 <= v32)
            {
              v34 = *(a1 + 44);
              v33 = *(a1 + 28);
              if (v34 <= v33)
              {
                return 1;
              }
            }

            else
            {
              v33 = *(a1 + 28);
              v34 = *(a1 + 44);
            }

            v36 = *(a1 + 16);
            v37 = *(a1 + 32);
            *(a1 + 16) = v37;
            *(a1 + 32) = v36;
            *(a1 + 24) = v31;
            *(a1 + 40) = v32;
            *(a1 + 28) = v34;
            *(a1 + 44) = v33;
            v38 = *(a1 + 8);
            if (v31 >= v38)
            {
              v39 = *(a1 + 12);
              if (v31 > v38 || v34 > v39)
              {
                v40 = *a1;
                *a1 = v37;
                *(a1 + 16) = v40;
                *(a1 + 8) = v31;
                *(a1 + 24) = v38;
                *(a1 + 12) = v34;
                *(a1 + 28) = v39;
              }
            }

            return 1;
          }
        }

        return 1;
      case 5:
        sub_262355110(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 8);
      v6 = *(a1 + 8);
      if (v5 >= v6)
      {
        if (v5 > v6)
        {
          v7 = *(a1 + 12);
          v8 = *(a2 - 4);
LABEL_35:
          v29 = *a1;
          *a1 = *(a2 - 16);
          *(a2 - 16) = v29;
          *(a1 + 8) = v5;
          *(a2 - 8) = v6;
          *(a1 + 12) = v8;
          *(a2 - 4) = v7;
          return 1;
        }

        v8 = *(a2 - 4);
        v7 = *(a1 + 12);
        if (v8 > v7)
        {
          goto LABEL_35;
        }
      }

      return 1;
    }
  }

  v9 = a1 + 32;
  sub_262354F9C(a1, (a1 + 16), (a1 + 32));
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(v10 + 8);
    v14 = *(v9 + 8);
    if (v13 >= v14)
    {
      v15 = *(v10 + 12);
      v16 = *(v9 + 12);
      if (v13 > v14 || v15 > v16)
      {
        v18 = *v10;
        *v10 = *v9;
        *(v10 + 8) = v14;
        *(v10 + 12) = v16;
        v19 = v11;
        while (1)
        {
          v20 = a1 + v19;
          v21 = *(a1 + v19 + 24);
          if (v13 < v21)
          {
            break;
          }

          v22 = *(v20 + 28);
          if (v13 <= v21 && v15 <= v22)
          {
            goto LABEL_28;
          }

          *(v20 + 32) = *(v20 + 16);
          v24 = a1 + v19;
          *(v24 + 40) = v21;
          *(v24 + 44) = v22;
          v19 -= 16;
          v9 -= 16;
          if (v19 == -32)
          {
            v9 = a1;
            goto LABEL_28;
          }
        }

        v9 = v20 + 32;
LABEL_28:
        *v9 = v18;
        *(v9 + 8) = v13;
        *(v9 + 12) = v15;
        if (++v12 == 8)
        {
          return v10 + 16 == a2;
        }
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 16;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

int8x8_t sub_26235564C(__int32 a1, int32x2_t a2, int8x8_t a3, float a4, int32x2_t a5)
{
  v5 = a2;
  a2.i32[0] = 0;
  a5.i32[0] = a1;
  v6 = vbsl_s8(vdup_lane_s32(vceq_s32(a5, a2), 0), v5, vbsl_s8(vdup_lane_s32(vceq_s32(a5, 0x3F00000000000001), 0), a3, vmul_f32(vadd_f32(v5, a3), 0x3F0000003F000000)));
  v22 = vsub_f32(v5, v6);
  v23 = vsub_f32(a3, v6);
  v7 = __sincosf_stret(a4);
  v8.i32[1] = v22.i32[1];
  v8.f32[0] = -v22.f32[1];
  v9 = vmul_f32(v7, v8);
  v10 = vrev64_s32(v7);
  v11.i32[1] = v23.i32[1];
  v11.f32[0] = -v23.f32[1];
  v12 = vmla_n_f32(vmul_f32(v7, v11), v10, v23.f32[0]);
  v13 = vadd_f32(v6, vmla_n_f32(v9, v10, v22.f32[0]));
  v14 = vadd_f32(v6, v12);
  v15 = vsub_f32(v5, v13);
  v16 = vmul_f32(v15, v15);
  v17 = vsub_f32(v5, v14);
  v18 = vmul_f32(v17, v17);
  v19 = vsqrt_f32(vadd_f32(vzip1_s32(v16, v18), vzip2_s32(v16, v18)));
  if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u8[0])
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  return vbsl_s8(vdup_n_s32(v20), v13, v14);
}

void sub_262355C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  v49 = *v46;
  if (*v46)
  {
    *(v46 + 8) = v49;
    operator delete(v49);
  }

  v50 = *(v47 - 192);
  if (v50)
  {
    operator delete(v50);
  }

  sub_26224C4F4(&a22);
  sub_262216FC4(&a46);
  _Unwind_Resume(a1);
}

void *sub_262355D5C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2621CC71C(result, a2);
  }

  return result;
}

void sub_262355E14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_262355E30(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a3 + 1) * *a3;
  if (v3)
  {
    v4 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    v5 = v4;
    if (v4)
    {
      bzero(v4, 8 * v3);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a3[1];
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        vDSP_vsubD(v7, 1, v6, 1, v5, 1, *(a3 + 1) * *a3);
      }
    }
  }

  if (v3)
  {
    v8 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 8 * v3);
      if (v3 >= 1 && v5 != 0)
      {
        v11 = 0;
        do
        {
          if (v5[v11] < 0.0)
          {
            v12 = 0.0;
          }

          else
          {
            v12 = 1.0;
          }

          v9[v11++] = v12;
        }

        while (v3 != v11);
      }
    }
  }

  else
  {
    v3 = 0;
    v9 = 0;
  }

  *&__C = 0;
  vDSP_sveD(v9, 1, &__C, v3);
  v13 = *&__C;
  v14 = *(a3 + 1) * *a3;
  if (v14 == *&__C)
  {
    if (v13)
    {
      v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      v16 = v15;
      if (v15)
      {
        bzero(v15, 8 * v14);
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = a3[1];
    if (v18)
    {
      v19 = *(a2 + 32);
      if (v19)
      {
        if (v16)
        {
          vDSP_vsubD(v19, 1, v18, 1, v16, 1, *(a3 + 1) * *a3);
        }
      }
    }

    if (v13)
    {
      v20 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      v21 = v20;
      if (v20)
      {
        bzero(v20, 8 * v14);
        if (v13 >= 1 && v16 != 0)
        {
          for (i = 0; i != v13; ++i)
          {
            if (v16[i] > 0.0)
            {
              v24 = 0.0;
            }

            else
            {
              v24 = 1.0;
            }

            v21[i] = v24;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    *&__C = 0;
    vDSP_sveD(v21, 1, &__C, v14);
    v17 = *(a3 + 1) * *a3 == *&__C;
    if (v21)
    {
      free(v21);
    }

    if (v16)
    {
      free(v16);
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
    free(v9);
  }

  if (v5)
  {
    free(v5);
  }

  if (!v17)
  {
    return 0;
  }

  v25 = *a3;
  v26 = a1;
  *(a1 + 136) = v25;
  *(a1 + 128) = 0x3FF0000000000000;
  if (!v25)
  {
    v28 = 0;
    v527 = (a1 + 96);
LABEL_65:
    v34 = *(v26 + 104);
    if (v34)
    {
      free(v34);
      *(v26 + 104) = 0;
    }

    *(v26 + 96) = v25;
    v30 = (v26 + 100);
    goto LABEL_68;
  }

  v27 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  v28 = v27;
  if (v27)
  {
    bzero(v27, 8 * v25);
  }

  v26 = a1;
  v527 = (a1 + 96);
  if (v25 < 1)
  {
    goto LABEL_65;
  }

  v30 = (a1 + 100);
  v29 = *(a1 + 100);
  v31 = *(a1 + 96);
  v32 = *(a1 + 104);
  if (v29 * v31 == v25)
  {
    if (v32 && v28)
    {
      memcpy(v32, v28, 8 * v31 * v29);
    }

    *v527 = v25;
LABEL_68:
    *v30 = 1;
    goto LABEL_69;
  }

  if (v32)
  {
    free(v32);
    *(a1 + 104) = 0;
  }

  *v527 = v25;
  *v30 = 1;
  v523 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  *(a1 + 104) = v523;
  if (!v523)
  {
LABEL_69:
    if (!v28)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v28)
  {
    memcpy(v523, v28, 8 * *v527 * *v30);
LABEL_70:
    free(v28);
  }

LABEL_71:
  v35 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v36 = v35;
  if (v35)
  {
    *v35 = 0;
  }

  v37 = *(a1 + 112);
  v38 = *(a1 + 116);
  v536 = (a1 + 112);
  v39 = *(a1 + 120);
  if (v38 * v37 == 1)
  {
    if (v39 && v36)
    {
      memcpy(v39, v36, 8 * v37 * v38);
    }

    *v536 = 0x100000001;
    goto LABEL_83;
  }

  if (v39)
  {
    free(v39);
    *(a1 + 120) = 0;
  }

  *v536 = 0x100000001;
  v40 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(a1 + 120) = v40;
  if (!v40)
  {
LABEL_83:
    if (v36)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v36)
  {
    memcpy(v40, v36, 8 * *(a1 + 112) * *(a1 + 116));
LABEL_84:
    free(v36);
  }

LABEL_85:
  v41 = *(a1 + 136);
  v590 = 0;
  v588 = v41;
  v589 = 0;
  v587 = 0;
  v585 = v41;
  v586 = 0;
  sub_26235BA28(&v583, a3);
  sub_26235BA28(&v581, a3);
  v529 = (*(*a2 + 24))(a2, &v583);
  (*(*a2 + 32))(a2, &v583, &v581);
  *(a1 + 48) = 0u;
  v526 = a1 + 8;
  *(a1 + 76) = 0u;
  v530 = (a1 + 48);
  *(a1 + 64) = 0u;
  while ((*(*a2 + 16))(a2, v530, &v583))
  {
    v42 = v583;
    v43 = HIDWORD(v583);
    v44 = HIDWORD(v583) * v583;
    if (HIDWORD(v583) * v583)
    {
      v45 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v46 = v45;
      if (v45)
      {
        bzero(v45, 8 * v44);
      }
    }

    else
    {
      v46 = 0;
    }

    if (__A && __B && v46)
    {
      vDSP_vsubD(__B, 1, __A, 1, v46, 1, SHIDWORD(v583) * v583);
    }

    if (v44)
    {
      v47 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v48 = v47;
      if (v47)
      {
        bzero(v47, 8 * v44);
      }
    }

    else
    {
      v48 = 0;
    }

    if (v46)
    {
      v49 = *(a2 + 16);
      if (v49)
      {
        if (v48 && v42 >= 1)
        {
          v50 = 0;
          v51 = 8 * v43;
          v52 = 8 * *(a2 + 12);
          v53 = v46;
          v54 = v48;
          do
          {
            v55 = v53;
            v56 = v49;
            v57 = v54;
            v58 = v43;
            if (v43 >= 1)
            {
              do
              {
                v59 = *v55++;
                v60 = v59;
                v61 = *v56++;
                v62 = v61;
                if (v60 < v61)
                {
                  v60 = v62;
                }

                *v57++ = v60;
                --v58;
              }

              while (v58);
            }

            ++v50;
            v54 = (v54 + v51);
            v49 = (v49 + v52);
            v53 = (v53 + v51);
          }

          while (v50 != v42);
        }
      }
    }

    if (!v44)
    {
      v64 = 0;
      if (!v48)
      {
        goto LABEL_124;
      }

LABEL_115:
      v65 = *(a2 + 32);
      if (v65 && v64 && v42 >= 1)
      {
        v66 = 0;
        v67 = 8 * v43;
        v68 = 8 * *(a2 + 28);
        v69 = v48;
        v70 = v64;
        do
        {
          v71 = v69;
          v72 = v65;
          v73 = v70;
          v74 = v43;
          if (v43 >= 1)
          {
            do
            {
              v75 = *v72++;
              v76 = v75;
              v77 = *v71++;
              v78 = v77;
              if (v76 >= v77)
              {
                v76 = v78;
              }

              *v73++ = v76;
              --v74;
            }

            while (v74);
          }

          ++v66;
          v70 = (v70 + v67);
          v65 = (v65 + v68);
          v69 = (v69 + v67);
        }

        while (v66 != v42);
      }

      goto LABEL_124;
    }

    v63 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
    v64 = v63;
    if (v63)
    {
      bzero(v63, 8 * v44);
    }

    if (v48)
    {
      goto LABEL_115;
    }

LABEL_124:
    if (v44)
    {
      v79 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
      v80 = v79;
      if (v79)
      {
        bzero(v79, 8 * v44);
      }

      if (!v64)
      {
LABEL_134:
        if (!v48)
        {
          goto LABEL_136;
        }

LABEL_135:
        free(v48);
        goto LABEL_136;
      }
    }

    else
    {
      v80 = 0;
      if (!v64)
      {
        goto LABEL_134;
      }
    }

    if (__A && v80)
    {
      vDSP_vsubD(__A, 1, v64, 1, v80, 1, v44);
    }

    free(v64);
    if (v48)
    {
      goto LABEL_135;
    }

LABEL_136:
    if (v46)
    {
      free(v46);
    }

    if (v80)
    {
      vDSP_vabsD(v80, 1, v80, 1, v44);
    }

    *&__C = 0;
    vDSP_sveD(v80, 1, &__C, v44);
    v81 = *&__C;
    *(a1 + 56) = __C;
    v82 = *(a1 + 16);
    if (v80)
    {
      free(v80);
    }

    if (v81 < v82 || *(a1 + 88))
    {
      break;
    }

    sub_26235BA28(v579, &v583);
    sub_26235BA28(v577, &v581);
    v83 = *(a1 + 136);
    if (v83 && (v84 = malloc_type_malloc(8 * v83, 0x100004000313F17uLL)) != 0)
    {
      __dst = v84;
      bzero(v84, 8 * v83);
    }

    else
    {
      __dst = 0;
    }

    v85 = *(a1 + 100);
    if (v85 && (v86 = malloc_type_malloc(8 * v85, 0x100004000313F17uLL)) != 0)
    {
      v87 = v86;
      bzero(v86, 8 * v85);
    }

    else
    {
      v87 = 0;
    }

    v88 = v583;
    __C = 0uLL;
    v593 = 0;
    sub_26235BEFC(&v602, &v581, -1.0);
    if (v88 >= 1)
    {
      for (j = 0; j != v88; j = j + 1)
      {
        v90 = __B[j];
        if (v90 == 0.0)
        {
          __p[0] = j;
          __p[1] = 0x7FEFFFFFFFFFFFFFLL;
          sub_26235CC7C(&__C, __p);
        }

        else
        {
          if (v90 >= 0.0)
          {
            v91 = 16;
          }

          else
          {
            v91 = 32;
          }

          v92 = (__A[j] - *(*(a2 + v91) + 8 * j)) / v90;
          __p[0] = j;
          *&__p[1] = v92;
          sub_26235CC7C(&__C, __p);
          if (v92 == 0.0)
          {
            v603[j] = 0.0;
          }
        }
      }
    }

    sub_2622101A8(__p, (*(&__C + 1) - __C) >> 4);
    v93 = __p[1];
    v94 = __p[0];
    v95 = (__p[1] - __p[0]) >> 2;
    if (__p[1] != __p[0])
    {
      v96 = __C;
      v97 = __p[0];
      v98 = (__p[1] - __p[0]) >> 2;
      do
      {
        v99 = *v96;
        v96 += 4;
        *v97++ = v99;
        --v98;
      }

      while (v98);
    }

    __M = &__C;
    v100 = 126 - 2 * __clz(v95);
    if (v93 == v94)
    {
      v101 = 0;
    }

    else
    {
      v101 = v100;
    }

    sub_26235CD84(v94, v93, &__M, v101, 1);
    v531 = v583;
    v102 = vmul_lane_s32(v531, v531, 1).u32[0];
    if (v102 <= 0)
    {
      if (__dst)
      {
        free(__dst);
        __dst = 0;
        goto LABEL_175;
      }

LABEL_181:
      __dst = 0;
      goto LABEL_182;
    }

    if (v83 == v102)
    {
      if (__dst && __A)
      {
        memcpy(__dst, __A, 8 * v83);
LABEL_175:
        v531 = v583;
      }
    }

    else
    {
      if (__dst)
      {
        free(__dst);
        v531 = v583;
        v102 = vmul_lane_s32(v531, v531, 1).u32[0];
      }

      __dst = malloc_type_malloc(8 * v102, 0x100004000313F17uLL);
      if (!__dst)
      {
        goto LABEL_181;
      }

      if (__A)
      {
        memcpy(__dst, __A, 8 * v531.i32[0] * v531.i32[1]);
      }
    }

LABEL_182:
    v103 = *(a1 + 100);
    v104 = *(a1 + 96) * v103;
    if (v104)
    {
      v105 = malloc_type_malloc(8 * v104, 0x100004000313F17uLL);
      v106 = v105;
      if (v105)
      {
        bzero(v105, 8 * v104);
      }
    }

    else
    {
      v106 = 0;
    }

    if (*(a1 + 104) && (v108 = *(a1 + 96), v107 = *(a1 + 100), v107 * v108) && v106)
    {
      if (v104)
      {
        if (v108 == 1 || v107 == 1)
        {
          cblas_dcopy_NEWLAPACK();
        }

        else
        {
          vDSP_mtransD(*(a1 + 104), 1, v106, 1, v107, v108);
        }
      }
    }

    else if (!v106)
    {
      v601 = 0;
      __M = 0;
      goto LABEL_201;
    }

    if (v603)
    {
      v601 = 0;
      __M = __PAIR64__(HIDWORD(v602), v103);
      if (HIDWORD(v602) * v103)
      {
        v109 = 8 * (HIDWORD(v602) * v103);
        v110 = malloc_type_malloc(v109, 0x100004000313F17uLL);
        v601 = v110;
        if (v110)
        {
          bzero(v110, v109);
          cblas_dgemm_NEWLAPACK();
        }
      }
    }

    else
    {
      v601 = 0;
      __M = 0;
    }

    free(v106);
LABEL_201:
    v111 = *(a1 + 100);
    if (!v111)
    {
      v113 = 0;
LABEL_210:
      if (v87)
      {
        free(v87);
        v87 = 0;
      }

      goto LABEL_212;
    }

    v112 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v113 = v112;
    if (v112)
    {
      bzero(v112, 8 * v111);
    }

    if (v111 < 1)
    {
      goto LABEL_210;
    }

    if (v85 == v111)
    {
      if (v87 && v113)
      {
        v114 = 8 * v85;
        v115 = v87;
        v116 = v113;
        goto LABEL_219;
      }

LABEL_212:
      if (!v113)
      {
        goto LABEL_221;
      }

LABEL_220:
      free(v113);
      goto LABEL_221;
    }

    if (v87)
    {
      free(v87);
    }

    v115 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v87 = v115;
    if (!v115)
    {
      goto LABEL_212;
    }

    if (v113)
    {
      v116 = v113;
      v114 = 8 * v111;
LABEL_219:
      memcpy(v115, v116, v114);
      goto LABEL_220;
    }

LABEL_221:
    v117 = sub_26235BF84(&v602, &v602);
    v118 = *(a1 + 128);
    v534 = v111;
    if (*(a1 + 120) && v601)
    {
      v119 = *v536;
      v599 = 0;
      *&v598 = COERCE_DOUBLE(__PAIR64__(HIDWORD(__M), v119));
      if (HIDWORD(__M) * v119)
      {
        v120 = 8 * (HIDWORD(__M) * v119);
        v121 = malloc_type_malloc(v120, 0x100004000313F17uLL);
        v122 = v121;
        v599 = v121;
        if (v121)
        {
          bzero(v121, v120);
          v123 = *(a1 + 116);
          v124 = *(a1 + 120);
          cblas_dgemm_NEWLAPACK();
        }
      }

      else
      {
        v122 = 0;
      }
    }

    else
    {
      v122 = 0;
      v599 = 0;
      *&v598 = 0.0;
    }

    v125 = sub_26235BF84(&__M, &v598);
    if (v122)
    {
      free(v122);
    }

    if (v88 < 1)
    {
      v126 = 0;
    }

    else
    {
      v126 = -1;
      v127 = __p[0];
      do
      {
        v128 = *v127++;
        v129 = v126 + 2;
        ++v126;
      }

      while (*(__C + 16 * v128 + 8) <= 0.0 && v129 < v88);
      v126 = v126;
    }

    v131 = fmax(-(v125 - v118 * v117), 2.22044605e-16);
    v132 = *(__p[0] + v126);
    v133 = v117 / v131;
    v134 = *(__C + 16 * v132 + 8);
    v135 = 0.0;
    if (v117 / v131 >= v134 && v126 < v88)
    {
      v137 = -v117;
      v532 = v88;
      v533 = v131 * 2.22044605e-16;
      __n = 8 * v111;
      v138 = v126 + 1;
      v139 = *(__C + 16 * v132 + 8);
      LODWORD(v88) = v132;
      while (1)
      {
        v140 = v139;
        v141 = v138;
        v142 = v603[v88];
        if (v142 <= 0.0)
        {
          if (v142 >= 0.0)
          {
            v144 = *(__dst + v88);
            goto LABEL_251;
          }

          v143 = *(a2 + 16);
        }

        else
        {
          v143 = *(a2 + 32);
        }

        v144 = *(v143 + 8 * v88);
        *(__dst + v88) = v144;
LABEL_251:
        v145 = __A[v88];
        sub_26235BEFC(&v598, &__M, v134);
        if (v111)
        {
          v146 = malloc_type_malloc(__n, 0x100004000313F17uLL);
          v147 = v146;
          if (v146)
          {
            bzero(v146, __n);
          }

          if (!v87)
          {
LABEL_262:
            if (v111 <= 0)
            {
              v87 = 0;
            }

            if (v147)
            {
              goto LABEL_268;
            }

            goto LABEL_269;
          }
        }

        else
        {
          v147 = 0;
          if (!v87)
          {
            goto LABEL_262;
          }
        }

        if (v599 && v147)
        {
          vDSP_vaddD(v87, 1, v599, 1, v147, 1, v111);
        }

        if (v111 <= 0)
        {
          free(v87);
          v87 = 0;
          if (v147)
          {
            goto LABEL_268;
          }
        }

        else if (v147)
        {
          memcpy(v87, v147, __n);
LABEL_268:
          free(v147);
        }

LABEL_269:
        if (v599)
        {
          free(v599);
        }

        v148 = *(a1 + 100);
        v149 = *(a1 + 104);
        if (v149)
        {
          v150 = 0;
          if ((v88 & 0x80000000) == 0 && *(a1 + 96) > v88)
          {
            v150 = (v149 + 8 * (v148 * v88));
          }
        }

        else
        {
          v150 = 0;
        }

        if (v148)
        {
          __N = malloc_type_malloc(8 * v148, 0x100004000313F17uLL);
          if (v150 && __N)
          {
            memcpy(__N, v150, 8 * v148);
          }
        }

        else
        {
          __N = 0;
        }

        v151 = 0;
        v152 = 0;
        v153 = __B[v88];
        v154 = *(a1 + 128);
        v155 = 1;
        v156 = 0;
        if (*(a1 + 120) && v87)
        {
          v157 = *v536;
          if (!v157)
          {
            v152 = 0;
LABEL_294:
            v151 = 0;
            v156 = 0;
            goto LABEL_295;
          }

          v158 = malloc_type_malloc(8 * v157, 0x100004000313F17uLL);
          v152 = v158;
          if (!v158)
          {
            v151 = 0;
            v156 = 0;
            v155 = 1;
            goto LABEL_295;
          }

          bzero(v158, 8 * v157);
          v159 = *(a1 + 116);
          v160 = *(a1 + 120);
          cblas_dgemm_NEWLAPACK();
          if (!__N)
          {
            v155 = 0;
            goto LABEL_294;
          }

          v161 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
          v156 = v161;
          v151 = 1;
          if (v161)
          {
            *v161 = 0.0;
            cblas_dgemm_NEWLAPACK();
          }

          v155 = 0;
        }

LABEL_295:
        *&v598 = 0.0;
        vDSP_sveD(v156, 1, &v598, (v151 * v151));
        v541 = *&v598;
        if (v156)
        {
          free(v156);
        }

        v547 = v87;
        v542 = v154;
        if ((v155 & 1) == 0)
        {
          free(v152);
        }

        v162 = 0;
        v163 = 0;
        v545 = *(a1 + 128);
        v164 = __B[v88];
        v165 = v601;
        v166 = 1;
        v551 = 0;
        v167 = 0;
        if (*(a1 + 120) && v601)
        {
          v167 = HIDWORD(__M);
          v168 = HIDWORD(__M) * *v536;
          if (!v168)
          {
            v551 = 0;
LABEL_310:
            v162 = 0;
            v167 = 0;
            v163 = 0;
            goto LABEL_314;
          }

          v169 = 8 * v168;
          v170 = malloc_type_malloc(v169, 0x100004000313F17uLL);
          v163 = v170;
          if (v170)
          {
            bzero(v170, v169);
            v171 = *(a1 + 116);
            v172 = *(a1 + 120);
            cblas_dgemm_NEWLAPACK();
            v551 = v163;
            if (!__N)
            {
              v166 = 0;
              goto LABEL_310;
            }

            if (!v167)
            {
              v166 = 0;
              v163 = 0;
LABEL_313:
              v162 = 1;
              goto LABEL_314;
            }

            v173 = malloc_type_malloc(8 * v167, 0x100004000313F17uLL);
            v163 = v173;
            if (!v173)
            {
              v166 = 0;
              goto LABEL_313;
            }

            bzero(v173, 8 * v167);
            v162 = 1;
            cblas_dgemm_NEWLAPACK();
            v166 = 0;
          }

          else
          {
            v551 = 0;
            v162 = 0;
            v167 = 0;
          }
        }

LABEL_314:
        v174 = v165;
        v539 = v153;
        v540 = v145;
        v538 = v144;
        v135 = v140;
        *&v598 = 0.0;
        vDSP_sveD(v163, 1, &v598, v167 * v162);
        v175 = *&v598;
        v176 = __B[v88];
        v537 = v141;
        if (!v148 || (v177 = malloc_type_malloc(8 * v148, 0x100004000313F17uLL), (v178 = v177) == 0))
        {
          v178 = 0;
          v180 = 0;
          v179 = 0;
          v187 = 0;
          v560 = __N == 0;
          v543 = 1;
          v181 = 1;
          goto LABEL_332;
        }

        bzero(v177, 8 * v148);
        v560 = __N == 0;
        if (__N && v178)
        {
          cblas_dcopy_NEWLAPACK();
        }

        v179 = 0;
        v180 = 0;
        v181 = 1;
        v543 = v178 == 0;
        if (!*(a1 + 120) || !v178)
        {
          v187 = 0;
          goto LABEL_332;
        }

        v182 = *v536;
        if (!v182)
        {
          v180 = 0;
LABEL_331:
          v179 = 0;
          v187 = 0;
          goto LABEL_332;
        }

        v183 = malloc_type_malloc(8 * v182, 0x100004000313F17uLL);
        v180 = v183;
        if (!v183)
        {
          goto LABEL_331;
        }

        bzero(v183, 8 * v182);
        v184 = *(a1 + 116);
        v185 = *(a1 + 120);
        cblas_dgemm_NEWLAPACK();
        if (!__N)
        {
          v181 = 0;
          goto LABEL_331;
        }

        v186 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        v187 = v186;
        v179 = 1;
        if (v186)
        {
          *v186 = 0.0;
          cblas_dgemm_NEWLAPACK();
        }

        v181 = 0;
LABEL_332:
        *&v598 = 0.0;
        vDSP_sveD(v187, 1, &v598, (v179 * v179));
        v188 = *&v598;
        if (v187)
        {
          free(v187);
        }

        if ((v181 & 1) == 0)
        {
          free(v180);
        }

        if (!v543)
        {
          free(v178);
        }

        if (v163)
        {
          free(v163);
        }

        if ((v166 & 1) == 0)
        {
          free(v551);
        }

        v189 = v131 + v164 * v175 * -2.0 + -(v545 * v164) * v164 + -(v176 * v176) * v188;
        v190 = __B[v88];
        v597 = 0;
        if (v533 >= v189)
        {
          v191 = v533;
        }

        else
        {
          v191 = v189;
        }

        v596 = v148 | 0x100000000;
        if (v148)
        {
          v192 = malloc_type_malloc(8 * v148, 0x100004000313F17uLL);
          v193 = v192;
          v597 = v192;
          if (v192)
          {
            bzero(v192, 8 * v148);
          }
        }

        else
        {
          v193 = 0;
        }

        if (!v560 && v148 && v193)
        {
          cblas_dcopy_NEWLAPACK();
        }

        sub_26235BEFC(&v598, &v596, v190);
        v194 = __M;
        v195 = HIDWORD(__M);
        v196 = HIDWORD(__M) * __M;
        if (!(HIDWORD(__M) * __M))
        {
          if (!v174)
          {
            v199 = v532;
            v200 = v537;
            goto LABEL_369;
          }

          v198 = 0;
LABEL_365:
          v199 = v532;
          v200 = v537;
          free(v174);
          v601 = 0;
          goto LABEL_367;
        }

        v197 = malloc_type_malloc(8 * v196, 0x100004000313F17uLL);
        v198 = v197;
        if (v197)
        {
          bzero(v197, 8 * v196);
        }

        if (v174)
        {
          if (v599 && v198)
          {
            vDSP_vaddD(v174, 1, v599, 1, v198, 1, v196);
          }

          if (v196 < 1)
          {
            goto LABEL_365;
          }

          v199 = v532;
          v200 = v537;
          if (v198)
          {
            memcpy(v174, v198, 8 * v194 * v195);
            __M = __PAIR64__(v195, v194);
LABEL_368:
            free(v198);
            goto LABEL_369;
          }
        }

        else
        {
          v199 = v532;
          v200 = v537;
        }

LABEL_367:
        __M = __PAIR64__(v195, v194);
        if (v198)
        {
          goto LABEL_368;
        }

LABEL_369:
        v87 = v547;
        v111 = v534;
        if (v599)
        {
          free(v599);
          v599 = 0;
        }

        *&v598 = 0.0;
        if (v193)
        {
          free(v193);
        }

        v603[v88] = 0.0;
        v139 = v135;
        v201 = v134;
        if (v200 < v199)
        {
          v88 = *(__p[0] + v200);
          v139 = *(__C + 16 * v88 + 8);
          v201 = v139 - v135;
        }

        if (!v560)
        {
          free(__N);
        }

        v137 = v137 + v539 * v539 + v134 * v131 + v539 * v542 * (v538 - v540) - v539 * v541;
        v133 = -v137 / v191;
        v138 = v200 + 1;
        v202 = v133 >= v201 && v200 < v199;
        v134 = v201;
        v131 = v191;
        if (!v202)
        {
          v126 = v200;
          break;
        }
      }
    }

    if (v133 < 0.0)
    {
      v133 = 0.0;
    }

    if (v126 < v531.i32[0])
    {
      v203 = __A;
      v204 = v603;
      v205 = v531.u32[0] - v126;
      v206 = (__p[0] + 4 * v126);
      do
      {
        v207 = *v206++;
        *(__dst + v207) = v203[v207] + (v135 + v133) * v204[v207];
        --v205;
      }

      while (v205);
    }

    sub_26235BEFC(&v598, &__M, v133);
    if (!v111)
    {
      v209 = 0;
      v210 = 0;
      if (!v87)
      {
        goto LABEL_404;
      }

LABEL_399:
      free(v87);
      v87 = 0;
LABEL_402:
      v210 = v87;
      if (!v209)
      {
        goto LABEL_404;
      }

      goto LABEL_403;
    }

    v208 = malloc_type_malloc(8 * v111, 0x100004000313F17uLL);
    v209 = v208;
    if (v208)
    {
      bzero(v208, 8 * v111);
    }

    if (!v87)
    {
      if (v111 <= 0)
      {
        v87 = 0;
      }

      goto LABEL_402;
    }

    if (v599 && v209)
    {
      vDSP_vaddD(v87, 1, v599, 1, v209, 1, v111);
    }

    if (v111 <= 0)
    {
      goto LABEL_399;
    }

    if (!v209)
    {
      goto LABEL_402;
    }

    memcpy(v87, v209, 8 * v111);
LABEL_403:
    free(v209);
    v210 = v87;
LABEL_404:
    if (v599)
    {
      free(v599);
    }

    if (v601)
    {
      free(v601);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v603)
    {
      free(v603);
    }

    if (__C)
    {
      *(&__C + 1) = __C;
      operator delete(__C);
    }

    v544 = v210;
    if (v531.i32[0] >= 1)
    {
      v211 = 0;
      v212 = 0;
      v213 = 1.0 / *(a1 + 128);
      do
      {
        v214 = *(__dst + v212);
        if (v214 != *(*(a2 + 32) + 8 * v212) && v214 != *(*(a2 + 16) + 8 * v212))
        {
          v215 = v211;
          v216 = v211 >> 2;
          if (((v211 >> 2) + 1) >> 62)
          {
            sub_2621CBEB0();
          }

          if (v211 >> 2 != -1)
          {
            sub_2621C7F54((v211 >> 2) + 1);
          }

          *(4 * v216) = v212;
          v211 = 4 * v216 + 4;
          memcpy(0, 0, v215);
        }

        ++v212;
      }

      while (v212 < v531.u32[0]);
      if (v211)
      {
        v217 = *(a1 + 100);
        HIDWORD(__C) = 0;
        LODWORD(__C) = v217;
        *(&__C + 4) = (v211 >> 2);
        v218 = v217 * (v211 >> 2);
        if (v218)
        {
          v219 = malloc_type_malloc(8 * v218, 0x100004000313F17uLL);
          *(&__C + 1) = v219;
          if (v219)
          {
            bzero(v219, 8 * DWORD1(__C) * __C);
          }
        }

        v220 = (v211 >> 2) & 0x7FFFFFFF;
        if ((v211 >> 2) >= 1)
        {
          v221 = 0;
          v222 = *(a1 + 100);
          v223 = *(&__C + 1);
          v224 = 8 * SDWORD1(__C);
          do
          {
            if (v222 >= 1)
            {
              v225 = (*(a1 + 104) + 8 * v222 * *(4 * v221));
              v226 = v223;
              v227 = v222;
              do
              {
                v228 = *v225++;
                *v226 = v228;
                v226 = (v226 + v224);
                --v227;
              }

              while (v227);
            }

            ++v221;
            ++v223;
          }

          while (v221 != v220);
        }

        v561 = (v211 >> 2);
        v229 = *(a1 + 128);
        v603 = 0;
        v602 = v531;
        v230 = v531.i32[1] * v531.i32[0];
        if (v531.i32[1])
        {
          v231 = malloc_type_malloc(8 * v230, 0x100004000313F17uLL);
          v232 = v231;
          v603 = v231;
          if (v231)
          {
            bzero(v231, 8 * v230);
          }
        }

        else
        {
          v232 = 0;
        }

        if (__dst && __A && v232)
        {
          vDSP_vsubD(__A, 1, __dst, 1, v232, 1, v230);
        }

        sub_26235BEFC(__p, &v602, v229);
        v235 = SHIDWORD(v581) * v581;
        if (v235)
        {
          v236 = malloc_type_malloc(8 * v235, 0x100004000313F17uLL);
          v237 = v236;
          if (v236)
          {
            bzero(v236, 8 * v235);
          }
        }

        else
        {
          v237 = 0;
        }

        if (__B && __p[1] && v237)
        {
          vDSP_vaddD(__B, 1, __p[1], 1, v237, 1, SHIDWORD(v581) * v581);
        }

        __Na = v237;
        v238 = 0;
        v239 = 1;
        v240 = 0;
        if (*(a1 + 120) && v544)
        {
          v241 = *v536;
          if (!v241)
          {
            v238 = 0;
            v240 = 0;
            if (v235)
            {
              goto LABEL_468;
            }

            goto LABEL_464;
          }

          v242 = v235;
          v243 = malloc_type_malloc(8 * v241, 0x100004000313F17uLL);
          v238 = v243;
          if (!v243)
          {
            v240 = 0;
            v239 = 1;
            if (v235)
            {
LABEL_468:
              v250 = v235;
              v252 = 8 * v235;
              v253 = malloc_type_malloc(v252, 0x100004000313F17uLL);
              v251 = v253;
              if (v253)
              {
                bzero(v253, v252);
              }

LABEL_470:
              if (__Na && v240 && v251)
              {
                vDSP_vsubD(v240, 1, __Na, 1, v251, 1, v250);
              }

              else if (!v240)
              {
                goto LABEL_476;
              }

              free(v240);
LABEL_476:
              if ((v239 & 1) == 0)
              {
                free(v238);
              }

              if (__Na)
              {
                free(__Na);
              }

              if (__p[1])
              {
                free(__p[1]);
                __p[1] = 0;
              }

              __p[0] = 0;
              if (v603)
              {
                free(v603);
              }

              __p[1] = 0;
              __p[0] = (v561 | 0x100000000);
              v548 = v251;
              if (!v561)
              {
                goto LABEL_497;
              }

              v254 = malloc_type_malloc(((v211 << 30) >> 29) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
              __p[1] = v254;
              if (v254)
              {
                bzero(v254, 8 * HIDWORD(__p[0]) * LODWORD(__p[0]));
                v255 = __p[1];
              }

              else
              {
                v255 = 0;
              }

              if (v561 >= 1)
              {
                v256 = 0;
                v257 = (v211 >> 2) & 0x7FFFFFFF;
                do
                {
                  v258 = *v256++;
                  *v255++ = *&v251[v258];
                  --v257;
                }

                while (v257);
                v255 = __p[1];
              }

              if (!*(&__C + 1) || v255 == 0)
              {
LABEL_497:
                v260 = 0;
              }

              else
              {
                v260 = HIDWORD(__p[0]);
                if (HIDWORD(__p[0]) * __C)
                {
                  v268 = 8 * HIDWORD(__p[0]) * __C;
                  v269 = malloc_type_malloc(v268, 0x100004000313F17uLL);
                  v261 = v269;
                  if (v269)
                  {
                    bzero(v269, v268);
                    cblas_dgemm_NEWLAPACK();
                  }

LABEL_499:
                  if (*(a1 + 120))
                  {
                    if (!v261)
                    {
                      v265 = 0;
                      v260 = 0;
                      __Nb = 0;
                      goto LABEL_512;
                    }

                    __Nb = *v536;
                    v262 = *v536 * v260;
                    if (v262)
                    {
                      v263 = 8 * v262;
                      v264 = malloc_type_malloc(v263, 0x100004000313F17uLL);
                      v265 = v264;
                      if (v264)
                      {
                        bzero(v264, v263);
                        v266 = *(a1 + 116);
                        v267 = *(a1 + 120);
                        cblas_dgemm_NEWLAPACK();
                      }
                    }

                    else
                    {
                      v265 = 0;
                    }
                  }

                  else
                  {
                    v265 = 0;
                    v260 = 0;
                    __Nb = 0;
                    if (!v261)
                    {
LABEL_512:
                      v552 = v265;
                      sub_26235BEFC(&__M, &__C, v213);
                      v554 = v260;
                      v270 = __C;
                      v271 = __C * DWORD1(__C);
                      if (__C * DWORD1(__C))
                      {
                        v272 = malloc_type_malloc(8 * v271, 0x100004000313F17uLL);
                        v273 = v272;
                        if (v272)
                        {
                          bzero(v272, 8 * v271);
                        }
                      }

                      else
                      {
                        v273 = 0;
                      }

                      if (*(&__C + 1) && v271 && DWORD1(__C) * __C && v273)
                      {
                        if (__C == 1 || DWORD1(__C) == 1)
                        {
                          cblas_dcopy_NEWLAPACK();
                        }

                        else
                        {
                          vDSP_mtransD(*(&__C + 1), 1, v273, 1, SDWORD1(__C), __C);
                        }
                      }

                      v274 = v601;
                      if (v601)
                      {
                        if (!v273)
                        {
                          v270 = 0;
                          v278 = 0;
                          v275 = 0;
                          v603 = 0;
                          v602 = 0;
LABEL_534:
                          free(v274);
LABEL_535:
                          if (v275)
                          {
                            v279 = malloc_type_malloc(8 * (v275 * v275), 0x100004000313F17uLL);
                            v280 = v279;
                            if (v279)
                            {
                              bzero(v279, 8 * (v275 * v275));
                              if (v275 >= 1)
                              {
                                v281 = (v275 + 1) & 0xFFFFFFFE;
                                v282 = vdupq_n_s64(v275 - 1);
                                v283 = v280 + 1;
                                v284 = xmmword_2623A7620;
                                do
                                {
                                  v285 = vmovn_s64(vcgeq_u64(v282, v284));
                                  if (v285.i8[0])
                                  {
                                    *(v283 - 1) = 1.0;
                                  }

                                  if (v285.i8[4])
                                  {
                                    v283[v275] = 1.0;
                                  }

                                  v284 = vaddq_s64(v284, vdupq_n_s64(2uLL));
                                  v283 += 2 * v275 + 2;
                                  v281 -= 2;
                                }

                                while (v281);
                              }
                            }
                          }

                          else
                          {
                            v280 = 0;
                          }

                          v273 = 0;
                          if (*(a1 + 120) && v278)
                          {
                            v286 = v270 * *v536;
                            if (v286)
                            {
                              v287 = 8 * v286;
                              v288 = malloc_type_malloc(v287, 0x100004000313F17uLL);
                              v273 = v288;
                              if (v288)
                              {
                                bzero(v288, v287);
                                v289 = *(a1 + 116);
                                v290 = *(a1 + 120);
                                cblas_dgemm_NEWLAPACK();
                              }
                            }

                            else
                            {
                              v273 = 0;
                            }
                          }

                          if (v275)
                          {
                            v291 = malloc_type_malloc(8 * (v275 * v275), 0x100004000313F17uLL);
                            v292 = v291;
                            if (v291)
                            {
                              bzero(v291, 8 * (v275 * v275));
                            }
                          }

                          else
                          {
                            v292 = 0;
                          }

                          v293 = v280 == 0;
                          if (v280 && v273 && v292)
                          {
                            vDSP_vsubD(v273, 1, v280, 1, v292, 1, (v275 * v275));
                          }

                          if (v275)
                          {
                            if (HIDWORD(v602) * v602 != v275 * v275)
                            {
                              if (v603)
                              {
                                free(v603);
                                v603 = 0;
                              }

                              LODWORD(v602) = v275;
                              HIDWORD(v602) = v275;
                              v294 = malloc_type_malloc(8 * (v275 * v275), 0x100004000313F17uLL);
                              v603 = v294;
                              if (v294)
                              {
                                if (!v292)
                                {
                                  goto LABEL_577;
                                }

                                memcpy(v294, v292, 8 * v275 * v275);
LABEL_576:
                                free(v292);
LABEL_577:
                                if (v273)
                                {
                                  free(v273);
                                }

                                if (!v293)
                                {
                                  free(v280);
                                }

                                v295 = v554;
                                if ((__Nb * v554) < 1)
                                {
                                  v296 = v552;
                                  goto LABEL_612;
                                }

                                v296 = v552;
                                sub_26235C610(&__M, &v602);
                                v297 = v601;
                                if (v601)
                                {
                                  if (!v552)
                                  {
                                    v302 = 0;
                                    goto LABEL_610;
                                  }

                                  v298 = __M;
                                  if (__M * v554)
                                  {
                                    v299 = 8 * __M * v554;
                                    v300 = malloc_type_malloc(v299, 0x100004000313F17uLL);
                                    v301 = v300;
                                    if (v300)
                                    {
                                      bzero(v300, v299);
                                      cblas_dgemm_NEWLAPACK();
                                    }
                                  }

                                  else
                                  {
                                    v301 = 0;
                                  }

                                  v302 = v554;
                                }

                                else
                                {
                                  v298 = 0;
                                  v302 = 0;
                                  v301 = 0;
                                }

                                if (v302 * v298 < 1)
                                {
                                  if (v552)
                                  {
                                    free(v552);
                                  }
                                }

                                else if (__Nb * v554 == v302 * v298)
                                {
                                  if (v552)
                                  {
                                    if (!v301)
                                    {
                                      goto LABEL_609;
                                    }

                                    v303 = v554 * __Nb;
LABEL_606:
                                    memcpy(v296, v301, 8 * v303);
LABEL_608:
                                    free(v301);
LABEL_609:
                                    v297 = v601;
                                    if (!v601)
                                    {
LABEL_611:
                                      v295 = v302;
LABEL_612:
                                      sub_26235BEFC(&v598, __p, -v213);
                                      v595 = 0;
                                      v594 = __PAIR64__(__C, DWORD1(__C));
                                      v304 = __C * DWORD1(__C);
                                      if (__C * DWORD1(__C))
                                      {
                                        v305 = malloc_type_malloc(8 * v304, 0x100004000313F17uLL);
                                        v306 = v305;
                                        v595 = v305;
                                        if (v305)
                                        {
                                          bzero(v305, 8 * v304);
                                        }
                                      }

                                      else
                                      {
                                        v306 = 0;
                                      }

                                      if (*(&__C + 1) && DWORD1(__C) * __C && v306 && v304)
                                      {
                                        if (__C == 1 || DWORD1(__C) == 1)
                                        {
                                          cblas_dcopy_NEWLAPACK();
                                        }

                                        else
                                        {
                                          vDSP_mtransD(*(&__C + 1), 1, v306, 1, SDWORD1(__C), __C);
                                        }
                                      }

                                      sub_26235BEFC(&v596, &v594, v213 * v213);
                                      v307 = 0;
                                      if (v597 && v296)
                                      {
                                        if (v596 * v295)
                                        {
                                          v308 = 8 * v596 * v295;
                                          v309 = malloc_type_malloc(v308, 0x100004000313F17uLL);
                                          v307 = v309;
                                          if (v309)
                                          {
                                            bzero(v309, v308);
                                            cblas_dgemm_NEWLAPACK();
                                          }
                                        }

                                        else
                                        {
                                          v307 = 0;
                                        }
                                      }

                                      v310 = v598;
                                      v601 = 0;
                                      __M = v598;
                                      if (HIDWORD(v598) * v598)
                                      {
                                        v311 = 8 * HIDWORD(v598) * v598;
                                        v312 = malloc_type_malloc(v311, 0x100004000313F17uLL);
                                        v313 = v312;
                                        v601 = v312;
                                        if (v312)
                                        {
                                          bzero(v312, v311);
                                        }
                                      }

                                      else
                                      {
                                        v313 = 0;
                                      }

                                      if (v599 && v307 && v313)
                                      {
                                        vDSP_vsubD(v307, 1, v599, 1, v313, 1, SHIDWORD(v598) * v598);
                                      }

                                      else if (!v307)
                                      {
                                        goto LABEL_640;
                                      }

                                      free(v307);
LABEL_640:
                                      if (v597)
                                      {
                                        free(v597);
                                        v597 = 0;
                                      }

                                      v596 = 0;
                                      if (v595)
                                      {
                                        free(v595);
                                      }

                                      if (v599)
                                      {
                                        free(v599);
                                      }

                                      v314 = 1.0;
                                      if (v310 == (v211 >> 2))
                                      {
                                        v315 = v548;
                                        if ((v211 >> 2) >= 1)
                                        {
                                          v316 = *(a2 + 16);
                                          v317 = (v211 >> 2) & 0x7FFFFFFF;
                                          v318 = v313;
                                          v319 = 0;
                                          do
                                          {
                                            v320 = *v318++;
                                            v321 = v320;
                                            v323 = *v319++;
                                            v322 = v323;
                                            v324 = *(__dst + v323);
                                            if (v321 <= 0.0)
                                            {
                                              v325 = *(a2 + 16);
                                            }

                                            else
                                            {
                                              v325 = *(a2 + 32);
                                            }

                                            v326 = (*(v325 + 8 * v322) - v324) / v321;
                                            if (v326 < v314)
                                            {
                                              v314 = v326;
                                            }

                                            --v317;
                                          }

                                          while (v317);
                                        }
                                      }

                                      else
                                      {
                                        v315 = v548;
                                      }

                                      sub_26235BEFC(&v598, &__M, v314);
                                      v327 = vmul_lane_s32(v531, v531, 1).u32[0];
                                      if (v327 < 1)
                                      {
                                        v546 = 0;
                                      }

                                      else
                                      {
                                        v546 = malloc_type_malloc(8 * v327, 0x100004000313F17uLL);
                                        if (v546 && __dst)
                                        {
                                          memcpy(v546, __dst, 8 * v531.u32[0] * v531.i32[1]);
                                        }
                                      }

                                      v328 = v599;
                                      if (v561 < 1)
                                      {
                                        if (!v599)
                                        {
LABEL_668:
                                          if (v313)
                                          {
                                            free(v313);
                                          }

                                          if (v603)
                                          {
                                            free(v603);
                                          }

                                          if (v296)
                                          {
                                            free(v296);
                                          }

                                          if (__p[1])
                                          {
                                            free(__p[1]);
                                          }

                                          if (v315)
                                          {
                                            free(v315);
                                          }

                                          if (*(&__C + 1))
                                          {
                                            free(*(&__C + 1));
                                          }

                                          goto LABEL_680;
                                        }
                                      }

                                      else
                                      {
                                        v329 = 0;
                                        v330 = v599;
                                        do
                                        {
                                          v332 = *v329++;
                                          v331 = v332;
                                          v333 = v546[v332];
                                          v334 = *v330++;
                                          v546[v331] = v333 + v334;
                                          --v220;
                                        }

                                        while (v220);
                                      }

                                      free(v328);
                                      goto LABEL_668;
                                    }

LABEL_610:
                                    free(v297);
                                    goto LABEL_611;
                                  }
                                }

                                else
                                {
                                  if (v552)
                                  {
                                    free(v552);
                                  }

                                  v296 = malloc_type_malloc(8 * (v302 * v298), 0x100004000313F17uLL);
                                  if (v296)
                                  {
                                    if (!v301)
                                    {
                                      goto LABEL_609;
                                    }

                                    v303 = v298 * v302;
                                    goto LABEL_606;
                                  }
                                }

                                v296 = 0;
                                if (!v301)
                                {
                                  goto LABEL_609;
                                }

                                goto LABEL_608;
                              }

LABEL_575:
                              if (!v292)
                              {
                                goto LABEL_577;
                              }

                              goto LABEL_576;
                            }

                            if (v603 && v292)
                            {
                              memcpy(v603, v292, 8 * v602 * SHIDWORD(v602));
                            }

LABEL_574:
                            LODWORD(v602) = v275;
                            HIDWORD(v602) = v275;
                            goto LABEL_575;
                          }

LABEL_572:
                          if (v603)
                          {
                            free(v603);
                            v603 = 0;
                          }

                          goto LABEL_574;
                        }

                        v275 = __M;
                        v603 = 0;
                        v602 = __PAIR64__(v270, __M);
                        if (__M * v270)
                        {
                          v276 = 8 * (__M * v270);
                          v277 = malloc_type_malloc(v276, 0x100004000313F17uLL);
                          v278 = v277;
                          v603 = v277;
                          if (v277)
                          {
                            bzero(v277, v276);
                            cblas_dgemm_NEWLAPACK();
                          }
                        }

                        else
                        {
                          v278 = 0;
                        }
                      }

                      else
                      {
                        v603 = 0;
                        v602 = 0;
                        if (!v273)
                        {
                          v275 = 0;
                          v280 = 0;
                          v292 = 0;
                          v293 = 1;
                          goto LABEL_572;
                        }

                        v270 = 0;
                        v278 = 0;
                        v275 = 0;
                      }

                      free(v273);
                      v274 = v601;
                      if (!v601)
                      {
                        goto LABEL_535;
                      }

                      goto LABEL_534;
                    }
                  }

                  free(v261);
                  goto LABEL_512;
                }
              }

              v261 = 0;
              goto LABEL_499;
            }

LABEL_464:
            v250 = v235;
            v251 = 0;
            goto LABEL_470;
          }

          bzero(v243, 8 * v241);
          v244 = *(a1 + 116);
          v245 = *(a1 + 120);
          cblas_dgemm_NEWLAPACK();
          if (*(a1 + 104) && (v246 = *(a1 + 96), v246))
          {
            v247 = malloc_type_malloc(8 * v246, 0x100004000313F17uLL);
            v240 = v247;
            if (v247)
            {
              bzero(v247, 8 * v246);
              v248 = *(a1 + 100);
              v249 = *(a1 + 104);
              cblas_dgemm_NEWLAPACK();
            }
          }

          else
          {
            v240 = 0;
          }

          v235 = v242;
          v239 = 0;
        }

        if (v235)
        {
          goto LABEL_468;
        }

        goto LABEL_464;
      }
    }

    v233 = vmul_lane_s32(v531, v531, 1).u32[0];
    if (v233 >= 1 && (v234 = malloc_type_malloc(8 * v233, 0x100004000313F17uLL)) != 0)
    {
      v546 = v234;
      if (__dst)
      {
        memcpy(v234, __dst, 8 * v531.i32[0] * v531.i32[1]);
      }
    }

    else
    {
      v546 = 0;
    }

LABEL_680:
    v597 = 0;
    v596 = v531;
    v335 = v531.i32[1] * v531.i32[0];
    if (v531.i32[1] * v531.i32[0])
    {
      v336 = malloc_type_malloc(8 * v335, 0x100004000313F17uLL);
      v337 = v336;
      v597 = v336;
      if (v336)
      {
        bzero(v336, 8 * v335);
      }
    }

    else
    {
      v337 = 0;
    }

    if (v546 && __A && v337)
    {
      vDSP_vsubD(__A, 1, v546, 1, v337, 1, v335);
    }

    v604 = 1.0;
    v553 = (*(*a2 + 24))(a2, &v583);
    sub_26235BA28(&v602, &v583);
    (*(*a2 + 32))(a2, &v583, &v602);
    sub_26235BA28(&__M, &v596);
    sub_26235BA28(&v598, &v583);
    v594 = *&v553;
    v618[0] = 1;
    v338 = SHIDWORD(v602) * v602;
    if (v338)
    {
      v339 = malloc_type_malloc(8 * v338, 0x100004000313F17uLL);
      v340 = v339;
      if (v339)
      {
        bzero(v339, 8 * v338);
      }
    }

    else
    {
      v340 = 0;
    }

    if (v603 && v340 && v601)
    {
      vDSP_vmulD(v603, 1, v601, 1, v340, 1, SHIDWORD(v602) * v602);
    }

    *&__C = 0;
    vDSP_sveD(v340, 1, &__C, v338);
    v341 = *&__C;
    if (v340)
    {
      free(v340);
    }

    v342 = 1.0;
    if (v341 < 0.0)
    {
      v617 = 0;
      sub_26235BA28(&__C, &v598);
      v343 = 0;
      v344 = 0;
      v345 = v341 * 0.0001;
      v575 = 0.0;
      v573 = v553;
      v616 = v341;
      v615 = 0.0;
      v613 = v341;
      v614 = v553;
      v549 = v341 * -0.01;
      v346 = 1;
      *&v347 = 2.0e15;
      *&v348 = 1.0e15;
LABEL_700:
      v349 = v575;
      v350 = v604;
      v351 = v604 + (v604 - v575) * 4.0;
      v352 = v575;
      while (1)
      {
        v611 = v351;
        v612 = v352;
        if (v350 < 1.0e-15)
        {
          v350 = 1.0e-15;
        }

        if (v350 <= 1.0e15)
        {
          v342 = v350;
        }

        else
        {
          v342 = 1.0e15;
        }

        v604 = v342;
        if (v343)
        {
          if (v342 <= v352 || (v342 < v351 ? (v353 = v344 > 0x12) : (v353 = 1), !v353 ? (v354 = v618[0] == 0) : (v354 = 1), v354 || v351 - v352 <= v351 * 1.0e-15))
          {
LABEL_726:
            v604 = v349;
            v342 = v349;
          }
        }

        else if (v344 > 0x12 || !v618[0])
        {
          goto LABEL_726;
        }

        sub_26235BEFC(__p, &__M, v342);
        v355 = __C;
        v356 = DWORD1(__C);
        v357 = DWORD1(__C) * __C;
        if (DWORD1(__C) * __C)
        {
          v358 = malloc_type_malloc(8 * v357, 0x100004000313F17uLL);
          v359 = v358;
          if (v358)
          {
            bzero(v358, 8 * v357);
          }
        }

        else
        {
          v359 = 0;
        }

        if (*(&__C + 1) && __p[1] && v359)
        {
          vDSP_vaddD(*(&__C + 1), 1, __p[1], 1, v359, 1, SDWORD1(__C) * __C);
        }

        if (v357 < 1)
        {
          if (v599)
          {
            free(v599);
            v599 = 0;
          }

LABEL_742:
          *&v598 = COERCE_DOUBLE(__PAIR64__(v356, v355));
LABEL_743:
          if (!v359)
          {
            goto LABEL_745;
          }

LABEL_744:
          free(v359);
          goto LABEL_745;
        }

        if (HIDWORD(v598) * v598 == v357)
        {
          if (v599 && v359)
          {
            memcpy(v599, v359, 8 * v598 * SHIDWORD(v598));
          }

          goto LABEL_742;
        }

        if (v599)
        {
          free(v599);
          v599 = 0;
        }

        *&v598 = COERCE_DOUBLE(__PAIR64__(v356, v355));
        v384 = malloc_type_malloc(8 * v357, 0x100004000313F17uLL);
        v599 = v384;
        if (!v384)
        {
          goto LABEL_743;
        }

        if (v359)
        {
          memcpy(v384, v359, 8 * v598 * SHIDWORD(v598));
          goto LABEL_744;
        }

LABEL_745:
        v562 = v352;
        if (__p[1])
        {
          free(__p[1]);
        }

        v360 = (*(*a2 + 24))(a2, &v598);
        v594 = *&v360;
        (*(*a2 + 32))(a2, &v598, &v602);
        v361 = SHIDWORD(v602) * v602;
        if (v361)
        {
          v362 = malloc_type_malloc(8 * v361, 0x100004000313F17uLL);
          v363 = v362;
          if (v362)
          {
            bzero(v362, 8 * v361);
          }
        }

        else
        {
          v363 = 0;
        }

        v555 = *&v347;
        if (v603 && v601 && v363)
        {
          vDSP_vmulD(v603, 1, v601, 1, v363, 1, SHIDWORD(v602) * v602);
        }

        v347 = v348;
        __p[0] = 0;
        vDSP_sveD(v363, 1, __p, v361);
        v364 = __p[0];
        if (v363)
        {
          free(v363);
        }

        v610 = v364;
        v365 = v553 + v342 * v345;
        v366 = fabs(*&v364) <= v549;
        v367 = v360 <= v365 && *&v364 <= v345;
        v368 = v360 > v365 || *&v364 >= v345;
        v369 = v360 > v365 && v366;
        v370 = v343;
        if (v342 < v351 && v342 > v562)
        {
          v370 = 0;
        }

        v372 = v342 == 1.0e15 && v367;
        v373 = v342 == 1.0e-15 && v368;
        v374 = v351 - v562 > v351 * 1.0e-15 || v343 == 0;
        if (v369 || ((v375 = v370 | (v618[0] == 0), v374) ? (v376 = v344 > 0x12) : (v376 = 1), !v376 ? (v377 = !v373) : (v377 = 0), v377 ? (v378 = !v372) : (v378 = 0), v378 ? (v379 = v375 == 0) : (v379 = 0), !v379))
        {
          if (*(&__C + 1))
          {
            free(*(&__C + 1));
          }

          break;
        }

        v380 = *&v364 < v345;
        if (v360 > v365)
        {
          v380 = 1;
        }

        v346 &= v380;
        if (v346 != 1 || v360 <= v365 || v360 > v573)
        {
          sub_26235C858(&v575, &v573, &v616, &v615, &v614, &v613, &v604, &v594, &v610, &v617, &v612, &v611, v618);
        }

        else
        {
          *__p = v360 - v342 * v345;
          v608 = v614 - v615 * v345;
          v609 = v573 - v349 * v345;
          v606 = v616 - v345;
          v607 = *&v364 - v345;
          v605 = v613 - v345;
          sub_26235C858(&v575, &v609, &v606, &v615, &v608, &v605, &v604, __p, &v607, &v617, &v612, &v611, v618);
          v573 = v609 + v575 * v345;
          v616 = v345 + v606;
          v613 = v345 + v605;
          v614 = v608 + v615 * v345;
        }

        v343 = v617;
        if (v617 == 1)
        {
          v383 = vabdd_f64(v615, v575);
          if (v383 >= v555 * 0.66)
          {
            v604 = v575 + (v615 - v575) * 0.5;
          }
        }

        else
        {
          v383 = *&v347;
          *&v347 = v555;
        }

        ++v344;
        *&v348 = v383;
        if ((v617 & 1) == 0)
        {
          goto LABEL_700;
        }

        v349 = v575;
        if (v615 >= v575)
        {
          v352 = v575;
        }

        else
        {
          v352 = v615;
        }

        if (v575 >= v615)
        {
          v351 = v575;
        }

        else
        {
          v351 = v615;
        }

        v350 = v604;
      }
    }

    if (v599)
    {
      free(v599);
    }

    if (v601)
    {
      free(v601);
    }

    if (v603)
    {
      free(v603);
    }

    if (v597)
    {
      free(v597);
    }

    __p[1] = 0;
    __p[0] = v583;
    if (HIDWORD(v583) * v583)
    {
      v385 = 8 * HIDWORD(v583) * v583;
      v386 = malloc_type_malloc(v385, 0x100004000313F17uLL);
      v387 = v386;
      __p[1] = v386;
      if (v386)
      {
        bzero(v386, v385);
      }
    }

    else
    {
      v387 = 0;
    }

    if (__A && v546 && v387)
    {
      vDSP_vsubD(v546, 1, __A, 1, v387, 1, SHIDWORD(v583) * v583);
    }

    sub_26235BEFC(&__C, __p, v342);
    v388 = v583;
    v389 = HIDWORD(v583);
    v390 = HIDWORD(v583) * v583;
    if (HIDWORD(v583) * v583)
    {
      v391 = malloc_type_malloc(8 * v390, 0x100004000313F17uLL);
      v392 = v391;
      if (v391)
      {
        bzero(v391, 8 * v390);
      }
    }

    else
    {
      v392 = 0;
    }

    if (__A && *(&__C + 1) && v392)
    {
      vDSP_vsubD(*(&__C + 1), 1, __A, 1, v392, 1, SHIDWORD(v583) * v583);
    }

    if (v390 < 1)
    {
      if (__A)
      {
        free(__A);
        __A = 0;
      }

LABEL_851:
      v583 = __PAIR64__(v389, v388);
LABEL_852:
      if (!v392)
      {
        goto LABEL_854;
      }

LABEL_853:
      free(v392);
      goto LABEL_854;
    }

    if (HIDWORD(v583) * v583 == v390)
    {
      if (__A && v392)
      {
        memcpy(__A, v392, 8 * v583 * SHIDWORD(v583));
      }

      goto LABEL_851;
    }

    if (__A)
    {
      free(__A);
      __A = 0;
    }

    v583 = __PAIR64__(v389, v388);
    v418 = malloc_type_malloc(8 * v390, 0x100004000313F17uLL);
    __A = v418;
    if (!v418)
    {
      goto LABEL_852;
    }

    if (v392)
    {
      memcpy(v418, v392, 8 * v583 * SHIDWORD(v583));
      goto LABEL_853;
    }

LABEL_854:
    if (*(&__C + 1))
    {
      free(*(&__C + 1));
      *(&__C + 1) = 0;
    }

    *&__C = 0;
    if (__p[1])
    {
      free(__p[1]);
    }

    v393 = v583;
    if (v583 >= 1)
    {
      v394 = __A;
      v395 = *(a2 + 16);
      v396 = *(a2 + 32);
      do
      {
        v397 = *v395;
        if (*v394 < *v395 || (v397 = *v396, *v394 > *v396))
        {
          *v394 = v397;
        }

        ++v396;
        ++v395;
        ++v394;
        --v393;
      }

      while (v393);
    }

    v398 = (*(*a2 + 24))(a2, &v583);
    (*(*a2 + 32))(a2, &v583, &v581);
    v399 = HIDWORD(v581);
    __C = v581;
    __Nc = v581;
    v400 = HIDWORD(v581) * v581;
    if (HIDWORD(v581) * v581)
    {
      v401 = malloc_type_malloc(8 * v400, 0x100004000313F17uLL);
      v402 = v401;
      *(&__C + 1) = v401;
      if (v401)
      {
        bzero(v401, 8 * v400);
      }
    }

    else
    {
      v402 = 0;
    }

    if (__B && v578 && v402)
    {
      vDSP_vsubD(v578, 1, __B, 1, v402, 1, SHIDWORD(v581) * v581);
    }

    __p[1] = 0;
    __p[0] = v583;
    v563 = HIDWORD(v583);
    if (HIDWORD(v583) * v583)
    {
      v403 = 8 * HIDWORD(v583) * v583;
      v404 = malloc_type_malloc(v403, 0x100004000313F17uLL);
      v405 = v404;
      __p[1] = v404;
      if (v404)
      {
        bzero(v404, v403);
      }
    }

    else
    {
      v405 = 0;
    }

    if (__A && v580 && v405)
    {
      vDSP_vsubD(v580, 1, __A, 1, v405, 1, SHIDWORD(v583) * v583);
    }

    v406 = sub_26235BF84(__p, &__C);
    v407 = sub_26235C08C(&__C);
    v408 = -v406;
    if (v406 >= 0.0)
    {
      v408 = v406;
    }

    if (v408 <= v407 * 0.0000001)
    {
      goto LABEL_1140;
    }

    v409 = v589;
    v410 = *(a1 + 140);
    if (v589 >= v410)
    {
      if (v410 >= 2)
      {
        v419 = 0;
        do
        {
          v420 = v419 + 1;
          sub_26235C154(&v602, &v588, v419 + 1, v419 + 2);
          sub_26235C3DC(&v588, v419, v419 + 1, &v602);
          if (v603)
          {
            free(v603);
          }

          sub_26235C154(&v602, &v585, v419 + 1, v419 + 2);
          sub_26235C3DC(&v585, v419, v419 + 1, &v602);
          if (v603)
          {
            free(v603);
          }

          ++v419;
        }

        while (v420 < *(a1 + 140) - 1);
        v409 = v589;
      }
    }

    else
    {
      v411 = v588;
      if (v588)
      {
        if (v589 >= 2 && v588 != 1)
        {
          v412 = malloc_type_malloc(8 * v589 * v588, 0x100004000313F17uLL);
          if (v590)
          {
            v413 = v412;
            if (v412)
            {
              vDSP_mtransD(v590, 1, v412, 1, v409, v411);
              cblas_dcopy_NEWLAPACK();
              free(v413);
            }
          }
        }
      }

      v588 = v409;
      v589 = v411;
      sub_26235B8CC(&v588, v409 + 1, *(a1 + 136));
      v414 = v588;
      v415 = v589;
      if (v588)
      {
        if (v588 != 1 && v589 >= 2)
        {
          v416 = malloc_type_malloc(8 * v589 * v588, 0x100004000313F17uLL);
          if (v590)
          {
            v417 = v416;
            if (v416)
            {
              vDSP_mtransD(v590, 1, v416, 1, v415, v414);
              cblas_dcopy_NEWLAPACK();
              free(v417);
            }
          }
        }

        v409 = v414;
      }

      else
      {
        v409 = 0;
      }

      v588 = v415;
      v589 = v409;
      v421 = v585;
      v422 = v586;
      if (v585 >= 2 && v586 >= 2)
      {
        v423 = malloc_type_malloc(8 * v586 * v585, 0x100004000313F17uLL);
        if (v587)
        {
          v424 = v423;
          if (v423)
          {
            vDSP_mtransD(v587, 1, v423, 1, v422, v421);
            cblas_dcopy_NEWLAPACK();
            free(v424);
          }
        }
      }

      v585 = v422;
      v586 = v421;
      sub_26235B8CC(&v585, v422 + 1, *(a1 + 136));
      v425 = v585;
      v426 = v586;
      if (v585 >= 2 && v586 >= 2)
      {
        v427 = malloc_type_malloc(8 * v586 * v585, 0x100004000313F17uLL);
        if (v587)
        {
          v428 = v427;
          if (v427)
          {
            vDSP_mtransD(v587, 1, v427, 1, v426, v425);
            cblas_dcopy_NEWLAPACK();
            free(v428);
          }
        }
      }

      v585 = v426;
      v586 = v425;
    }

    sub_26235C3DC(&v588, v409 - 1, v409, &__C);
    sub_26235C3DC(&v585, v586 - 1, v586, __p);
    if (v400)
    {
      v429 = malloc_type_malloc(8 * v400, 0x100004000313F17uLL);
      v430 = v429;
      if (v429)
      {
        bzero(v429, 8 * v400);
      }
    }

    else
    {
      v430 = 0;
    }

    if (!v402)
    {
      v431 = v399;
      v432 = 0;
      v433 = 0;
      v434 = v430 == 0;
      goto LABEL_942;
    }

    if (v400 && v430)
    {
      if (__Nc == 1 || v399 == 1)
      {
        v431 = v399;
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        v431 = v399;
        vDSP_mtransD(v402, 1, v430, 1, v399, __Nc);
      }
    }

    else
    {
      v431 = v399;
      v433 = 0;
      v432 = 0;
      v434 = v430 == 0;
      if (!v430)
      {
        goto LABEL_942;
      }
    }

    if (v399)
    {
      v435 = malloc_type_malloc(8 * (v399 * v399), 0x100004000313F17uLL);
      v433 = v435;
      if (v435)
      {
        bzero(v435, 8 * (v399 * v399));
        cblas_dgemm_NEWLAPACK();
      }

      v434 = 0;
    }

    else
    {
      v434 = 0;
      v433 = 0;
    }

    v432 = v399;
LABEL_942:
    v602 = 0;
    v556 = v434;
    vDSP_sveD(v433, 1, &v602, (v432 * v432));
    v436 = *&v602;
    if (v400)
    {
      v437 = malloc_type_malloc(8 * v400, 0x100004000313F17uLL);
      v438 = v437;
      if (v437)
      {
        bzero(v437, 8 * v400);
      }

      if (!v402)
      {
        goto LABEL_953;
      }
    }

    else
    {
      v438 = 0;
      if (!v402)
      {
        goto LABEL_953;
      }
    }

    if (v400 && v438)
    {
      if (__Nc == 1 || v399 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v402, 1, v438, 1, v431, __Nc);
      }

      goto LABEL_956;
    }

LABEL_953:
    if (!v438)
    {
      v399 = 0;
      v439 = 0;
      v440 = 0;
      LOBYTE(v405) = 1;
      goto LABEL_964;
    }

LABEL_956:
    if (v405)
    {
      if (v563 * v399)
      {
        v441 = 8 * v563 * v399;
        v442 = malloc_type_malloc(v441, 0x100004000313F17uLL);
        v440 = v442;
        if (v442)
        {
          bzero(v442, v441);
          cblas_dgemm_NEWLAPACK();
        }

        LOBYTE(v405) = 0;
      }

      else
      {
        LOBYTE(v405) = 0;
        v440 = 0;
      }

      v439 = v563;
    }

    else
    {
      v399 = 0;
      v439 = 0;
      v440 = 0;
    }

LABEL_964:
    v602 = 0;
    vDSP_sveD(v440, 1, &v602, v439 * v399);
    *(a1 + 128) = v436 / *&v602;
    if (v440)
    {
      free(v440);
    }

    if ((v405 & 1) == 0)
    {
      free(v438);
    }

    if (v433)
    {
      free(v433);
    }

    if (!v556)
    {
      free(v430);
    }

    v443 = v588;
    v444 = v589;
    v445 = v586 + v589;
    v446 = (v586 + v589) * v588;
    if (!v446)
    {
      v448 = 0;
LABEL_982:
      v452 = a1;
      v453 = *(a1 + 104);
      if (v453)
      {
        free(v453);
        *(a1 + 104) = 0;
      }

LABEL_984:
      *(v452 + 96) = v443;
      *(v452 + 100) = v445;
LABEL_985:
      if (!v448)
      {
        goto LABEL_987;
      }

LABEL_986:
      free(v448);
      v444 = v589;
      goto LABEL_987;
    }

    v447 = malloc_type_malloc(8 * v446, 0x100004000313F17uLL);
    v448 = v447;
    if (v447)
    {
      bzero(v447, 8 * v446);
    }

    if (v446 < 1)
    {
      goto LABEL_982;
    }

    v449 = *(a1 + 96);
    v450 = *(a1 + 100);
    v451 = *(a1 + 104);
    if (v450 * v449 == v446)
    {
      if (v451 && v448)
      {
        memcpy(v451, v448, 8 * v449 * v450);
      }

      v452 = a1;
      goto LABEL_984;
    }

    if (v451)
    {
      free(v451);
      *(a1 + 104) = 0;
    }

    *(a1 + 96) = v443;
    *(a1 + 100) = v445;
    v464 = malloc_type_malloc(8 * v446, 0x100004000313F17uLL);
    *(a1 + 104) = v464;
    if (!v464)
    {
      goto LABEL_985;
    }

    if (v448)
    {
      memcpy(v464, v448, 8 * *(a1 + 96) * *(a1 + 100));
      goto LABEL_986;
    }

LABEL_987:
    sub_26235C3DC(v527, 0, v444, &v588);
    v454 = v589;
    v455 = *(a1 + 100);
    sub_26235BEFC(&v602, &v585, *(a1 + 128));
    sub_26235C3DC(v527, v454, v455, &v602);
    if (v603)
    {
      free(v603);
    }

    v456 = v586;
    v457 = v585;
    v458 = v585 * v586;
    if (v585 * v586)
    {
      v459 = malloc_type_malloc(8 * v458, 0x100004000313F17uLL);
      v460 = v459;
      if (v459)
      {
        bzero(v459, 8 * v458);
      }
    }

    else
    {
      v460 = 0;
    }

    __Nd = v587;
    if (v587 && v458 && v460)
    {
      if (v457 == 1 || v456 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v587, 1, v460, 1, v456, v457);
      }
    }

    else if (!v460)
    {
      v461 = 0;
      v462 = 0;
      v463 = 0;
      v603 = 0;
      v602 = 0;
      goto LABEL_1015;
    }

    if (v590)
    {
      v462 = v589;
      v603 = 0;
      v602 = __PAIR64__(v589, v456);
      if (v589 * v456)
      {
        v465 = 8 * v589 * v456;
        v466 = malloc_type_malloc(v465, 0x100004000313F17uLL);
        v461 = v466;
        v603 = v466;
        if (v466)
        {
          bzero(v466, v465);
          cblas_dgemm_NEWLAPACK();
        }
      }

      else
      {
        v461 = 0;
      }

      v463 = v456;
    }

    else
    {
      v461 = 0;
      v462 = 0;
      v463 = 0;
      v603 = 0;
      v602 = 0;
    }

    free(v460);
LABEL_1015:
    v557 = v457;
    v564 = v461;
    sub_26235BA28(&__M, &v602);
    if (v463 >= 1)
    {
      v467 = 0;
      v468 = v601;
      v469 = 8 * SHIDWORD(__M) + 8;
      v470 = v462 - 1;
      do
      {
        if (v462 > v467)
        {
          bzero(v468, 8 * v470 + 8);
        }

        ++v467;
        v468 = (v468 + v469);
        --v470;
      }

      while (v463 != v467);
    }

    if (!v461)
    {
      v595 = 0;
      v594 = 0;
      goto LABEL_1054;
    }

    if (v463 == 1 && v462 == 1)
    {
      sub_26235BA28(&v594, &v602);
    }

    else
    {
      v471 = (&v602 + 4);
      if (v462 >= v463)
      {
        v471 = &v602;
      }

      v472 = v471->u32[0];
      v595 = 0;
      LODWORD(v594) = 1;
      HIDWORD(v594) = v472;
      if (!v472)
      {
        goto LABEL_1054;
      }

      v473 = malloc_type_malloc(8 * v472, 0x100004000313F17uLL);
      v595 = v473;
      if (v473)
      {
        bzero(v473, 8 * HIDWORD(v594) * v594);
      }

      if (v472 >= 1)
      {
        v474 = 0;
        v475 = v472 + 1;
        v476 = v595;
        do
        {
          *v476++ = *&v461[v474];
          v474 += v475;
          --v472;
        }

        while (v472);
      }
    }

    v477 = v594;
    v478 = HIDWORD(v594);
    if (v594 == 1)
    {
      if (SHIDWORD(v594) > 1)
      {
        v477 = 1;
        goto LABEL_1042;
      }

      if (HIDWORD(v594) == 1)
      {
        sub_26235BA28(&v596, &v594);
        goto LABEL_1055;
      }

LABEL_1054:
      v597 = 0;
      v596 = 0;
      goto LABEL_1055;
    }

    if (v594 < 2 || HIDWORD(v594) != 1)
    {
      goto LABEL_1054;
    }

    v478 = 1;
LABEL_1042:
    if (v477 >= v478)
    {
      v480 = &v594;
    }

    else
    {
      v480 = (&v594 + 4);
    }

    v481 = *v480;
    v597 = 0;
    LODWORD(v596) = v481;
    HIDWORD(v596) = v481;
    if (v481)
    {
      v482 = malloc_type_malloc(8 * (v481 * v481), 0x100004000313F17uLL);
      v597 = v482;
      if (v482)
      {
        bzero(v482, 8 * HIDWORD(v596) * v596);
      }

      if (v481 >= 1)
      {
        v483 = v595;
        v484 = v597;
        v485 = 8 * SHIDWORD(v596) + 8;
        do
        {
          v486 = *v483++;
          *v484 = v486;
          v484 = (v484 + v485);
          --v481;
        }

        while (v481);
      }
    }

LABEL_1055:
    sub_26235BEFC(&v598, &v596, -1.0);
    if (v597)
    {
      free(v597);
      v597 = 0;
    }

    v596 = 0;
    if (v595)
    {
      free(v595);
    }

    v487 = __M;
    v597 = 0;
    LODWORD(v596) = __M + v463;
    HIDWORD(v596) = v462;
    v488 = v462 * (__M + v463);
    if (v488)
    {
      v489 = 8 * v488;
      v490 = malloc_type_malloc(v489, 0x100004000313F17uLL);
      v491 = v490;
      v597 = v490;
      if (v490)
      {
        bzero(v490, v489);
        if (v599)
        {
          memcpy(v491, v599, 8 * v463 * v462);
        }

        if (v601)
        {
          memcpy(&v491[8 * v462 * v463], v601, 8 * v487 * v462);
        }
      }
    }

    else
    {
      v491 = 0;
    }

    v492 = HIDWORD(__M);
    v550 = __M;
    v595 = 0;
    LODWORD(v594) = __M + v463;
    HIDWORD(v594) = HIDWORD(__M);
    v493 = HIDWORD(__M) * (__M + v463);
    if (v493)
    {
      v494 = 8 * v493;
      v495 = malloc_type_malloc(v494, 0x100004000313F17uLL);
      v496 = v495;
      v595 = v495;
      if (v495)
      {
        bzero(v495, v494);
      }
    }

    else
    {
      v496 = 0;
    }

    v497 = __M * HIDWORD(__M);
    if (__M * HIDWORD(__M))
    {
      v498 = malloc_type_malloc(8 * v497, 0x100004000313F17uLL);
      v499 = v498;
      if (v498)
      {
        bzero(v498, 8 * v497);
      }
    }

    else
    {
      v499 = 0;
    }

    if (v601 && v497 && HIDWORD(__M) * __M && v499)
    {
      if (__M == 1 || HIDWORD(__M) == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v601, 1, v499, 1, SHIDWORD(__M), __M);
      }
    }

    if (v496)
    {
      if (!v499)
      {
        goto LABEL_1087;
      }

      memcpy(v496, v499, 8 * v492 * v463);
    }

    else if (!v499)
    {
      goto LABEL_1087;
    }

    free(v499);
LABEL_1087:
    if (v458)
    {
      v500 = malloc_type_malloc(8 * v458, 0x100004000313F17uLL);
      v501 = v500;
      if (v500)
      {
        bzero(v500, 8 * v458);
      }
    }

    else
    {
      v501 = 0;
    }

    if (!__Nd)
    {
LABEL_1098:
      if (!v501)
      {
        goto LABEL_1113;
      }

      goto LABEL_1112;
    }

    if (v458 && v501)
    {
      if (v557 == 1 || v456 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(__Nd, 1, v501, 1, v456, v557);
      }
    }

    else if (!v501)
    {
      goto LABEL_1098;
    }

    if (v456)
    {
      v502 = malloc_type_malloc(8 * (v456 * v456), 0x100004000313F17uLL);
      v503 = v502;
      if (v502)
      {
        bzero(v502, 8 * (v456 * v456));
        cblas_dgemm_NEWLAPACK();
      }

      v575 = *(a1 + 128);
      v504 = malloc_type_malloc(8 * (v456 * v456), 0x100004000313F17uLL);
      v505 = v504;
      if (v504)
      {
        bzero(v504, 8 * (v456 * v456));
        if (v503)
        {
          vDSP_vsmulD(v503, 1, &v575, v505, 1, (v456 * v456));
        }

        if (v496)
        {
          memcpy(&v496[8 * v492 * v463], v505, 8 * v550 * v492);
        }

        free(v505);
      }

      if (v503)
      {
        free(v503);
      }
    }

LABEL_1112:
    free(v501);
LABEL_1113:
    v576 = 0;
    __N_4 = HIDWORD(v602);
    v506 = COERCE_DOUBLE(vadd_s32(__M, v602));
    v575 = v506;
    v507 = vmul_lane_s32(*&v506, *&v506, 1).u32[0];
    if (v507)
    {
      v558 = *&v506;
      v508 = malloc_type_malloc(8 * v507, 0x100004000313F17uLL);
      v576 = v508;
      if (v508)
      {
        bzero(v508, 8 * vmul_lane_s32(v558, v558, 1).i32[0]);
      }
    }

    sub_26235C3DC(&v575, 0, __N_4, &v596);
    sub_26235C3DC(&v575, __N_4, SHIDWORD(v575), &v594);
    sub_26235C610(&v573, &v575);
    if (v536 == &v573)
    {
      goto LABEL_1126;
    }

    v509 = *&v573;
    v510 = vmul_lane_s32(v509, v509, 1).u32[0];
    if (v510 < 1)
    {
      v514 = *(a1 + 120);
      if (v514)
      {
        free(v514);
        *(a1 + 120) = 0;
LABEL_1124:
        v509 = *&v573;
      }

LABEL_1125:
      *v536 = *&v509;
LABEL_1126:
      if (__src)
      {
        free(__src);
      }

      goto LABEL_1128;
    }

    v511 = *(a1 + 112);
    v512 = *(a1 + 116);
    v513 = *(a1 + 120);
    if (v512 * v511 == v510)
    {
      if (v513 && __src)
      {
        memcpy(v513, __src, 8 * v511 * v512);
        goto LABEL_1124;
      }

      goto LABEL_1125;
    }

    if (v513)
    {
      free(v513);
      *(a1 + 120) = 0;
      v509 = *&v573;
      v510 = vmul_lane_s32(v509, v509, 1).u32[0];
    }

    *v536 = *&v509;
    v517 = malloc_type_malloc(8 * v510, 0x100004000313F17uLL);
    *(a1 + 120) = v517;
    if (!v517)
    {
      goto LABEL_1126;
    }

    if (__src)
    {
      memcpy(v517, __src, 8 * *(a1 + 112) * *(a1 + 116));
      goto LABEL_1126;
    }

LABEL_1128:
    if (v576)
    {
      free(v576);
    }

    if (v496)
    {
      free(v496);
    }

    if (v491)
    {
      free(v491);
    }

    if (v599)
    {
      free(v599);
    }

    if (v601)
    {
      free(v601);
    }

    if (v564)
    {
      free(v564);
    }

LABEL_1140:
    v515 = vabdd_f64(v529, v398);
    *(a1 + 64) = v515;
    v516 = *(a1 + 24);
    if (v515 >= v516)
    {
      ++*v530;
      *(a1 + 72) = sqrt(sub_26235C08C(&v581));
      *(a1 + 88) = sub_26235C764(v526, v530);
    }

    if (__p[1])
    {
      free(__p[1]);
    }

    if (*(&__C + 1))
    {
      free(*(&__C + 1));
    }

    if (v546)
    {
      free(v546);
    }

    if (v544)
    {
      free(v544);
    }

    if (__dst)
    {
      free(__dst);
    }

    if (v578)
    {
      free(v578);
    }

    if (v580)
    {
      free(v580);
    }

    v529 = v398;
    if (v515 < v516)
    {
      break;
    }
  }

  *(a1 + 88) = sub_26235C764(v526, v530);
  if (&v583 != a3)
  {
    v518 = v583;
    v519 = vmul_lane_s32(v518, v518, 1).u32[0];
    if (v519 < 1)
    {
      v522 = a3[1];
      if (v522)
      {
        free(v522);
        a3[1] = 0;
        v518 = v583;
      }

      *a3 = v518;
    }

    else
    {
      v520 = *(a3 + 1);
      v521 = a3[1];
      if (v520 * *a3 == v519)
      {
        if (v521 && __A)
        {
          memcpy(v521, __A, 8 * *a3 * v520);
          v518 = v583;
        }

        *a3 = v518;
      }

      else
      {
        if (v521)
        {
          free(v521);
          a3[1] = 0;
          v518 = v583;
          v519 = vmul_lane_s32(v518, v518, 1).u32[0];
        }

        *a3 = v518;
        v524 = malloc_type_malloc(8 * v519, 0x100004000313F17uLL);
        a3[1] = v524;
        if (v524 && __A)
        {
          memcpy(v524, __A, 8 * *a3 * *(a3 + 1));
        }
      }
    }
  }

  v33 = (*(a1 + 88) - 2) < 3;
  if (__B)
  {
    free(__B);
  }

  if (__A)
  {
    free(__A);
  }

  if (v587)
  {
    free(v587);
  }

  if (v590)
  {
    free(v590);
  }

  return v33;
}

void sub_26235A780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, void *a58, uint64_t a59, void *a60, uint64_t a61, void *a62, uint64_t a63)
{
  free(v73);
  free(v72);
  if (a47)
  {
    free(a47);
  }

  if (a68)
  {
    free(a68);
  }

  if (STACK[0x250])
  {
    free(STACK[0x250]);
  }

  if (a72)
  {
    free(a72);
  }

  if (v74)
  {
    operator delete(v74);
  }

  if (a37)
  {
    free(a37);
  }

  if (a44)
  {
    free(a44);
  }

  if (a56)
  {
    free(a56);
  }

  if (a58)
  {
    free(a58);
  }

  if (a60)
  {
    free(a60);
  }

  if (a62)
  {
    free(a62);
  }

  if (a64)
  {
    free(a64);
  }

  if (a66)
  {
    free(a66);
  }

  _Unwind_Resume(a1);
}

void *sub_26235B2A0(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;
  return a1;
}

uint64_t sub_26235B308(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v6 = (a1 + 40);
  sub_2621E1D40(&v6);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

void sub_26235B3B8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FF0C360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C360))
  {
    v24 = xmmword_2623A7D50;
    qword_27FF0C308 = 0;
    unk_27FF0C310 = 0;
    qword_27FF0C300 = 0;
    sub_26235B858(&qword_27FF0C300, &v24, v25, 2uLL);
    v22 = xmmword_2623A8A80;
    v23 = unk_2623A8A90;
    qword_27FF0C320 = 0;
    unk_27FF0C328 = 0;
    qword_27FF0C318 = 0;
    sub_26235B858(&qword_27FF0C318, &v22, &v24, 4uLL);
    v19 = xmmword_2623A8AA0;
    v20 = unk_2623A8AB0;
    v21 = xmmword_2623A8AC0;
    qword_27FF0C338 = 0;
    unk_27FF0C340 = 0;
    qword_27FF0C330 = 0;
    sub_26235B858(&qword_27FF0C330, &v19, &v22, 6uLL);
    v15 = xmmword_2623A8AD0;
    v16 = unk_2623A8AE0;
    v17 = xmmword_2623A8AF0;
    v18 = unk_2623A8B00;
    qword_27FF0C350 = 0;
    unk_27FF0C358 = 0;
    qword_27FF0C348 = 0;
    sub_26235B858(&qword_27FF0C348, &v15, &v19, 8uLL);
    __cxa_atexit(sub_26235BA98, &qword_27FF0C300, &dword_2621C3000);
    __cxa_guard_release(&qword_27FF0C360);
  }

  if ((atomic_load_explicit(&qword_27FF0C3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FF0C3C8))
  {
    v24 = xmmword_2623A7D50;
    qword_27FF0C370 = 0;
    unk_27FF0C378 = 0;
    qword_27FF0C368 = 0;
    sub_26235B858(&qword_27FF0C368, &v24, v25, 2uLL);
    v22 = xmmword_2623A8B10;
    v23 = unk_2623A8B20;
    qword_27FF0C388 = 0;
    unk_27FF0C390 = 0;
    qword_27FF0C380 = 0;
    sub_26235B858(&qword_27FF0C380, &v22, &v24, 4uLL);
    v19 = xmmword_2623A8B30;
    v20 = unk_2623A8B40;
    v21 = xmmword_2623A8B50;
    qword_27FF0C3A0 = 0;
    unk_27FF0C3A8 = 0;
    qword_27FF0C398 = 0;
    sub_26235B858(&qword_27FF0C398, &v19, &v22, 6uLL);
    v15 = xmmword_2623A8B60;
    v16 = unk_2623A8B70;
    v17 = xmmword_2623A8B80;
    v18 = unk_2623A8B90;
    qword_27FF0C3B8 = 0;
    unk_27FF0C3C0 = 0;
    qword_27FF0C3B0 = 0;
    sub_26235B858(&qword_27FF0C3B0, &v15, &v19, 8uLL);
    __cxa_atexit(sub_26235BA98, &qword_27FF0C368, &dword_2621C3000);
    __cxa_guard_release(&qword_27FF0C3C8);
  }

  sub_26235B8CC(a3, *a2, 1);
  if (*a2 >= 1)
  {
    v6 = 0;
    v7 = *(a3 + 8);
    v8 = *(a2 + 1);
    do
    {
      v9 = 0;
      *(v7 + 8 * v6) = 0;
      v10 = *(v8 + 8 * v6);
      do
      {
        *(v8 + 8 * v6) = v10 + *(qword_27FF0C368 + v9) * 0.0000022204;
        v11 = *(qword_27FF0C300 + v9);
        v12 = (*(*a1 + 24))(a1, a2);
        v7 = *(a3 + 8);
        *(v7 + 8 * v6) = *(v7 + 8 * v6) + v11 * v12;
        v8 = *(a2 + 1);
        *(v8 + 8 * v6) = v10;
        v9 += 8;
      }

      while (v9 != 16);
      v13 = *a2;
      *(v7 + 8 * v6) = *(v7 + 8 * v6) / 0.0000044408;
      ++v6;
    }

    while (v6 < v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_26235B774(_Unwind_Exception *a1)
{
  v3 = &qword_27FF0C3B0;
  v4 = &qword_27FF0C3B0;
  while (1)
  {
    v6 = *(v4 - 3);
    v4 -= 3;
    v5 = v6;
    if (v6)
    {
      *(v3 - 2) = v5;
      operator delete(v5);
    }

    v3 = v4;
    if (v4 == v1)
    {
      __cxa_guard_abort(&qword_27FF0C3C8);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_26235B858(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2621CC71C(result, a4);
  }

  return result;
}

void sub_26235B8B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235B8CC(uint64_t a1, unsigned int a2, int a3)
{
  v6 = a3 * a2;
  if (a3 * a2 == *(a1 + 4) * *a1)
  {
    *a1 = a2;
    *(a1 + 4) = a3;
  }

  else
  {
    sub_26235BA28(&v14, a1);
    v7 = *(a1 + 8);
    if (v7)
    {
      free(v7);
      *(a1 + 8) = 0;
    }

    v8 = malloc_type_malloc(8 * a2 * a3, 0x100004000313F17uLL);
    *(a1 + 8) = v8;
    v9 = v15;
    if (v8 && v15)
    {
      bzero(v8, 8 * v6);
      if (v14 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v14;
      }

      if (v10 >= 1)
      {
        v11 = 0;
        for (i = 0; i != v10; ++i)
        {
          v13 = *(a1 + 8);
          cblas_dcopy_NEWLAPACK();
          v11 += 8 * a3;
        }
      }

      v9 = v15;
    }

    *a1 = a2;
    *(a1 + 4) = a3;
    if (v9)
    {
      free(v9);
    }
  }
}