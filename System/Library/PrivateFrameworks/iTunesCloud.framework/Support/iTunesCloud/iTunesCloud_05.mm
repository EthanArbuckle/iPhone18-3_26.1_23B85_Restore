uint64_t sub_1000FA408(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213DA8 = result;
  return result;
}

void sub_1000FA554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FA5E4;
  v3[3] = &unk_1001DE110;
  v4 = *(a1 + 48);
  [v1 _onQueue_sendRequest:v2 withInternalResponseHandler:v3];
}

void sub_1000FA5E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FA6D0;
    block[3] = &unk_1001DF5F0;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_1000FA948(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 104);
  v4 = a2;
  [v4 writeString:v3 withCode:1634357319];
  v5 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000FAA04(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 32) + 112);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        ICDAAPUtilitiesWriteContainer();
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000FB650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FB680(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FB698(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000FB9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FBA14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v26 = 138543618;
      v27 = v8;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received an error loading response for %{public}@: %{public}@", &v26, 0x16u);
    }

    goto LABEL_5;
  }

  v9 = [v5 bodyData];
  v10 = [v9 length];

  if (!v10)
  {
    v19 = a1 + 48;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v11 = [v5 bodyData];
  v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];

  v13 = 0;
  if (_NSIsNSDictionary())
  {
    v14 = [v12 objectForKey:@"status"];
    v15 = [v14 integerValue];

    if (v15)
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v5 urlResponse];
        v18 = [v17 URL];
        v26 = 134218242;
        v27 = v15;
        v28 = 2114;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Received response with error: Status-%ld when loading URL: %{public}@", &v26, 0x16u);
      }

      v13 = 0;
      goto LABEL_12;
    }

    v13 = [v12 objectForKey:@"retry-in-ms"];

    if (!v13)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
LABEL_12:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_17;
    }

    v20 = [v12 objectForKey:@"retry-in-ms"];
    v13 = [v20 unsignedIntegerValue];
  }

LABEL_17:

  v19 = a1 + 48;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_5;
  }

  if (v13)
  {
    v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v26 = 138543618;
      v27 = v22;
      v28 = 2048;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Retrying loading %{public}@ URL in %ld milliseconds", &v26, 0x16u);
    }

    usleep((v13 * 1000.0));
    goto LABEL_5;
  }

LABEL_22:
  v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 64);
    v26 = 138543618;
    v27 = v24;
    v28 = 2048;
    v29 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to load %{public}@ URL after %g seconds", &v26, 0x16u);
  }

  *(*(*v19 + 8) + 24) = 1;
LABEL_5:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000FC4EC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "uploadTask failed: %{public}@. %{public}@", &v12, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000FD104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000FD158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000FD9EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = v3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v8 = v7;
  v9 = *(v4 + 32);
  if (v9 > 3000)
  {
    if (v9 <= 4000)
    {
      if (v9 == 3001)
      {
        sub_1000FFA44((v4 + 40), v6, v7);
      }

      else if (v9 == 4000)
      {
        CC_MD5_Update((v4 + 40), v6, v7);
      }
    }

    else
    {
      switch(v9)
      {
        case 4001:
          CC_SHA1_Update((v4 + 40), v6, v7);
          break;
        case 4256:
          CC_SHA256_Update((v4 + 40), v6, v7);
          break;
        case 4512:
          CC_SHA512_Update((v4 + 40), v6, v7);
          break;
      }
    }

    goto LABEL_65;
  }

  if (v9 > 1999)
  {
    if (v9 != 2000)
    {
      if (v9 == 3000)
      {
        sub_1000FF8A0((v4 + 40), v6, v7);
      }

      goto LABEL_65;
    }

    v48 = *(v4 + 51);
    v49 = &v7[v48];
    if (&v7[v48] < 4)
    {
      v50 = v4 + v48;
      if (v7 <= 1u)
      {
        if (!v7)
        {
LABEL_64:
          *(v4 + 44) += v8;
          goto LABEL_65;
        }

        if (v7 == 1)
        {
          *(v50 + 48) = *v6;
          goto LABEL_64;
        }

LABEL_52:
        memcpy((v50 + 48), v6, v7);
        goto LABEL_64;
      }

      if (v7 == 2)
      {
        v56 = *v6;
      }

      else
      {
        if (v7 != 3)
        {
          goto LABEL_52;
        }

        v56 = *v6;
        *(v50 + 50) = v6[2];
      }

      *(v50 + 48) = v56;
      goto LABEL_64;
    }

    LOBYTE(v51) = 0;
    v52 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    v53 = v49 & 3;
    if (*(v4 + 51) > 1u)
    {
      if (v48 != 2)
      {
        LOBYTE(v54) = 0;
        LOBYTE(v55) = 0;
        v57 = 0;
        if (v48 == 3)
        {
          v54 = *(v4 + 48);
          v51 = v54 >> 8;
          LOBYTE(v55) = *(v4 + 50);
          v57 = *v6;
        }

        goto LABEL_58;
      }

      v54 = *(v4 + 48);
      v51 = v54 >> 8;
      v55 = *v6;
    }

    else
    {
      if (!*(v4 + 51))
      {
        v54 = *v6;
        v51 = *v6 >> 8;
        v55 = HIWORD(*v6);
        v57 = HIBYTE(*v6);
        goto LABEL_58;
      }

      LOBYTE(v54) = *(v4 + 48);
      LOBYTE(v51) = *v6;
      v55 = *(v6 + 1);
    }

    v57 = v55 >> 8;
LABEL_58:
    v58 = (v55 << 16) | (v57 << 24) | v54 | (v51 << 8);
    HIDWORD(v59) = (461845907 * ((380141568 * v58) | ((-862048943 * v58) >> 17))) ^ *(v4 + 40);
    LODWORD(v59) = HIDWORD(v59);
    v60 = 5 * (v59 >> 19) - 430675100;
    *(v4 + 40) = v60;
    v61 = &v6[-v48 + 4];
    v62 = &v61[v52 - 4];
    while (v61 < v62)
    {
      v63 = *v61;
      v61 += 4;
      HIDWORD(v64) = (461845907 * ((380141568 * v63) | ((-862048943 * v63) >> 17))) ^ v60;
      LODWORD(v64) = HIDWORD(v64);
      v60 = 5 * (v64 >> 19) - 430675100;
      *(v4 + 40) = v60;
    }

    if (v53)
    {
      memcpy((v4 + 48), v62, v53);
    }

    *(v4 + 51) = v53;
    goto LABEL_64;
  }

  if (!v9)
  {
    v46 = +[NSAssertionHandler currentHandler];
    v47 = [NSString stringWithUTF8String:"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"];
    [v46 handleFailureInFunction:v47 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_65;
  }

  if (v9 != 1000)
  {
    goto LABEL_65;
  }

  v10 = *(v4 + 72);
  v11 = HIBYTE(v10);
  v12 = v10 & 0xFFFFFFFFFFFFFFLL;
  v13 = HIBYTE(v10) & 7;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = 8 - v13;
  v15 = &v7[-(8 - v13)];
  if (v7 >= 8 - v13)
  {
    v16 = 8 * v13;
    v17 = v6;
    v18 = v12;
    do
    {
      v19 = *v17++;
      v18 |= v19 << v16;
      v16 += 8;
    }

    while (v16 != 64);
    v20 = *(v4 + 64) ^ v18;
    v21 = *(v4 + 48);
    v22 = *(v4 + 40) + v21;
    v23 = v22 ^ __ROR8__(v21, 51);
    v24 = *(v4 + 56) + v20;
    v25 = __ROR8__(v20, 48);
    v26 = (v24 ^ v25) + __ROR8__(v22, 32);
    v27 = v26 ^ __ROR8__(v24 ^ v25, 43);
    v28 = v24 + v23;
    *(v4 + 56) = __ROR8__(v28, 32);
    *(v4 + 64) = v27;
    *(v4 + 40) = v26 ^ v18;
    *(v4 + 48) = v28 ^ __ROR8__(v23, 47);
    v6 += v14;
    *(v4 + 72) = (v14 + v11) << 56;
    v8 = v15;
LABEL_15:
    if (v8 >= 8)
    {
      v30 = *(v4 + 40);
      v29 = *(v4 + 48);
      v32 = *(v4 + 56);
      v31 = *(v4 + 64);
      do
      {
        v33 = *v6;
        v6 += 8;
        v34 = v31 ^ v33;
        v35 = v30 + v29;
        v36 = v35 ^ __ROR8__(v29, 51);
        v37 = v32 + v34;
        v38 = __ROR8__(v34, 48);
        v39 = (v37 ^ v38) + __ROR8__(v35, 32);
        v31 = v39 ^ __ROR8__(v37 ^ v38, 43);
        v40 = v37 + v36;
        v29 = v40 ^ __ROR8__(v36, 47);
        v32 = __ROR8__(v40, 32);
        *(v4 + 56) = v32;
        *(v4 + 64) = v31;
        v30 = v39 ^ v33;
        *(v4 + 40) = v30;
        *(v4 + 48) = v29;
        v8 -= 8;
        v11 += 8;
      }

      while (v8 > 7);
    }

    v13 = 0;
  }

  if (v8)
  {
    v41 = 0;
    v42 = 0;
    v43 = v8;
    do
    {
      v44 = *v6++;
      v42 |= v44 << v41;
      v41 += 8;
      --v43;
    }

    while (v43);
    if (v13)
    {
      v45 = (v42 << (8 * v13)) | ((v8 + v11) << 56) | v12;
    }

    else
    {
      v45 = v42 | ((v8 + v11) << 56);
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_65;
    }

    v45 = v11 << 56;
  }

  *(v4 + 72) = v45;
LABEL_65:

  v65 = *(*(a1 + 40) + 8);
  v126 = v5;
  v66 = v126;
  v67 = [v126 bytes];
  v68 = [v126 length];
  v69 = v68;
  v70 = *(v65 + 32);
  if (v70 > 3000)
  {
    if (v70 <= 4000)
    {
      if (v70 == 3001)
      {
        sub_1000FFA44((v65 + 40), v67, v68);
      }

      else if (v70 == 4000)
      {
        CC_MD5_Update((v65 + 40), v67, v68);
      }
    }

    else
    {
      switch(v70)
      {
        case 4001:
          CC_SHA1_Update((v65 + 40), v67, v68);
          break;
        case 4256:
          CC_SHA256_Update((v65 + 40), v67, v68);
          break;
        case 4512:
          CC_SHA512_Update((v65 + 40), v67, v68);
          break;
      }
    }

    goto LABEL_129;
  }

  if (v70 > 1999)
  {
    if (v70 != 2000)
    {
      if (v70 == 3000)
      {
        sub_1000FF8A0((v65 + 40), v67, v68);
      }

      goto LABEL_129;
    }

    v109 = *(v65 + 51);
    v110 = &v68[v109];
    if (&v68[v109] < 4)
    {
      v111 = v65 + v109;
      if (v68 <= 1u)
      {
        if (!v68)
        {
LABEL_128:
          *(v65 + 44) += v69;
          goto LABEL_129;
        }

        if (v68 == 1)
        {
          *(v111 + 48) = *v67;
          goto LABEL_128;
        }

LABEL_116:
        memcpy((v111 + 48), v67, v68);
        goto LABEL_128;
      }

      if (v68 == 2)
      {
        v117 = *v67;
      }

      else
      {
        if (v68 != 3)
        {
          goto LABEL_116;
        }

        v117 = *v67;
        *(v111 + 50) = v67[2];
      }

      *(v111 + 48) = v117;
      goto LABEL_128;
    }

    LOBYTE(v112) = 0;
    v113 = v110 & 0xFFFFFFFFFFFFFFFCLL;
    v114 = v110 & 3;
    if (*(v65 + 51) > 1u)
    {
      if (v109 != 2)
      {
        LOBYTE(v115) = 0;
        LOBYTE(v116) = 0;
        v118 = 0;
        if (v109 == 3)
        {
          v115 = *(v65 + 48);
          v112 = v115 >> 8;
          LOBYTE(v116) = *(v65 + 50);
          v118 = *v67;
        }

        goto LABEL_122;
      }

      v115 = *(v65 + 48);
      v112 = v115 >> 8;
      v116 = *v67;
    }

    else
    {
      if (!*(v65 + 51))
      {
        v115 = *v67;
        v112 = *v67 >> 8;
        v116 = HIWORD(*v67);
        v118 = HIBYTE(*v67);
        goto LABEL_122;
      }

      LOBYTE(v115) = *(v65 + 48);
      LOBYTE(v112) = *v67;
      v116 = *(v67 + 1);
    }

    v118 = v116 >> 8;
LABEL_122:
    v119 = (v116 << 16) | (v118 << 24) | v115 | (v112 << 8);
    HIDWORD(v120) = (461845907 * ((380141568 * v119) | ((-862048943 * v119) >> 17))) ^ *(v65 + 40);
    LODWORD(v120) = HIDWORD(v120);
    v121 = 5 * (v120 >> 19) - 430675100;
    *(v65 + 40) = v121;
    v122 = &v67[-v109 + 4];
    v123 = &v122[v113 - 4];
    while (v122 < v123)
    {
      v124 = *v122;
      v122 += 4;
      HIDWORD(v125) = (461845907 * ((380141568 * v124) | ((-862048943 * v124) >> 17))) ^ v121;
      LODWORD(v125) = HIDWORD(v125);
      v121 = 5 * (v125 >> 19) - 430675100;
      *(v65 + 40) = v121;
    }

    if (v114)
    {
      memcpy((v65 + 48), v123, v114);
    }

    *(v65 + 51) = v114;
    goto LABEL_128;
  }

  if (!v70)
  {
    v107 = +[NSAssertionHandler currentHandler];
    v108 = [NSString stringWithUTF8String:"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"];
    [v107 handleFailureInFunction:v108 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

    goto LABEL_129;
  }

  if (v70 != 1000)
  {
    goto LABEL_129;
  }

  v71 = *(v65 + 72);
  v72 = HIBYTE(v71);
  v73 = v71 & 0xFFFFFFFFFFFFFFLL;
  v74 = HIBYTE(v71) & 7;
  if (!v74)
  {
    goto LABEL_79;
  }

  v75 = 8 - v74;
  v76 = &v68[-(8 - v74)];
  if (v68 >= 8 - v74)
  {
    v77 = 8 * v74;
    v78 = v67;
    v79 = v73;
    do
    {
      v80 = *v78++;
      v79 |= v80 << v77;
      v77 += 8;
    }

    while (v77 != 64);
    v81 = *(v65 + 64) ^ v79;
    v82 = *(v65 + 48);
    v83 = *(v65 + 40) + v82;
    v84 = v83 ^ __ROR8__(v82, 51);
    v85 = *(v65 + 56) + v81;
    v86 = __ROR8__(v81, 48);
    v87 = (v85 ^ v86) + __ROR8__(v83, 32);
    v88 = v87 ^ __ROR8__(v85 ^ v86, 43);
    v89 = v85 + v84;
    *(v65 + 56) = __ROR8__(v89, 32);
    *(v65 + 64) = v88;
    *(v65 + 40) = v87 ^ v79;
    *(v65 + 48) = v89 ^ __ROR8__(v84, 47);
    v67 += v75;
    *(v65 + 72) = (v75 + v72) << 56;
    v69 = v76;
LABEL_79:
    if (v69 >= 8)
    {
      v91 = *(v65 + 40);
      v90 = *(v65 + 48);
      v93 = *(v65 + 56);
      v92 = *(v65 + 64);
      do
      {
        v94 = *v67;
        v67 += 8;
        v95 = v92 ^ v94;
        v96 = v91 + v90;
        v97 = v96 ^ __ROR8__(v90, 51);
        v98 = v93 + v95;
        v99 = __ROR8__(v95, 48);
        v100 = (v98 ^ v99) + __ROR8__(v96, 32);
        v92 = v100 ^ __ROR8__(v98 ^ v99, 43);
        v101 = v98 + v97;
        v90 = v101 ^ __ROR8__(v97, 47);
        v93 = __ROR8__(v101, 32);
        *(v65 + 56) = v93;
        *(v65 + 64) = v92;
        v91 = v100 ^ v94;
        *(v65 + 40) = v91;
        *(v65 + 48) = v90;
        v69 -= 8;
        v72 += 8;
      }

      while (v69 > 7);
    }

    v74 = 0;
  }

  if (v69)
  {
    v102 = 0;
    v103 = 0;
    v104 = v69;
    do
    {
      v105 = *v67++;
      v103 |= v105 << v102;
      v102 += 8;
      --v104;
    }

    while (v104);
    if (v74)
    {
      v106 = (v103 << (8 * v74)) | ((v69 + v72) << 56) | v73;
    }

    else
    {
      v106 = v103 | ((v69 + v72) << 56);
    }
  }

  else
  {
    if (v74)
    {
      goto LABEL_129;
    }

    v106 = v72 << 56;
  }

  *(v65 + 72) = v106;
LABEL_129:
}

void sub_1000FE36C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  memset(&v245[1] + 8, 0, 64);
  v5 = *(v4 + 32);
  *&v245[1] = v5;
  if (v5 > 3000)
  {
    if (v5 <= 4000)
    {
      if (v5 == 3001)
      {
        *(&v245[1] + 1) = sub_10004E46C((v4 + 40));
      }

      else if (v5 == 4000)
      {
        CC_MD5_Final(&v245[1] + 8, (v4 + 40));
      }
    }

    else
    {
      switch(v5)
      {
        case 4001:
          CC_SHA1_Final(&v245[1] + 8, (v4 + 40));
          break;
        case 4256:
          CC_SHA256_Final(&v245[1] + 8, (v4 + 40));
          break;
        case 4512:
          CC_SHA512_Final(&v245[1] + 8, (v4 + 40));
          break;
      }
    }

    goto LABEL_37;
  }

  if (v5 <= 1999)
  {
    if (v5)
    {
      if (v5 == 1000)
      {
        v6 = *(v4 + 72);
        v7 = *(v4 + 48);
        v8 = *(v4 + 64) ^ v6;
        v9 = *(v4 + 40) + v7;
        v10 = v9 ^ __ROR8__(v7, 51);
        v11 = *(v4 + 56) + v8;
        v12 = __ROR8__(v8, 48);
        v13 = (v11 ^ v12) + __ROR8__(v9, 32);
        v14 = v13 ^ __ROR8__(v11 ^ v12, 43);
        v15 = v11 + v10;
        v16 = v15 ^ __ROR8__(v10, 47);
        v17 = (v13 ^ v6) + v16;
        v18 = v17 ^ __ROR8__(v16, 51);
        v19 = (__ROR8__(v15, 32) ^ 0xFFLL) + v14;
        v20 = __ROR8__(v14, 48);
        v21 = __ROR8__(v17, 32) + (v19 ^ v20);
        v22 = v21 ^ __ROR8__(v19 ^ v20, 43);
        v23 = v18 + v19;
        v24 = v23 ^ __ROR8__(v18, 47);
        v25 = v24 + v21;
        v26 = v25 ^ __ROR8__(v24, 51);
        v27 = __ROR8__(v23, 32) + v22;
        v28 = __ROR8__(v22, 48);
        v29 = __ROR8__(v25, 32) + (v27 ^ v28);
        v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
        v31 = v26 + v27;
        v32 = v31 ^ __ROR8__(v26, 47);
        v33 = v32 + v29;
        v34 = v33 ^ __ROR8__(v32, 51);
        v35 = __ROR8__(v31, 32) + v30;
        v36 = __ROR8__(v30, 48);
        v37 = __ROR8__(v33, 32) + (v35 ^ v36);
        v38 = v37 ^ __ROR8__(v35 ^ v36, 43);
        v39 = v34 + v35;
        v40 = v39 ^ __ROR8__(v34, 47);
        *(v4 + 40) = v37;
        *(v4 + 48) = v40;
        *(v4 + 56) = __ROR8__(v39, 32);
        *(v4 + 64) = v38;
        *(&v245[1] + 1) = v40 ^ v37 ^ __ROR8__(v39, 32) ^ v38;
      }
    }

    else
    {
      v42 = +[NSAssertionHandler currentHandler];
      v43 = [NSString stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
      [v42 handleFailureInFunction:v43 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
    }

    goto LABEL_37;
  }

  if (v5 == 2000)
  {
    v44 = *(v4 + 51);
    switch(v44)
    {
      case 1:
        v45 = *(v4 + 48);
        break;
      case 2:
        v45 = *(v4 + 48);
        break;
      case 3:
        v45 = *(v4 + 48) | (*(v4 + 50) << 16);
        break;
      default:
        v54 = *(v4 + 40);
        goto LABEL_36;
    }

    v54 = (461845907 * ((380141568 * v45) | ((-862048943 * v45) >> 17))) ^ *(v4 + 40);
LABEL_36:
    v55 = -2048144789 * (v54 ^ *(v4 + 44) ^ ((v54 ^ *(v4 + 44)) >> 16));
    v56 = (-1028477387 * (v55 ^ (v55 >> 13))) ^ ((-1028477387 * (v55 ^ (v55 >> 13))) >> 16);
    *(v4 + 40) = v56;
    DWORD2(v245[1]) = v56;
    goto LABEL_37;
  }

  if (v5 == 3000)
  {
    if (*(v4 + 44))
    {
      v41 = vaddvq_s32(vorrq_s8(vshlq_u32(*(v4 + 48), xmmword_10016AE40), vshlq_u32(*(v4 + 48), xmmword_10016AE30)));
    }

    else
    {
      v41 = *(v4 + 56) + 374761393;
    }

    v46 = *(v4 + 40) + v41;
    v47 = (v4 + 64);
    v48 = *(v4 + 80) & 0xF;
    if (v48 >= 4)
    {
      do
      {
        v49 = *v47++;
        HIDWORD(v50) = v46 - 1028477379 * v49;
        LODWORD(v50) = HIDWORD(v50);
        v46 = 668265263 * (v50 >> 15);
        v48 -= 4;
      }

      while (v48 > 3);
    }

    for (; v48; --v48)
    {
      v51 = *v47;
      v47 = (v47 + 1);
      HIDWORD(v52) = v46 + 374761393 * v51;
      LODWORD(v52) = HIDWORD(v52);
      v46 = -1640531535 * (v52 >> 21);
    }

    v53 = -1028477379 * ((-2048144777 * (v46 ^ (v46 >> 15))) ^ ((-2048144777 * (v46 ^ (v46 >> 15))) >> 13));
    DWORD2(v245[1]) = v53 ^ HIWORD(v53);
  }

LABEL_37:
  buf = v245[1];
  v247 = v245[2];
  v248 = v245[3];
  v249 = v245[4];
  v250 = *&v245[5];
  if (*&v245[1] > 3999)
  {
    if (*&v245[1] > 4255)
    {
      if (*&v245[1] == 4256)
      {
        v98 = &buf + 8;
        v99 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v100 = v99;
        for (i = 0; i != 64; i += 2)
        {
          v102 = *v98++;
          v103 = &v99[i];
          *v103 = a0123456789abcd[v102 >> 4];
          v103[1] = a0123456789abcd[v102 & 0xF];
        }

        v69 = [NSString alloc];
        v70 = v100;
        v71 = 64;
      }

      else
      {
        if (*&v245[1] != 4512)
        {
          goto LABEL_102;
        }

        v76 = &buf + 8;
        v77 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v78 = v77;
        for (j = 0; j != 128; j += 2)
        {
          v80 = *v76++;
          v81 = &v77[j];
          *v81 = a0123456789abcd[v80 >> 4];
          v81[1] = a0123456789abcd[v80 & 0xF];
        }

        v69 = [NSString alloc];
        v70 = v78;
        v71 = 128;
      }
    }

    else if (*&v245[1] == 4000)
    {
      v88 = &buf + 8;
      v89 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v90 = v89;
      for (k = 0; k != 32; k += 2)
      {
        v92 = *v88++;
        v93 = &v89[k];
        *v93 = a0123456789abcd[v92 >> 4];
        v93[1] = a0123456789abcd[v92 & 0xF];
      }

      v69 = [NSString alloc];
      v70 = v90;
      v71 = 32;
    }

    else
    {
      if (*&v245[1] != 4001)
      {
        goto LABEL_102;
      }

      v63 = &buf + 8;
      v64 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v65 = v64;
      for (m = 0; m != 40; m += 2)
      {
        v67 = *v63++;
        v68 = &v64[m];
        *v68 = a0123456789abcd[v67 >> 4];
        v68[1] = a0123456789abcd[v67 & 0xF];
      }

      v69 = [NSString alloc];
      v70 = v65;
      v71 = 40;
    }

LABEL_83:
    v87 = [v69 initWithBytesNoCopy:v70 length:v71 encoding:4 freeWhenDone:1];
    goto LABEL_84;
  }

  if (*&v245[1] > 2999)
  {
    if (*&v245[1] == 3000)
    {
      LODWORD(v251[0]) = bswap32(DWORD2(buf));
      v94 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v95 = 0;
      v96 = v94 + 1;
      do
      {
        v97 = *(v251 + v95);
        *(v96 - 1) = a0123456789abcd[v97 >> 4];
        *v96 = a0123456789abcd[v97 & 0xF];
        v96 += 2;
        ++v95;
      }

      while (v95 != 4);
      v69 = [NSString alloc];
      v70 = v94;
      v71 = 8;
    }

    else
    {
      if (*&v245[1] != 3001)
      {
        goto LABEL_102;
      }

      v251[0] = bswap64(*(&buf + 1));
      v72 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v73 = 0;
      v74 = v72 + 1;
      do
      {
        v75 = *(v251 + v73);
        *(v74 - 1) = a0123456789abcd[v75 >> 4];
        *v74 = a0123456789abcd[v75 & 0xF];
        v74 += 2;
        ++v73;
      }

      while (v73 != 8);
      v69 = [NSString alloc];
      v70 = v72;
      v71 = 16;
    }

    goto LABEL_83;
  }

  if (*&v245[1] == 1000)
  {
    v82 = *(&buf + 1);
    if (*(&buf + 1))
    {
      v83 = v252 + 1;
      quot = *(&buf + 1);
      do
      {
        v85 = lldiv(quot, 10);
        quot = v85.quot;
        if (v85.rem >= 0)
        {
          LOBYTE(v86) = v85.rem;
        }

        else
        {
          v86 = -v85.rem;
        }

        *(v83 - 2) = v86 + 48;
        v62 = (v83 - 2);
        --v83;
      }

      while (v85.quot);
      if (v82 < 0)
      {
        *(v83 - 2) = 45;
        v62 = (v83 - 2);
      }

      v61 = (v252 - v62);
      goto LABEL_73;
    }

    goto LABEL_111;
  }

  if (*&v245[1] != 2000)
  {
LABEL_102:
    v143 = +[NSAssertionHandler currentHandler];
    v144 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v143 handleFailureInFunction:v144 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v104 = &stru_1001E0388;
    goto LABEL_85;
  }

  v57 = DWORD2(buf);
  if (DWORD2(buf))
  {
    v58 = v252;
    do
    {
      v59 = ldiv(v57, 10);
      v57 = v59.quot;
      if (v59.rem >= 0)
      {
        LOBYTE(v60) = v59.rem;
      }

      else
      {
        v60 = -v59.rem;
      }

      *(v58 - 1) = v60 + 48;
      v58 = (v58 - 1);
    }

    while (v59.quot);
    v61 = (v252 - v58);
    v62 = v58;
LABEL_73:
    v87 = CFStringCreateWithBytes(0, v62, v61, 0x8000100u, 0);
LABEL_84:
    v104 = v87;
    goto LABEL_85;
  }

LABEL_111:
  v104 = @"0";
LABEL_85:
  v105 = *(*(a1 + 48) + 8);
  memset(&v245[1], 0, 72);
  v106 = *(v105 + 32);
  *&v245[1] = v106;
  if (v106 > 3000)
  {
    if (v106 <= 4000)
    {
      if (v106 == 3001)
      {
        *(&v245[1] + 1) = sub_10004E46C((v105 + 40));
      }

      else if (v106 == 4000)
      {
        CC_MD5_Final(&v245[1] + 8, (v105 + 40));
      }
    }

    else
    {
      switch(v106)
      {
        case 4001:
          CC_SHA1_Final(&v245[1] + 8, (v105 + 40));
          break;
        case 4256:
          CC_SHA256_Final(&v245[1] + 8, (v105 + 40));
          break;
        case 4512:
          CC_SHA512_Final(&v245[1] + 8, (v105 + 40));
          break;
      }
    }

    goto LABEL_123;
  }

  if (v106 <= 1999)
  {
    if (v106)
    {
      if (v106 == 1000)
      {
        v107 = *(v105 + 72);
        v108 = *(v105 + 48);
        v109 = *(v105 + 64) ^ v107;
        v110 = *(v105 + 40) + v108;
        v111 = v110 ^ __ROR8__(v108, 51);
        v112 = *(v105 + 56) + v109;
        v113 = __ROR8__(v109, 48);
        v114 = (v112 ^ v113) + __ROR8__(v110, 32);
        v115 = v114 ^ __ROR8__(v112 ^ v113, 43);
        v116 = v112 + v111;
        v117 = v116 ^ __ROR8__(v111, 47);
        v118 = (v114 ^ v107) + v117;
        v119 = v118 ^ __ROR8__(v117, 51);
        v120 = (__ROR8__(v116, 32) ^ 0xFFLL) + v115;
        v121 = __ROR8__(v115, 48);
        v122 = __ROR8__(v118, 32) + (v120 ^ v121);
        v123 = v122 ^ __ROR8__(v120 ^ v121, 43);
        v124 = v119 + v120;
        v125 = v124 ^ __ROR8__(v119, 47);
        v126 = v125 + v122;
        v127 = v126 ^ __ROR8__(v125, 51);
        v128 = __ROR8__(v124, 32) + v123;
        v129 = __ROR8__(v123, 48);
        v130 = __ROR8__(v126, 32) + (v128 ^ v129);
        v131 = v130 ^ __ROR8__(v128 ^ v129, 43);
        v132 = v127 + v128;
        v133 = v132 ^ __ROR8__(v127, 47);
        v134 = v133 + v130;
        v135 = v134 ^ __ROR8__(v133, 51);
        v136 = __ROR8__(v132, 32) + v131;
        v137 = __ROR8__(v131, 48);
        v138 = __ROR8__(v134, 32) + (v136 ^ v137);
        v139 = v138 ^ __ROR8__(v136 ^ v137, 43);
        v140 = v135 + v136;
        v141 = v140 ^ __ROR8__(v135, 47);
        *(v105 + 40) = v138;
        *(v105 + 48) = v141;
        *(v105 + 56) = __ROR8__(v140, 32);
        *(v105 + 64) = v139;
        *(&v245[1] + 1) = v141 ^ v138 ^ __ROR8__(v140, 32) ^ v139;
      }
    }

    else
    {
      v145 = +[NSAssertionHandler currentHandler];
      v146 = [NSString stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
      [v145 handleFailureInFunction:v146 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
    }

    goto LABEL_123;
  }

  if (v106 == 2000)
  {
    v147 = *(v105 + 51);
    switch(v147)
    {
      case 1:
        v148 = *(v105 + 48);
        break;
      case 2:
        v148 = *(v105 + 48);
        break;
      case 3:
        v148 = *(v105 + 48) | (*(v105 + 50) << 16);
        break;
      default:
        v157 = *(v105 + 40);
        goto LABEL_122;
    }

    v157 = (461845907 * ((380141568 * v148) | ((-862048943 * v148) >> 17))) ^ *(v105 + 40);
LABEL_122:
    v158 = -2048144789 * (v157 ^ *(v105 + 44) ^ ((v157 ^ *(v105 + 44)) >> 16));
    v159 = (-1028477387 * (v158 ^ (v158 >> 13))) ^ ((-1028477387 * (v158 ^ (v158 >> 13))) >> 16);
    *(v105 + 40) = v159;
    DWORD2(v245[1]) = v159;
    goto LABEL_123;
  }

  if (v106 == 3000)
  {
    if (*(v105 + 44))
    {
      v142 = vaddvq_s32(vorrq_s8(vshlq_u32(*(v105 + 48), xmmword_10016AE40), vshlq_u32(*(v105 + 48), xmmword_10016AE30)));
    }

    else
    {
      v142 = *(v105 + 56) + 374761393;
    }

    v149 = *(v105 + 40) + v142;
    v150 = (v105 + 64);
    v151 = *(v105 + 80) & 0xF;
    if (v151 >= 4)
    {
      do
      {
        v152 = *v150++;
        HIDWORD(v153) = v149 - 1028477379 * v152;
        LODWORD(v153) = HIDWORD(v153);
        v149 = 668265263 * (v153 >> 15);
        v151 -= 4;
      }

      while (v151 > 3);
    }

    for (; v151; --v151)
    {
      v154 = *v150;
      v150 = (v150 + 1);
      HIDWORD(v155) = v149 + 374761393 * v154;
      LODWORD(v155) = HIDWORD(v155);
      v149 = -1640531535 * (v155 >> 21);
    }

    v156 = -1028477379 * ((-2048144777 * (v149 ^ (v149 >> 15))) ^ ((-2048144777 * (v149 ^ (v149 >> 15))) >> 13));
    DWORD2(v245[1]) = v156 ^ HIWORD(v156);
  }

LABEL_123:
  buf = v245[1];
  v247 = v245[2];
  v248 = v245[3];
  v249 = v245[4];
  v250 = *&v245[5];
  if (*&v245[1] > 3999)
  {
    if (*&v245[1] > 4255)
    {
      if (*&v245[1] == 4256)
      {
        v201 = &buf + 8;
        v202 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v203 = v202;
        for (n = 0; n != 64; n += 2)
        {
          v205 = *v201++;
          v206 = &v202[n];
          *v206 = a0123456789abcd[v205 >> 4];
          v206[1] = a0123456789abcd[v205 & 0xF];
        }

        v172 = [NSString alloc];
        v173 = v203;
        v174 = 64;
      }

      else
      {
        if (*&v245[1] != 4512)
        {
          goto LABEL_202;
        }

        v179 = &buf + 8;
        v180 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v181 = v180;
        for (ii = 0; ii != 128; ii += 2)
        {
          v183 = *v179++;
          v184 = &v180[ii];
          *v184 = a0123456789abcd[v183 >> 4];
          v184[1] = a0123456789abcd[v183 & 0xF];
        }

        v172 = [NSString alloc];
        v173 = v181;
        v174 = 128;
      }
    }

    else if (*&v245[1] == 4000)
    {
      v191 = &buf + 8;
      v192 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v193 = v192;
      for (jj = 0; jj != 32; jj += 2)
      {
        v195 = *v191++;
        v196 = &v192[jj];
        *v196 = a0123456789abcd[v195 >> 4];
        v196[1] = a0123456789abcd[v195 & 0xF];
      }

      v172 = [NSString alloc];
      v173 = v193;
      v174 = 32;
    }

    else
    {
      if (*&v245[1] != 4001)
      {
        goto LABEL_202;
      }

      v166 = &buf + 8;
      v167 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v168 = v167;
      for (kk = 0; kk != 40; kk += 2)
      {
        v170 = *v166++;
        v171 = &v167[kk];
        *v171 = a0123456789abcd[v170 >> 4];
        v171[1] = a0123456789abcd[v170 & 0xF];
      }

      v172 = [NSString alloc];
      v173 = v168;
      v174 = 40;
    }

LABEL_169:
    v190 = [v172 initWithBytesNoCopy:v173 length:v174 encoding:4 freeWhenDone:1];
    goto LABEL_170;
  }

  if (*&v245[1] > 2999)
  {
    if (*&v245[1] == 3000)
    {
      LODWORD(v251[0]) = bswap32(DWORD2(buf));
      v197 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v198 = 0;
      v199 = v197 + 1;
      do
      {
        v200 = *(v251 + v198);
        *(v199 - 1) = a0123456789abcd[v200 >> 4];
        *v199 = a0123456789abcd[v200 & 0xF];
        v199 += 2;
        ++v198;
      }

      while (v198 != 4);
      v172 = [NSString alloc];
      v173 = v197;
      v174 = 8;
    }

    else
    {
      if (*&v245[1] != 3001)
      {
        goto LABEL_202;
      }

      v251[0] = bswap64(*(&buf + 1));
      v175 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v176 = 0;
      v177 = v175 + 1;
      do
      {
        v178 = *(v251 + v176);
        *(v177 - 1) = a0123456789abcd[v178 >> 4];
        *v177 = a0123456789abcd[v178 & 0xF];
        v177 += 2;
        ++v176;
      }

      while (v176 != 8);
      v172 = [NSString alloc];
      v173 = v175;
      v174 = 16;
    }

    goto LABEL_169;
  }

  if (*&v245[1] == 1000)
  {
    v185 = *(&buf + 1);
    if (*(&buf + 1))
    {
      v186 = v252 + 1;
      v187 = *(&buf + 1);
      do
      {
        v188 = lldiv(v187, 10);
        v187 = v188.quot;
        if (v188.rem >= 0)
        {
          LOBYTE(v189) = v188.rem;
        }

        else
        {
          v189 = -v188.rem;
        }

        *(v186 - 2) = v189 + 48;
        v165 = (v186 - 2);
        --v186;
      }

      while (v188.quot);
      if (v185 < 0)
      {
        *(v186 - 2) = 45;
        v165 = (v186 - 2);
      }

      v164 = (v252 - v165);
      goto LABEL_159;
    }

    goto LABEL_203;
  }

  if (*&v245[1] != 2000)
  {
LABEL_202:
    v231 = +[NSAssertionHandler currentHandler];
    v232 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v231 handleFailureInFunction:v232 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v207 = &stru_1001E0388;
    goto LABEL_171;
  }

  v160 = DWORD2(buf);
  if (DWORD2(buf))
  {
    v161 = v252;
    do
    {
      v162 = ldiv(v160, 10);
      v160 = v162.quot;
      if (v162.rem >= 0)
      {
        LOBYTE(v163) = v162.rem;
      }

      else
      {
        v163 = -v162.rem;
      }

      *(v161 - 1) = v163 + 48;
      v161 = (v161 - 1);
    }

    while (v162.quot);
    v164 = (v252 - v161);
    v165 = v161;
LABEL_159:
    v190 = CFStringCreateWithBytes(0, v165, v164, 0x8000100u, 0);
LABEL_170:
    v207 = v190;
    goto LABEL_171;
  }

LABEL_203:
  v207 = @"0";
LABEL_171:
  v244[0] = @"cloud-ids";
  v208 = [*(a1 + 32) containerCloudID];
  v243 = v208;
  v209 = [NSArray arrayWithObjects:&v243 count:1];
  v244[1] = @"artwork";
  *&v245[0] = v209;
  v241[0] = @"file-size";
  v210 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) assetFileSize]);
  v241[1] = @"hash-values";
  v242[0] = v210;
  v239[0] = @"md5";
  v239[1] = @"sha256";
  v235 = v207;
  v236 = v104;
  v240[0] = v104;
  v240[1] = v207;
  v211 = [NSDictionary dictionaryWithObjects:v240 forKeys:v239 count:2];
  v242[1] = v211;
  v212 = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2];
  *(&v245[0] + 1) = v212;
  v213 = [NSDictionary dictionaryWithObjects:v245 forKeys:v244 count:2];

  v237[0] = @"dsid";
  v214 = [*(a1 + 32) dsid];
  v238[0] = v214;
  v237[1] = @"cuid";
  v215 = [*(a1 + 32) cuid];
  v238[1] = v215;
  v237[2] = @"troveid";
  v216 = [*(a1 + 32) troveID];
  v237[3] = @"payload";
  v238[2] = v216;
  v238[3] = v213;
  v217 = [NSDictionary dictionaryWithObjects:v238 forKeys:v237 count:4];

  v218 = [*(a1 + 32) _requestWithURL:0 URLBagKey:ICURLBagKeyCloudAssetsUpdate timeoutInterval:v217 additionalBodyFields:60.0];
  if (v218)
  {
    v234 = v3;
    v219 = [*(a1 + 32) _responseBodyForRequest:v218 retryTimeout:@"initiate asset change" debugName:180.0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v220 = [v219 objectForKey:@"back-off-delay-in-ms"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v221 = [v220 unsignedIntValue];
      }

      else
      {
        v221 = 0;
      }

      v224 = [v219 objectForKey:@"upload-responses-url"];
      objc_opt_class();
      v233 = v221;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v224 length])
      {
        v225 = [NSURL URLWithString:v224];
      }

      else
      {
        v225 = 0;
      }

      v226 = [v219 objectForKey:@"download-requests-url"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v226 length])
      {
        v223 = [NSURL URLWithString:v226];
      }

      else
      {
        v223 = 0;
      }

      if (v223)
      {
        if (v225)
        {
          if (v233)
          {
            v227 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v233;
              _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "Backing off before sending downloadRequestsRequest for %u ms", &buf, 8u);
            }

            usleep(1000 * v233);
          }

          [*(a1 + 32) _downloadRequestsFromURL:v223 uploadResponsesURL:v225];
          v228 = v223;
          v223 = v225;
          goto LABEL_200;
        }

        v229 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v229, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf) = 0;
          v230 = "Failed to get uploadResponsesURL";
          goto LABEL_198;
        }

        goto LABEL_199;
      }

      v223 = v225;
    }

    else
    {
      v223 = 0;
    }

    v229 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v229, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      v230 = "Failed to get downloadRequestsURL";
LABEL_198:
      _os_log_impl(&_mh_execute_header, v229, OS_LOG_TYPE_FAULT, v230, &buf, 2u);
    }

LABEL_199:

    [*(a1 + 32) setStatus:2];
    v228 = [NSError ic_cloudClientErrorWithCode:2014 userInfo:0];
    [*(a1 + 32) setError:v228];
LABEL_200:

    v3 = v234;
    goto LABEL_201;
  }

  v222 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_ERROR, "SagaUploadPlaylistArtworkOperation failed to create url request - aborting", &buf, 2u);
  }

  [*(a1 + 32) setStatus:3];
LABEL_201:
}

_DWORD *sub_1000FF8A0(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

char *sub_1000FFA44(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1001007C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICRemoteRequestOperationExecutionResponse alloc];
  v5 = [*(a1 + 32) response];
  v6 = [v3 msv_errorByRemovingUnsafeUserInfo];

  v7 = [v4 initWithRemoteRequestOperationResponse:v5 remoteRequestOperationError:v6];
  (*(*(a1 + 40) + 16))();
}

void *sub_1001008F0(void *result)
{
  v2 = result[4];
  if (*(v2 + 16) == 1)
  {
    v3 = result;
    *(v2 + 16) = 0;
    [*(result[4] + 24) invalidate];
    v4 = *(v3[4] + 24);

    return [v4 setDelegate:0];
  }

  return result;
}

void *sub_1001009C4(void *result)
{
  v2 = result[4];
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = result;
    *(v2 + 16) = 1;
    [*(result[4] + 24) setDelegate:?];
    v4 = *(v3[4] + 24);

    return [v4 resume];
  }

  return result;
}

void sub_100100C2C(id a1)
{
  qword_100213DB0 = [[CloudRemoteRequestOperationExecutionServiceListener alloc] _init];

  _objc_release_x1();
}

void sub_100100D4C(uint64_t a1, void *a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2 == 0;
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setError:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10010105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100101090(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 responseCode] == 200)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 databaseRevision];
  }

  v3 = [v4 error];
  [*(a1 + 32) setError:v3];

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100101CC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_100101D98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_100101E44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForKey:ML3ContainerPropertySmartIsFolder];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [v3 writeUInt8:v6 withCode:1634029643];
  if (*(a1 + 32))
  {
    v7 = +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
    v8 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100101FD0;
    v12[3] = &unk_1001DE390;
    v13 = v7;
    v14 = v3;
    v9 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = v10;
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_100101FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasInfoForProperty:v5])
  {
    [*(a1 + 32) elementCodeForProperty:v5];
    [*(a1 + 32) valueTypeForProperty:v5];
    v7 = *(a1 + 40);
    ICDAAPUtilitiesWriteProperty();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No DAAP code found for container property: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_1001020E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100102180;
  v6[3] = &unk_1001DE3B8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateCloudItemIDsUsingBlock:v6];
}

uint64_t sub_100102180(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 2)
  {
    v8 = v5;
    v5 = [*(a1 + 32) writeString:v5 withCode:1634025833];
  }

  else if (a3 == 1)
  {
    v8 = v5;
    v5 = [*(a1 + 32) writeUInt64:objc_msgSend(v5 withCode:{"unsignedLongLongValue"), 1634025833}];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v8 = v5;
    v5 = [*(a1 + 32) writeUInt32:objc_msgSend(v5 withCode:{"unsignedIntValue"), 1835624804}];
  }

  v6 = v8;
LABEL_8:

  return _objc_release_x1(v5, v6);
}

os_log_t sub_1001026EC()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "Default");

  return v0;
}

os_log_t sub_100102724()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "Artwork");

  return v0;
}

os_log_t sub_10010275C()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");

  return v0;
}

os_log_t sub_100102794()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");

  return v0;
}

os_log_t sub_1001027CC()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "Connections");

  return v0;
}

os_log_t sub_100102804()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "Push");

  return v0;
}

os_log_t sub_10010283C()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "XPC");

  return v0;
}

os_log_t sub_100102874()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "XPC_Oversize");

  return v0;
}

os_log_t sub_1001028AC()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");

  return v0;
}

os_log_t sub_1001028E4()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");

  return v0;
}

os_log_t sub_10010291C()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");

  return v0;
}

os_log_t sub_100102954()
{
  v0 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");

  return v0;
}

uint64_t sub_100103380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100103398(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *&v4 = a2 * 0.99;
    v5 = WeakRetained;
    [WeakRetained setProgress:v4];
    WeakRetained = v5;
  }
}

void sub_1001033F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ - Import failed with error = %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained supportedMediaKinds];
      v9 = [v8 componentsJoinedByString:{@", "}];

      v10 = [v5 musicLibrary];
      [v10 setJaliscoLastSupportedMediaKinds:v9];
    }
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
  v13 = v4;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100103554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v48 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_87;
  }

  v3 = a3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = (a2 + 16);
  do
  {
    v9 = *(v8 - 4);
    if (v9 != 1634026357)
    {
      if (v9 != 1634951787)
      {
        if (v9 != 1835625572)
        {
          goto LABEL_80;
        }

        v10 = v8[1];
        if (v10 != 1)
        {
          if (v10 == 3)
          {
            v45 = v5;
            v11 = [[NSData alloc] initWithBytesNoCopy:*(v8 - 1) length:*v8 freeWhenDone:0];
          }

          else
          {
            if (v10 != 2)
            {
              v22 = 0;
              goto LABEL_79;
            }

            v45 = v5;
            v11 = [[NSString alloc] initWithBytesNoCopy:*(v8 - 1) length:*v8 encoding:4 freeWhenDone:0];
          }

          v5 = v45;
          v22 = v11;
LABEL_79:

          v5 = v22;
          goto LABEL_80;
        }

        v22 = 0;
        v23 = *v8;
        if (*v8 <= 3)
        {
          if (v23 != 1)
          {
            if (v23 != 2)
            {
              goto LABEL_79;
            }

            v47 = v5;
            v24 = [NSNumber alloc];
            v25 = *(v8 - 1);
            v26 = *v8;
            v27 = 0xFFFFLL;
            if (*v8 > 3)
            {
              if (v26 == 4)
              {
                v28 = *(v25 + 1);
                goto LABEL_67;
              }

              if (v26 == 8)
              {
                v28 = *(v25 + 3);
                goto LABEL_67;
              }
            }

            else if (v26 == 1)
            {
              v27 = *v25;
            }

            else if (v26 == 2)
            {
              v28 = *v25;
LABEL_67:
              v27 = bswap32(v28) >> 16;
            }

            v42 = [v24 initWithUnsignedShort:v27];
            goto LABEL_78;
          }

          v47 = v5;
          v33 = [NSNumber alloc];
          v34 = *(v8 - 1);
          v35 = *v8;
          v36 = 255;
          if (*v8 > 3)
          {
            if (v35 == 4)
            {
              v34 += 3;
              goto LABEL_73;
            }

            if (v35 == 8)
            {
              v34 += 7;
              goto LABEL_73;
            }
          }

          else
          {
            if (v35 == 1)
            {
LABEL_73:
              v36 = *v34;
              goto LABEL_74;
            }

            if (v35 == 2)
            {
              ++v34;
              goto LABEL_73;
            }
          }

LABEL_74:
          v42 = [v33 initWithUnsignedChar:v36];
          goto LABEL_78;
        }

        if (v23 != 4)
        {
          if (v23 != 8)
          {
            goto LABEL_79;
          }

          v47 = v5;
          v29 = [NSNumber alloc];
          v30 = *(v8 - 1);
          v31 = *v8;
          v32 = -1;
          if (*v8 > 3)
          {
            if (v31 == 4)
            {
              v32 = bswap32(*v30);
            }

            else if (v31 == 8)
            {
              v32 = ((*v30 << 56) | (v30[1] << 48) | (v30[2] << 40) | (v30[3] << 32) | (v30[4] << 24) | (v30[5] << 16) | (v30[6] << 8)) + v30[7];
            }
          }

          else if (v31 == 1)
          {
            v32 = *v30;
          }

          else if (v31 == 2)
          {
            v32 = __rev16(*v30);
          }

          v42 = [v29 initWithUnsignedLongLong:v32];
LABEL_78:
          v22 = v42;
          v5 = v47;
          goto LABEL_79;
        }

        v47 = v5;
        v37 = [NSNumber alloc];
        v38 = *(v8 - 1);
        v39 = *v8;
        if (*v8 <= 3)
        {
          if (v39 == 1)
          {
            v40 = *v38;
          }

          else
          {
            v40 = 0xFFFFFFFFLL;
            if (v39 == 2)
            {
              v40 = __rev16(*v38);
            }
          }

          goto LABEL_77;
        }

        if (v39 == 4)
        {
          v41 = *v38;
        }

        else
        {
          v40 = 0xFFFFFFFFLL;
          if (v39 != 8)
          {
LABEL_77:
            v42 = [v37 initWithUnsignedLong:v40];
            goto LABEL_78;
          }

          v41 = v38[1];
        }

        v40 = bswap32(v41);
        goto LABEL_77;
      }

      v12 = *(*(a1 + 48) + 8);
      if (*(v12 + 24))
      {
        v13 = 1;
LABEL_43:
        *(v12 + 24) = v13;
        goto LABEL_80;
      }

      v15 = *(v8 - 1);
      v16 = *v8;
      v17 = -1;
      if (*v8 <= 3)
      {
        if (v16 == 1)
        {
          v17 = *v15;
        }

        else if (v16 == 2)
        {
          v17 = __rev16(*v15);
        }

        goto LABEL_42;
      }

      if (v16 == 4)
      {
        v21 = *v15;
      }

      else
      {
        if (v16 != 8)
        {
LABEL_42:
          v13 = v17 != 0;
          goto LABEL_43;
        }

        v21 = v15[1];
      }

      v17 = bswap32(v21);
      goto LABEL_42;
    }

    v46 = v5;
    if (v8[1] == 2)
    {
      v14 = [[NSString alloc] initWithBytesNoCopy:*(v8 - 1) length:*v8 encoding:4 freeWhenDone:0];
    }

    else
    {
      v14 = 0;
    }

    v18 = [*(a1 + 32) _chapterDataFromURL:v14];

    v19 = [NSURL URLWithString:v14];
    v20 = [v19 URLByDeletingLastPathComponent];

    v7 = v20;
    v6 = v18;
    v5 = v46;
LABEL_80:
    v8 += 4;
    --v3;
  }

  while (v3);
  if (v5 && v6)
  {
    v48 = v5;
    if (v7)
    {
      v43 = *(a1 + 40);
      v44 = [*(a1 + 32) _chapterArtworkURLsForData:v6 baseURL:v7];
      [v43 setObject:v44 forKey:v48];
    }
  }

  else
  {
    v48 = v5;
  }

LABEL_87:
}

void sub_1001049E4(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = *a3;
  v5 = a3[1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKey:v6];
    }
  }
}

void sub_1001052EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v5 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{subscription_store_item_id, media_type FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token JOIN item_store ON entity_pid = item_store.item_pid AND entity_type = ? JOIN item USING (item_pid) WHERE artwork_token IS NULL AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE380}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100105400;
  v9[3] = &unk_1001DF508;
  v6 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v6;
  v11 = v4;
  v7 = v4;
  [v5 enumerateRowsWithBlock:v9];
  v8 = [*(a1 + 40) artworkImporter];
  [v8 importCloudArtworkForRequests:v7];
}

void sub_100105400(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
  v4 = [v3 stringForColumnIndex:0];
  [(CloudArtworkImportRequest *)v6 setToken:v4];

  -[CloudArtworkImportRequest setCloudID:](v6, "setCloudID:", [v3 int64ForColumnIndex:1]);
  v5 = [v3 intForColumnIndex:2];

  [(CloudArtworkImportRequest *)v6 setMediaType:v5];
  [(CloudArtworkImportRequest *)v6 setArtworkType:1];
  [(CloudArtworkImportRequest *)v6 setAllowsCellularData:*(a1 + 48)];
  [*(a1 + 40) addObject:v6];
}

void sub_100105AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_destroyWeak((v53 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100105B24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100105B3C(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = *(a1[6] + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = *(*(a1[5] + 8) + 40);
  }

  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(a1[4] + 16);

  return v6();
}

void sub_100105BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained cloudArtworkInfoDictionaries];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v4 count];
    v8 = *(a1 + 40);
    *buf = 138543874;
    v55 = v6;
    v56 = 2048;
    v57 = v7;
    v58 = 2114;
    v59 = objc_opt_class();
    v9 = v59;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received %lu artwork info lookup dictionaries for lookup operation in  %{public}@ IDs.", buf, 0x20u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    v14 = ICArtworkInfoKeySagaID;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v14];
        [v2 removeObject:v17];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = a1;
  v39 = v10;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = v2;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    v22 = "com.apple.amp.itunescloudd";
    v23 = "Artwork";
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v42 + 1) + 8 * j);
        v26 = os_log_create(v22, v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = v20;
          v28 = v22;
          v29 = v40[5];
          v30 = v23;
          v31 = v18;
          v32 = objc_opt_class();
          v41 = v32;
          v33 = [v25 unsignedLongLongValue];
          *buf = 138543874;
          v55 = v29;
          v22 = v28;
          v20 = v27;
          v56 = 2114;
          v57 = v32;
          v18 = v31;
          v23 = v30;
          v58 = 2048;
          v59 = v33;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to fetch artwork info lookup in %{public}@ ID: %llu", buf, 0x20u);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v20);
  }

  if ([v18 count])
  {
    v50 = @"NSDebugDescription";
    v34 = [NSString stringWithFormat:@"%@ Failed to fetch artwork info lookup for cloud IDs: %@", v40[5], v18];
    v51 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v36 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v35];
    v37 = *(v40[8] + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;
  }

  (*(v40[6] + 16))();
}

void sub_100107114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100107148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100107160(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v29 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v31 = v10;
    v32 = 2048;
    v33 = v11;
    v34 = 2114;
    v35 = v29;
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = v16;
    v40 = 2048;
    v41 = v5;
    v42 = 2048;
    v43 = v17;
    v44 = 2048;
    v45 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = objc_opt_class();
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = v6;
      v22 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@] failed with error: %{public}@", buf, 0x16u);
    }
  }

  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v5;
  v25 = v5;

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v6;
  v28 = v6;

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001075A8(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v28 = a1;
  v27 = a2;
  v35 = a3;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableSet);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v9;
  v36 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v36)
  {
    v26 = a4;
    v30 = 0;
    v33 = *v48;
    v34 = v10;
    v32 = ML3TrackPropertySubscriptionStoreItemID;
    v29 = ML3TrackPropertyStorePlaylistID;
    v12 = ICPushNotificationMessage_ptr;
    v13 = ICPushNotificationMessage_ptr;
    obj = v11;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        v16 = [v12[274] predicateWithProperty:v32 equalToInt64:{objc_msgSend(v15, "longLongValue", v26)}];
        v17 = [v13[285] allItemsQueryWithLibrary:v35 predicate:v16 orderingTerms:&__NSArray0__struct usingSections:0];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100107A54;
        v45[3] = &unk_1001DED58;
        v18 = v34;
        v46 = v18;
        [v17 enumeratePersistentIDsUsingBlock:v45];
        if (![v18 count])
        {
          v19 = [v12[274] predicateWithProperty:v29 equalToInt64:{objc_msgSend(v15, "longLongValue")}];

          v20 = [v13[285] allItemsQueryWithLibrary:v35 predicate:v19 orderingTerms:&__NSArray0__struct usingSections:0];

          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100107AB4;
          v43[3] = &unk_1001DED58;
          v44 = v18;
          [v20 enumeratePersistentIDsUsingBlock:v43];

          v30 = 1;
          v17 = v20;
          v16 = v19;
        }

        v12 = ICPushNotificationMessage_ptr;
        v13 = ICPushNotificationMessage_ptr;
      }

      v11 = obj;
      v36 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v36);

    a4 = v26;
    v10 = v34;
    if (v30)
    {
      v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v22 = [v18 count];
      *buf = 138543618;
      v52 = v26;
      v53 = 2048;
      v54 = v22;
      v23 = "[%{public}@] Found %lu track(s) to update in_my_library (based on album store id)...";
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_17;
  }

  v24 = [v10 count];
  *buf = 138543618;
  v52 = a4;
  v53 = 2048;
  v54 = v24;
  v23 = "[%{public}@] Found %lu track(s) to update in_my_library...";
LABEL_16:
  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
LABEL_17:

  if ([v10 count])
  {
    v25 = sub_10013FB04(v28);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100107B14;
    v37[3] = &unk_1001DE588;
    v38 = v27;
    v39 = v10;
    v42 = v25;
    v40 = v35;
    v41 = a4;
    [v40 performDatabaseTransactionWithBlock:v37];
  }
}

void sub_100107A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_100107AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_100107B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v5 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100107CB8;
  v13[3] = &unk_1001DE560;
  v16 = &v19;
  v6 = v3;
  v14 = v6;
  v18 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v15 = v7;
  v17 = v8;
  [v5 enumerateObjectsUsingBlock:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100107F5C;
  v11[3] = &unk_1001DEF00;
  v12 = *(a1 + 48);
  [v6 enqueueBlockForTransactionCommit:v11];
  v9 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_100107CB8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v31 = v5;
  v7 = [NSArray arrayWithObjects:&v31 count:1];
  v23 = 0;
  v8 = [v6 executeUpdate:@"UPDATE item_store set store_saga_id = store_saga_id WHERE item_pid = ?" withParameters:v7 error:&v23];
  v9 = v23;
  *(*(*(a1 + 48) + 8) + 24) = v8;

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    goto LABEL_6;
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_4;
  }

  v10 = *(a1 + 32);
  v30[0] = &off_1001ED930;
  v30[1] = v5;
  v11 = [NSArray arrayWithObjects:v30 count:2];
  v22 = v9;
  LOBYTE(v10) = [v10 executeUpdate:@"UPDATE item SET keep_local = ? WHERE item_pid = ? AND in_my_library = 1 AND media_type IN (8 withParameters:1032)" error:{v11, &v22}];
  v12 = v22;

  *(*(*(a1 + 48) + 8) + 24) = v10;
  v9 = v12;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_4:
    +[ML3Track incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3Track, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", *(a1 + 40), [v5 longLongValue], 0, 0, *(a1 + 32));
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 56);
      v15 = [v5 longLongValue];
      *buf = 138543618;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      v16 = "[%{public}@] Updated in_my_library for track with persistent ID %lld";
      v17 = v13;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
    }
  }

  else
  {
LABEL_6:
    *a3 = 1;
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 56);
      v21 = [v5 longLongValue];
      *buf = 138543874;
      v25 = v20;
      v26 = 2048;
      v27 = v21;
      v28 = 2114;
      v29 = v9;
      v16 = "[%{public}@] Failed to update in_my_library for track with persistent ID %lld with error: %{public}@";
      v17 = v13;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 32;
      goto LABEL_8;
    }
  }
}

id *sub_100107F5C(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] notifyEntitiesAddedOrRemoved];
    v3 = v2[4];

    return [v3 notifyContentsDidChange];
  }

  return result;
}

uint64_t sub_100108844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
  v24[0] = v7;
  v8 = ML3ContainerPropertyCloudGlobalID;
  v9 = [*(a1 + 40) allKeys];
  v10 = [NSSet setWithArray:v9];
  v11 = [ML3ContainmentPredicate predicateWithProperty:v8 values:v10];
  v24[1] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:2];
  v13 = [ML3AllCompoundPredicate predicateMatchingPredicates:v12];

  v14 = [*(a1 + 32) musicLibrary];
  v15 = [ML3Container queryWithLibrary:v14 predicate:v13];

  v23 = v8;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100108AA8;
  v20[3] = &unk_1001DE538;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v21 = v17;
  v22 = v18;
  [v15 enumeratePersistentIDsAndProperties:v16 usingBlock:v20];

  return 1;
}

void sub_100108AA8(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  if ([v5 length])
  {
    v6 = [*(a1 + 32) objectForKey:v5];
    v7 = v6;
    if (v6 && [v6 longLongValue] >= 1)
    {
      v8 = [*(a1 + 40) musicLibrary];
      v9 = [ML3Container newWithPersistentID:a2 inLibrary:v8];

      v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = a2;
        v13 = 2048;
        v14 = [v7 longLongValue];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating playlist with persistent-id %lld, setting cloud-id to %lld", &v11, 0x16u);
      }

      [v9 setValue:v7 forProperty:ML3ContainerPropertyStoreCloudID];
    }
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[ICDServer server];
  [v1 start];

  objc_autoreleasePoolPop(v0);
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];

  return 0;
}

void sub_100109704(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 104);
  v4 = a2;
  [v4 writeString:v3 withCode:1634357319];
  v5 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10010983C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 112);
  v4 = a2;
  [v4 writeString:v3 withCode:1936746852];
  [v4 writeUInt8:*(*(a1 + 32) + 120) withCode:1634357328];
}

void sub_10010A128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_10010A140(uint64_t a1, void *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  [a2 getValue:v5];
  result = *v5;
  v4 = *(*(a1 + 32) + 8);
  if (v5[0] > *(v4 + 24))
  {
    result = v5[0];
    *(v4 + 24) = result;
  }

  return result;
}

void sub_10010A338(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010A434;
  v11[3] = &unk_1001DE6C8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = *(&v10 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v13 = v10;
  v12 = v8;
  v14 = v3;
  v9 = v3;
  [v4 performDatabaseTransactionWithBlock:v11];
}

uint64_t sub_10010A434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) artworkToken];
  v31 = v4;
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  v6 = [v3 executeQuery:@"SELECT relative_path FROM artwork WHERE artwork_token = ?" withParameters:v5];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10010A6BC;
  v25 = sub_10010A6CC;
  v26 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10010A6D4;
  v17[3] = &unk_1001DE6A0;
  *&v7 = *(a1 + 40);
  *(&v7 + 1) = *(a1 + 48);
  v16 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v18 = v16;
  v19 = v10;
  v20 = &v21;
  [v6 enumerateRowsWithBlock:v17];
  if (v22[5])
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      v13 = v22[5];
      *buf = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to create artwork color analysis with error: %@", buf, 0x16u);
    }

    v14 = v22[5];
  }

  else
  {
    v14 = 0;
  }

  [*(a1 + 64) finishWithError:{v14, v16}];

  _Block_object_dispose(&v21, 8);
  return 1;
}

void sub_10010A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010A6BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010A6D4(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  else
  {
    v7 = [a2 stringForColumnIndex:0];
    v8 = [*(a1 + 32) originalArtworkDirectory];
    v24[0] = v8;
    v24[1] = v7;
    v9 = [NSArray arrayWithObjects:v24 count:2];
    v10 = [NSString pathWithComponents:v9];
    v11 = [NSURL fileURLWithPath:v10 isDirectory:0];

    [*(a1 + 40) _sizeForArtworkWithMediaType:objc_msgSend(*(a1 + 48) artworkType:{"artworkMediaType"), objc_msgSend(*(a1 + 48), "artworkType")}];
    v14 = [[MSVArtworkServiceColorAnalysisRequest alloc] initWithSourceURL:v11 preferredImageSize:{v12, v13}];
    v15 = +[MSVArtworkService sharedService];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10010A914;
    v21[3] = &unk_1001DE678;
    v16 = *(a1 + 56);
    v20 = *(a1 + 40);
    v17 = v20.i64[1];
    v18.i64[0] = v16;
    v18.i64[1] = *(a1 + 64);
    v19 = vzip2q_s64(v20, v18);
    v18.i64[1] = v20.i64[0];
    v23 = v19;
    v22 = v18;
    [v15 sendRequest:v14 completion:v21];
  }
}

void sub_10010A914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) assetURL];
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to create artwork color analysis for image at: %@", &v17, 0x16u);
    }
  }

  else
  {
    v7 = [[ML3ArtworkColorAnalysis alloc] initWithColorAnalysis:v5];
    v23 = @"ColorAnalysis";
    v10 = [&off_1001ED948 stringValue];
    v21 = v10;
    v11 = [v7 dictRepresentation];
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    [*(a1 + 32) setInterestDictionary:v13];
    v14 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) assetURL];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set interest dict for artwork for image at: %@", &v17, 0x16u);
    }
  }
}

void sub_10010AE5C(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) artworkDownloadOperationQueue];
    [v2 waitUntilAllOperationsAreFinished];
  }

  v3 = [*(a1 + 32) artworkDownloadOperationMap];
  [v3 removeAllObjects];
}

void sub_10010AF58(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkDownloadOperationQueue];
  [v1 increaseQualityOfService];
}

void sub_10010B024(uint64_t a1)
{
  v1 = [*(a1 + 32) artworkDownloadOperationQueue];
  [v1 decreaseQualityOfService];
}

void sub_10010B104(uint64_t a1)
{
  v2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"artwork_operation(%llu, %ld, %ld)", *(a1 + 40), *(a1 + 48), [*(a1 + 32) sourceType]);
  v3 = [*(a1 + 32) artworkDownloadOperationMap];
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 artworkType];
      if (v6 > 5)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1001DE728[v6];
      }

      v8 = v7;
      v9 = sub_10010B28C([v4 sourceType]);
      *buf = 138543874;
      v11 = v2;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decreasing priority of artwork download (identifier = '%{public}@' type = %{public}@ source = %{public}@)", buf, 0x20u);
    }

    [v4 decreasePriority];
  }
}

const __CFString *sub_10010B28C(uint64_t a1)
{
  v1 = @"ML3ArtworkSourceTypePurchaseHistory";
  v2 = @"ML3ArtworkSourceTypeStore";
  v3 = @"ML3ArtworkSourceTypeSubscriptionStoreContent";
  if (a1 != 600)
  {
    v3 = 0;
  }

  if (a1 != 500)
  {
    v2 = v3;
  }

  if (a1 != 400)
  {
    v1 = v2;
  }

  v4 = @"ML3ArtworkSourceTypeSync";
  if (a1 != 300)
  {
    v4 = 0;
  }

  if (a1 == 200)
  {
    v4 = @"ML3ArtworkSourceTypeCloud";
  }

  if (!a1)
  {
    v4 = @"ML3ArtworkSourceTypeUnknown";
  }

  if (a1 <= 399)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

void sub_10010B450(uint64_t a1)
{
  v44 = +[NSMutableArray array];
  v45 = +[NSMutableArray array];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = *(a1 + 32);
  v49 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v49)
  {
    v48 = *v61;
    v42 = ML3ContainerPropertyStoreCloudID;
    v43 = ML3TrackPropertyStoreSagaID;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v61 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v2 = *(*(&v60 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = +[NSAssertionHandler currentHandler];
          [v37 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"CloudArtworkImporter.m" lineNumber:208 description:{@"Request must be of type %@", objc_opt_class()}];
        }

        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"artwork_operation(%llu, %ld, %ld)", [v2 cloudID], objc_msgSend(v2, "artworkType"), objc_msgSend(*(a1 + 40), "sourceType"));
        v4 = [*(a1 + 40) artworkDownloadOperationMap];
        v5 = [v4 objectForKey:v3];

        if (v5)
        {
          v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [(CloudArtworkImportOperation *)v5 artworkType];
            if (v7 > 5)
            {
              v8 = 0;
            }

            else
            {
              v8 = off_1001DE728[v7];
            }

            v12 = v8;
            v13 = sub_10010B28C([(CloudArtworkImportOperation *)v5 sourceType]);
            *buf = 138543874;
            v65 = v3;
            v66 = 2114;
            v67 = v12;
            v68 = 2114;
            v69 = v13;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Boosting priority of artwork download (identifier = '%{public}@' type = %{public}@ source = %{public}@)", buf, 0x20u);
          }

          [(CloudArtworkImportOperation *)v5 increasePriority];
          goto LABEL_34;
        }

        v9 = [v2 cloudID];
        v51 = [v2 token];
        v52 = [v2 artworkType];
        v10 = [*(a1 + 40) sourceType];
        v47 = [v2 artworkVariantType];
        if (v52 == 2)
        {
LABEL_13:
          v11 = [v2 token];
          v50 = [NSURL URLWithString:v11];
LABEL_28:

          goto LABEL_29;
        }

        if (v10 == 600)
        {
          v14 = [v2 token];
          v11 = [NSURL URLWithString:v14];

          v15 = [v11 resourceSpecifier];
          v16 = [v15 rangeOfString:@"//"] == 0;

          if (v16)
          {
            v11 = v11;
            v50 = v11;
          }

          else
          {
            v17 = [v2 cloudID];
            if ([v2 artworkType] == 1)
            {
              v18 = [*(a1 + 40) musicLibrary];
              v19 = [ML3Track newWithPersistentID:v17 inLibrary:v18];

              v20 = [v19 valueForProperty:v43];
              v9 = [v20 unsignedLongLongValue];
            }

            else if ([v2 artworkType] == 5)
            {
              v21 = [*(a1 + 40) musicLibrary];
              v22 = [ML3Container newWithPersistentID:v17 inLibrary:v21];

              v23 = [v22 valueForProperty:v42];
              v9 = [v23 unsignedLongLongValue];
            }

            v50 = 0;
          }

          goto LABEL_28;
        }

        if (v10 == 500)
        {
          goto LABEL_13;
        }

        v50 = 0;
LABEL_29:
        v24 = [CloudArtworkImportOperation alloc];
        v25 = [*(a1 + 40) artworkDownloadSession];
        v26 = [*(a1 + 40) configuration];
        v27 = [v2 clientIdentity];
        v5 = [(CloudArtworkImportOperation *)v24 initWithURLSession:v25 configuration:v26 cloudID:v9 artworkToken:v51 artworkType:v52 sourceType:v10 variantType:v47 clientIdentity:v27];

        -[CloudArtworkImportOperation setMediaType:](v5, "setMediaType:", [v2 mediaType]);
        -[CloudArtworkImportOperation setAllowsCellularData:](v5, "setAllowsCellularData:", [v2 allowsCellularData]);
        [(CloudArtworkImportOperation *)v5 setAssetURL:v50];
        v28 = -[CloudArtworkImportAsset initWithAssertURL:artworkMediaType:artworkType:artworkToken:]([CloudArtworkImportAsset alloc], "initWithAssertURL:artworkMediaType:artworkType:artworkToken:", v50, [v2 mediaType], v52, v51);
        [v45 addObject:v28];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10010BD68;
        v58[3] = &unk_1001DF618;
        v58[4] = *(a1 + 40);
        v29 = v3;
        v59 = v29;
        [(CloudArtworkImportOperation *)v5 setCompletionBlock:v58];
        v30 = [*(a1 + 40) artworkDownloadOperationMap];
        [v30 setObject:v5 forKey:v29];

        v31 = [*(a1 + 40) artworkDownloadOperationMap];
        LODWORD(v30) = [v31 count] == 1;

        if (v30)
        {
          v32 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [*(a1 + 40) powerAssertionIdentifier];
            *buf = 138543362;
            v65 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Taking power assertion: %{public}@", buf, 0xCu);
          }

          v34 = [*(a1 + 40) powerAssertionIdentifier];
          CPSetPowerAssertionWithIdentifier();

          v35 = [*(a1 + 40) artworkDownloadWatchdog];
          [v35 resume];
        }

        [v44 addObject:v5];

LABEL_34:
        v36 = [v2 completionHandler];
        [(CloudArtworkImportOperation *)v5 addCompletionHandler:v36];
      }

      v49 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v49);
  }

  v38 = [*(a1 + 40) artworkDownloadOperationQueue];
  [v38 addOperations:v44];

  objc_initWeak(buf, *(a1 + 40));
  if ([v45 count])
  {
    v39 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v40 = [*(a1 + 40) artworkDownloadOperationQueue];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10010BE0C;
    v54[3] = &unk_1001DE5D8;
    objc_copyWeak(&v57, buf);
    v55 = v45;
    v41 = v39;
    v56 = v41;
    [v40 addBarrierBlock:v54];

    objc_destroyWeak(&v57);
  }

  objc_destroyWeak(buf);
}

void sub_10010BD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id location)
{
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010BD68(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkDownloadAccessQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010C09C;
  v4[3] = &unk_1001DF618;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void sub_10010BE0C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained artworkColorAnalysisAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010BEE8;
  block[3] = &unk_1001DE918;
  v6 = WeakRetained;
  v7 = a1[4];
  v8 = a1[5];
  v4 = WeakRetained;
  dispatch_async(v3, block);
}

void sub_10010BEE8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        v6 = 0;
        do
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * v6);
          v8 = objc_autoreleasePoolPush();
          v9 = [ML3Artwork alloc];
          v10 = [v7 artworkToken];
          v11 = [v9 initWithToken:v10 artworkType:objc_msgSend(v7 musicLibrary:{"artworkType"), *(a1 + 48)}];

          v12 = [v11 interestDictionary];

          if (!v12)
          {
            v13 = [*(a1 + 32) _artworkColorAnalysisOperationForArtworkAsset:v7 library:*(a1 + 48) artwork:v11];
            if (v13)
            {
              v14 = [*(a1 + 32) artworkColorAnalysisOperationQueue];
              [v14 addOperation:v13];
            }
          }

          objc_autoreleasePoolPop(v8);
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }
  }
}

void sub_10010C09C(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkDownloadOperationMap];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 callCompletionHandlers];
  v4 = [*(a1 + 32) artworkDownloadOperationMap];
  [v4 removeObjectForKey:*(a1 + 40)];

  v5 = [*(a1 + 32) artworkDownloadOperationMap];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [*(a1 + 32) artworkDownloadWatchdog];
    [v7 resume];
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientArtworkDownloadsDidCompleteNotification, 0, 0, 1u);
    v9 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) powerAssertionIdentifier];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: %{public}@", &v12, 0xCu);
    }

    v11 = [*(a1 + 32) powerAssertionIdentifier];
    CPSetPowerAssertionWithIdentifier();

    v7 = [*(a1 + 32) artworkDownloadWatchdog];
    [v7 suspend];
  }
}

Class sub_10010C944(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213DC8)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10010CDF8;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DE710;
    v8 = 0;
    qword_100213DC8 = _sl_dlopen();
  }

  if (!qword_100213DC8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudArtworkImporter.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaDownloadManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPMediaDownloadManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudArtworkImporter.m" lineNumber:27 description:{@"Unable to find class %s", "MPMediaDownloadManager"}];

LABEL_10:
    __break(1u);
  }

  qword_100213DC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10010CB30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained artworkDownloadAccessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010CBDC;
    block[3] = &unk_1001DF578;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_10010CBDC(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Artwork_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) artworkDownloadOperationQueue];
    v4 = [v3 operations];
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watchdog fired, operation queue contents: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) powerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();

  v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) powerAssertionIdentifier];
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Watchdog fired, releasing power assertion: %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [*(a1 + 32) artworkDownloadOperationQueue];
  v9 = [v8 operations];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) cancel];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

uint64_t sub_10010CDF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213DC8 = result;
  return result;
}

id sub_10010D1A8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 2;
    v5 = 0;
  }

  else
  {
    v5 = a3;
    v4 = 3;
  }

  return [v3 _didCompleteWithPrivacyPromptStatus:v4 error:v5];
}

void sub_10010DE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010DE64(uint64_t a1)
{
  sub_10010E2C0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSRemoteAlertDefinition");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213DD0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSBSRemoteAlertDefinitionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDPrivacyPromptOperation.m" lineNumber:37 description:{@"Unable to find class %s", "SBSRemoteAlertDefinition"}];

    __break(1u);
  }
}

void sub_10010DF2C(uint64_t a1)
{
  sub_10010E2C0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSRemoteAlertConfigurationContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213DE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSBSRemoteAlertConfigurationContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDPrivacyPromptOperation.m" lineNumber:36 description:{@"Unable to find class %s", "SBSRemoteAlertConfigurationContext"}];

    __break(1u);
  }
}

void sub_10010DFF4(uint64_t a1)
{
  sub_10010E484();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BSMutableSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213DE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBSMutableSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDPrivacyPromptOperation.m" lineNumber:30 description:{@"Unable to find class %s", "BSMutableSettings"}];

    __break(1u);
  }
}

void sub_10010E0BC(uint64_t a1)
{
  sub_10010E484();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BSAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213DF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBSActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDPrivacyPromptOperation.m" lineNumber:29 description:{@"Unable to find class %s", "BSAction"}];

    __break(1u);
  }
}

void sub_10010E184(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:1];

  [*(a1 + 32) _handleRemoteAlertActionWithResult:{objc_msgSend(v4, "BOOLValue")}];
}

void sub_10010E1F8(uint64_t a1)
{
  sub_10010E2C0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSRemoteAlertHandle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213E00 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSBSRemoteAlertHandleClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDPrivacyPromptOperation.m" lineNumber:38 description:{@"Unable to find class %s", "SBSRemoteAlertHandle"}];

    __break(1u);
  }
}

void sub_10010E2C0()
{
  v3[0] = 0;
  if (!qword_100213DD8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10010E410;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DE7A8;
    v5 = 0;
    qword_100213DD8 = _sl_dlopen();
  }

  if (!qword_100213DD8)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDPrivacyPromptOperation.m" lineNumber:35 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10010E410(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213DD8 = result;
  return result;
}

void sub_10010E484()
{
  v3[0] = 0;
  if (!qword_100213DF0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10010E5D4;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DE7C0;
    v5 = 0;
    qword_100213DF0 = _sl_dlopen();
  }

  if (!qword_100213DF0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *BaseBoardLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDPrivacyPromptOperation.m" lineNumber:28 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10010E5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213DF0 = result;
  return result;
}

void sub_10010EC2C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 dictionaryRepresentation];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 stringValue];
    [v6 setObject:v5 forKey:v7];
  }
}

void sub_10010EDB8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v6 = [[ICDCloudPushNotificationAccountRegistrationState alloc] initWithDictionaryRepresentation:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 longLongValue]);
    [v7 setObject:v6 forKey:v8];
  }
}

uint64_t sub_10010F410(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully dispatched intent", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10010F510(id a1)
{
  v1 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully dispatched intent", v2, 2u);
  }
}

void sub_10010F5D8(id a1)
{
  v1 = +[ICDeviceInfo currentDeviceInfo];
  v2 = [v1 isWatch];

  if (v2)
  {
    [NSSet setWithObjects:@"feature-movie", @"tv-episode", @"book", @"software", 0];
  }

  else
  {
    [NSSet setWithObjects:@"feature-movie", @"tv-episode", @"book", 0, v5];
  }
  v3 = ;
  v4 = qword_100213E18;
  qword_100213E18 = v3;

  _objc_release_x1(v3, v4);
}

void sub_10010F6D0(id a1)
{
  v1 = +[ICDeviceInfo currentDeviceInfo];
  v2 = [v1 isWatch];

  if (v2)
  {
    [NSSet setWithObjects:@"song", @"music-video", @"feature-movie", @"tv-episode", @"book", @"software", 0];
  }

  else
  {
    [NSSet setWithObjects:@"song", @"music-video", @"feature-movie", @"tv-episode", @"book", 0, v5];
  }
  v3 = ;
  v4 = qword_100213E08;
  qword_100213E08 = v3;

  _objc_release_x1(v3, v4);
}

void sub_10010FA78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to process incoming sync push message. err=%{public}@", &v6, 0x16u);
    }
  }
}

Class sub_100110204(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213E30)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1001103F0;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DEB48;
    v8 = 0;
    qword_100213E30 = _sl_dlopen();
  }

  if (!qword_100213E30)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MusicLibraryLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudPushNotificationController.m" lineNumber:31 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ML3MusicLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getML3MusicLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudPushNotificationController.m" lineNumber:32 description:{@"Unable to find class %s", "ML3MusicLibrary"}];

LABEL_10:
    __break(1u);
  }

  qword_100213E28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001103F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213E30 = result;
  return result;
}

void sub_10011095C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Push");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v4 msv_description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Refreshed User Social Profiles error=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshed User Social Profiles", &v10, 0xCu);
  }
}

void sub_100110CA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v16 = *(a1 + 32);
    *buf = 138543618;
    v30 = v16;
    v31 = 2114;
    v32 = v6;
    v17 = "%{public}@ Ignoring jalisco push message because we failed to load account properties. err=%{public}@";
    v18 = v7;
    v19 = 22;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_28;
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0 && ([v5 isActive] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v22 = *(a1 + 32);
    *buf = 138543362;
    v30 = v22;
    v17 = "%{public}@ Ignoring jalisco push message for an inactive account";
    v18 = v7;
    v19 = 12;
    goto LABEL_24;
  }

  if ([*(a1 + 40) actionType] == 1)
  {
    v7 = [*(a1 + 40) jaliscoChangedMediaTypes];
    v8 = [[ICConnectionConfiguration alloc] initWithUserIdentity:*(a1 + 48)];
    if (v7)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received update request to media types: %{public}@", buf, 0xCu);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(a1 + 32) _isSupportedJaliscoMediaKind:{*(*(&v24 + 1) + 8 * i), v24}])
            {

              goto LABEL_26;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v15 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Ignoring push notification since it did not contain any supported media types", buf, 2u);
      }
    }

    else
    {
LABEL_26:
      v15 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v8];
      v23 = [v8 clientIdentity];
      [v15 updateJaliscoLibraryWithClientIdentity:v23 forReason:2 completionHandler:0];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = [*(a1 + 40) userInfo];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received unhandled jalisco push action. userInfo=%{public}@", buf, 0x16u);
    }
  }

LABEL_28:
}

void sub_100111378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v12 = *(a1 + 32);
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v6;
    v13 = "%{public}@ Ignoring saga push message because we failed to load account properties. err=%{public}@";
    v14 = v7;
    v15 = 22;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    goto LABEL_26;
  }

  if (([v5 isActiveLocker] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v16 = *(a1 + 32);
    *buf = 138543362;
    v25 = v16;
    v13 = "%{public}@ Ignoring saga push message because the account no longer has icml enabled";
    goto LABEL_13;
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0 && ([v5 isActive] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 32);
    *buf = 138543362;
    v25 = v18;
    v13 = "%{public}@ Ignoring saga push message for an inactive account";
LABEL_13:
    v14 = v7;
    v15 = 12;
    goto LABEL_14;
  }

  if ([*(a1 + 40) actionType] == 1)
  {
    v7 = [[ICConnectionConfiguration alloc] initWithUserIdentity:*(a1 + 48)];
    v8 = [*(a1 + 40) sagaServerRevision];
    v9 = [*(a1 + 40) sagaUpdatedSubscribedPlaylistIDs];
    v10 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v7];
    if (v8 && v9)
    {
      v11 = [v7 clientIdentity];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100111738;
      v20[3] = &unk_1001DFBB0;
      v21 = v10;
      v22 = v9;
      v23 = v7;
      [v21 updateSagaLibraryWithClientIdentity:v11 forReason:2 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:v20];

LABEL_24:
      goto LABEL_25;
    }

    if (v8)
    {
      v19 = [v7 clientIdentity];
      [v10 updateSagaLibraryWithClientIdentity:v19 forReason:2 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
    }

    else
    {
      if (!v9)
      {
        goto LABEL_24;
      }

      v19 = [v7 clientIdentity];
      [v10 updateSubscribedPlaylistsWithSagaIDs:v9 ignoreMinRefreshInterval:1 requestReason:2 pinnedOnly:0 clientIdentity:v19 completionHandler:0];
    }

    goto LABEL_24;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v9 = [*(a1 + 40) userInfo];
    *buf = 138543618;
    v25 = v17;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received unhandled saga push action. userInfo=%{public}@", buf, 0x16u);
LABEL_25:
  }

LABEL_26:
}

void sub_100111738(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) clientIdentity];
  [v1 updateSubscribedPlaylistsWithSagaIDs:v2 ignoreMinRefreshInterval:1 requestReason:2 pinnedOnly:0 clientIdentity:v3 completionHandler:0];
}

void sub_100111A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v6;
    v16 = 2050;
    v17 = [v5 statusCode];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished registering push token. err=%{public}@, statusCode=%{public}ld", &v12, 0x20u);
  }

  v9 = v6;
  v10 = v9;
  if (!v9)
  {
    if ([v5 statusCode])
    {
      v10 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

void sub_100111D74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v6;
    v16 = 1024;
    v17 = [v5 statusCode];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished registering push token. err=%{public}@, statusCode=%d", &v12, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if (!v9)
  {
    if ([v5 statusCode])
    {
      v10 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

void sub_100112068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) userIdentity];
    v8 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v7];
    v9 = [v8 privacyAcknowledgementRequiredForMedia];

    if (v9)
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138543362;
        v67 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Not registering for push notifications because privacy acknowledgement is required for media", buf, 0xCu);
      }

      v12 = *(a1 + 48);
      v13 = [NSError errorWithDomain:ICErrorDomain code:-7007 userInfo:0];
      (*(v12 + 16))(v12, v13);

      goto LABEL_31;
    }

    v17 = [v5 DSID];
    v18 = [*(*(a1 + 32) + 32) registrationStateForAccountDSID:v17];
    if (!v18)
    {
      v18 = objc_alloc_init(ICDCloudPushNotificationAccountRegistrationState);
    }

    v49 = v17;
    v19 = [v5 isActiveLocker];
    v20 = *(a1 + 32);
    if (v19)
    {
      [v20 _supportedJaliscoMediaKindsWithSagaEnabled];
    }

    else
    {
      [v20 _supportedJaliscoMediaKinds];
    }
    v21 = ;
    v22 = [v21 allObjects];

    v23 = [ICStoreRequestContext alloc];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100112624;
    v64[3] = &unk_1001DEFB8;
    v65 = *(a1 + 40);
    v24 = [v23 initWithBlock:v64];
    v25 = [(ICDCloudPushNotificationAccountRegistrationState *)v18 APNSToken];
    v26 = [(ICDCloudPushNotificationAccountRegistrationState *)v18 mediaKinds];
    v27 = v26;
    v48 = v25;
    if (v25)
    {
      v28 = [*(*(a1 + 32) + 24) isEqualToData:v25];
      v29 = v28;
      v30 = v49;
      if (v27)
      {
        v31 = [v22 isEqualToArray:v27];
        if (v29)
        {
          if (v31)
          {
            v32 = os_log_create("com.apple.amp.itunescloudd", "Push");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(a1 + 32);
              v34 = *(a1 + 40);
              *buf = 138543618;
              v67 = v33;
              v68 = 2114;
              v69 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Push notification registration up to date for configuration %{public}@", buf, 0x16u);
            }

            (*(*(a1 + 48) + 16))();
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v35 = v24;
        goto LABEL_26;
      }

      if (v28)
      {
LABEL_24:
        v36 = v24;
        v37 = v22;
        v38 = *(a1 + 32);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1001128AC;
        v50[3] = &unk_1001DE940;
        v51 = v18;
        v39 = v37;
        v40 = *(a1 + 32);
        v52 = v39;
        v53 = v40;
        v54 = v49;
        v55 = *(a1 + 48);
        v41 = v38;
        v22 = v37;
        v24 = v36;
        v25 = v48;
        [v41 _registerMediaKinds:v39 usingRequestContext:v24 withCompletion:v50];

LABEL_30:
        goto LABEL_31;
      }

      v35 = v24;
    }

    else
    {
      v35 = v24;
      if (v26)
      {
        v31 = [v22 isEqualToArray:v26];
LABEL_26:
        v42 = v31 ^ 1;
LABEL_29:
        v43 = *(a1 + 32);
        v44 = v43[3];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1001126E8;
        v56[3] = &unk_1001DE968;
        v62 = *(a1 + 48);
        v45 = v18;
        v46 = *(a1 + 32);
        v57 = v45;
        v58 = v46;
        v63 = v42;
        v59 = v22;
        v60 = v35;
        v30 = v49;
        v61 = v49;
        v47 = v44;
        v24 = v35;
        [v43 _registerAPNSToken:v47 usingRequestContext:v60 withCompletion:v56];

        v25 = v48;
        goto LABEL_30;
      }
    }

    v42 = 1;
    goto LABEL_29;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) userIdentity];
    *buf = 138543874;
    v67 = v15;
    v68 = 2114;
    v69 = v16;
    v70 = 2114;
    v71 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get properties for user identity %{public}@. err=%{public}@", buf, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_31:
}

void sub_100112624(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userIdentity];
  [v4 setIdentity:v5];

  v6 = [*(a1 + 32) userIdentityStore];
  [v4 setIdentityStore:v6];

  [v4 setPersonalizationStyle:2];
  v7 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v4 setAuthenticationProvider:v7];
}

void sub_1001126E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 72);
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    [*(a1 + 32) setAPNSToken:*(*(a1 + 40) + 24)];
    v5 = *(a1 + 40);
    if (*(a1 + 80) == 1)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100112A10;
      v18[3] = &unk_1001DE940;
      v19 = *(a1 + 32);
      v8 = *(a1 + 48);
      v9 = *(a1 + 40);
      v20 = v8;
      v21 = v9;
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      [v5 _registerMediaKinds:v6 usingRequestContext:v7 withCompletion:v18];

      v10 = v19;
    }

    else
    {
      v11 = v5[1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100112AF0;
      v15[3] = &unk_1001DE918;
      v15[4] = v5;
      v16 = *(a1 + 32);
      v17 = *(a1 + 64);
      dispatch_async(v11, v15);
      (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v12, v13, v14);

      v10 = v16;
    }
  }
}

void sub_1001128AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setMediaKinds:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011298C;
    block[3] = &unk_1001DE918;
    block[4] = v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    dispatch_async(v5, block);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10011298C(void *a1)
{
  [*(a1[4] + 32) setRegistrationState:a1[5] forAccountDSID:a1[6]];
  v3 = +[ICDefaults standardDefaults];
  v2 = [*(a1[4] + 32) dictionaryRepresentation];
  [v3 setPushNotificationState:v2];
}

void sub_100112A10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setMediaKinds:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5 = *(v4 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100112B74;
    block[3] = &unk_1001DE918;
    block[4] = v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    dispatch_async(v5, block);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100112AF0(void *a1)
{
  [*(a1[4] + 32) setRegistrationState:a1[5] forAccountDSID:a1[6]];
  v3 = +[ICDefaults standardDefaults];
  v2 = [*(a1[4] + 32) dictionaryRepresentation];
  [v3 setPushNotificationState:v2];
}

void sub_100112B74(void *a1)
{
  [*(a1[4] + 32) setRegistrationState:a1[5] forAccountDSID:a1[6]];
  v3 = +[ICDefaults standardDefaults];
  v2 = [*(a1[4] + 32) dictionaryRepresentation];
  [v3 setPushNotificationState:v2];
}

void sub_100112CF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v50 = v8;
      v51 = 2114;
      v52 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to fetch bag configuration. error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = APSEnvironmentProduction;
    v10 = [v5 dictionaryForBagKey:ICURLBagKeyPushNotifications];
    v7 = v9;
    if (_NSIsNSDictionary())
    {
      v11 = [v10 objectForKey:@"environment"];
      v7 = v9;
      if (_NSIsNSString())
      {
        if (([v11 isEqualToString:v9] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", APSEnvironmentDevelopment) & 1) != 0 || (v7 = v9, objc_msgSend(v11, "isEqualToString:", APSEnvironmentDemo)))
        {
          v7 = v11;
        }
      }
    }

    v12 = [*(a1 + 32) connection];
    if (!v12 || (v13 = v12, [*(a1 + 32) pushEnvironment], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v7), v14, v13, (v15 & 1) == 0))
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = [v17 connection];
        v19 = @"Push environment changed";
        if (!v18)
        {
          v19 = @"connection=nil";
        }

        *buf = 138543618;
        v50 = v17;
        v51 = 2114;
        v52 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating new APNS connection. %{public}@", buf, 0x16u);
      }

      v20 = [*(a1 + 32) connection];

      if (v20)
      {
        v21 = [*(a1 + 32) connection];
        [v21 setDelegate:0];

        [*(a1 + 32) setConnection:0];
      }

      v39 = v10;
      v40 = v5;
      v22 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138543618;
        v50 = v23;
        v51 = 2114;
        v52 = v7;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering for push notifications. environment=%{public}@", buf, 0x16u);
      }

      [*(a1 + 32) setPushEnvironment:v7];
      v24 = [[APSConnection alloc] initWithEnvironmentName:v7 namedDelegatePort:@"com.apple.aps.itunescloudd" queue:&_dispatch_main_q];
      if (!v24)
      {
        v25 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 32);
          *buf = 138543362;
          v50 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create the push connection", buf, 0xCu);
        }
      }

      [*(a1 + 32) setConnection:v24];
      [v24 setDelegate:*(a1 + 32)];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v47[0] = v9;
      v47[1] = APSEnvironmentDevelopment;
      v47[2] = APSEnvironmentDemo;
      v27 = [NSArray arrayWithObjects:v47 count:3];
      v28 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v44;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v43 + 1) + 8 * i);
            v33 = [*(a1 + 32) pushEnvironment];
            v34 = [v32 isEqualToString:v33];

            if ((v34 & 1) == 0)
            {
              v35 = [[APSConnection alloc] initWithEnvironmentName:v32 namedDelegatePort:@"com.apple.aps.itunescloudd" queue:&_dispatch_main_q];

              [v35 setDelegate:*(a1 + 32)];
              v36 = dispatch_time(0, 1000000000);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001132C4;
              block[3] = &unk_1001DF578;
              v42 = v35;
              v37 = v35;
              dispatch_after(v36, &_dispatch_main_q, block);
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v29);
      }

      v6 = 0;
      v5 = v40;
      v10 = v39;
    }
  }

  v38 = *(a1 + 40);
  if (v38)
  {
    (*(v38 + 16))(v38, v6);
  }
}

void sub_100113468(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) operationCount])
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ We already have an operation enqueued to handle push registration", buf, 0xCu);
    }
  }

  else
  {
    v4 = [ICAsyncBlockOperation alloc];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001135A4;
    v5[3] = &unk_1001DE8C8;
    v5[4] = *(a1 + 32);
    v2 = [v4 initWithStartHandler:v5];
    [*(*(a1 + 32) + 16) addOperation:v2];
  }
}

void sub_1001135A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating push notification registration", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001136D4;
  v8[3] = &unk_1001DFB10;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v6 _createAPNSConnectionWithCompletion:v8];
}

void sub_1001136D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100113790;
    v7[3] = &unk_1001DE8A0;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    [v4 _activeConfigurationsWithCompletion:v7];
  }
}

void sub_100113790(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v6 = [NSMutableArray arrayWithCapacity:5];
    v7 = +[ICDeviceInfo currentDeviceInfo];
    if (([v7 isMac] & 1) == 0 && objc_msgSend(v5, "count"))
    {
      [v6 addObject:@"com.apple.music.engagement"];
      [v6 addObject:@"com.apple.music.service"];
      [v6 addObject:@"com.apple.music.social"];
      [v6 addObject:@"com.apple.sagad"];
      [v6 addObject:@"com.apple.jalisco"];
      [v6 addObject:@"com.apple.storebookkeeper"];
    }

    if (([v7 isWatch] & 1) != 0 || (objc_msgSend(v7, "isAppleTV") & 1) != 0 || (objc_msgSend(v7, "isMac") & 1) != 0 || (objc_msgSend(v7, "isIPhone") & 1) != 0 || objc_msgSend(v7, "isIPad"))
    {
      [v6 addObject:@"com.apple.itunesstored"];
    }

    v8 = [*(a1 + 40) connection];
    v9 = [v8 enabledTopics];
    v10 = [v6 isEqualToArray:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 40) connection];
      [v11 _setEnabledTopics:v6];
    }

    v12 = *(a1 + 40);
    if (v12[3])
    {
      goto LABEL_16;
    }

    v13 = [v12 connection];
    v14 = [v13 publicToken];
    v15 = *(a1 + 40);
    v16 = *(v15 + 24);
    *(v15 + 24) = v14;

    if (*(*(a1 + 40) + 24))
    {
LABEL_16:
      v17 = a1;
      v30 = v7;
      v18 = dispatch_group_create();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v5;
      v19 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            dispatch_group_enter(v18);
            v24 = *(v17 + 40);
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100113BC0;
            v34[3] = &unk_1001DE828;
            v35 = v18;
            [v24 _updateRegistrationForConfiguration:v23 completion:v34];
          }

          v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v20);
      }

      v25 = v17;
      v26 = *(v17 + 40);
      v27 = *(v26 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100113BC8;
      block[3] = &unk_1001DF618;
      block[4] = v26;
      v33 = *(v25 + 32);
      dispatch_group_notify(v18, v27, block);

      v7 = v30;
    }

    else
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 40);
        *buf = 138543362;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ No APNS token available - skipping registration for now", buf, 0xCu);
      }

      [*(a1 + 32) finishWithError:0];
    }
  }
}

id sub_100113BC8(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished push registration", &v5, 0xCu);
  }

  return [*(a1 + 40) finishWithError:0];
}

void sub_100113F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) connection];

  if (v4 == v5)
  {
    v9 = +[ICUserIdentityStore defaultIdentityStore];
    v10 = +[ICUserIdentity activeAccount];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001140CC;
    v13[3] = &unk_1001DE850;
    v14 = *(a1 + 56);
    v15 = v3;
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    [v9 getPropertiesForUserIdentity:v10 completionHandler:v13];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Push notification came from alternate environment, dropping notification from topic %{public}@: %{public}@", buf, 0x16u);
    }

    [v3 finishWithError:0];
  }
}

void sub_1001140CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICPushNotificationMessage alloc] initWithMessageUserInfo:*(a1 + 32)];
  v5 = [v3 DSID];

  v6 = [v5 longLongValue];
  v7 = [v4 accountDSID];
  if (v7 == v6 || (v8 = v7, (MSVDeviceSupportsMultipleLibraries() & 1) != 0))
  {
    if ([*(a1 + 48) isEqualToString:@"com.apple.sagad"])
    {
      v9 = *(a1 + 56);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1001146D0;
      v36[3] = &unk_1001DE828;
      v37 = *(a1 + 40);
      [v9 _handleSagaPushMessage:v4 withCompletionHandler:v36];
      v10 = v37;
    }

    else if ([*(a1 + 48) isEqualToString:@"com.apple.jalisco"])
    {
      v11 = *(a1 + 56);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1001146DC;
      v34[3] = &unk_1001DE828;
      v35 = *(a1 + 40);
      [v11 _handleJaliscoPushMessage:v4 withCompletionHandler:v34];
      v10 = v35;
    }

    else if (([*(a1 + 48) isEqualToString:@"com.apple.itunesstored"] & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", @"com.apple.music.service"))
    {
      v16 = *(a1 + 56);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1001146E8;
      v32[3] = &unk_1001DE828;
      v33 = *(a1 + 40);
      [v16 _handleITunesStorePushMessage:v4 withCompletionHandler:v32];
      v10 = v33;
    }

    else if ([*(a1 + 48) isEqualToString:@"com.apple.music.engagement"])
    {
      v17 = *(a1 + 56);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1001146F4;
      v30[3] = &unk_1001DE828;
      v31 = *(a1 + 40);
      [v17 _handleMusicEngagementPushMessage:v4 withCompletionHandler:v30];
      v10 = v31;
    }

    else if ([*(a1 + 48) isEqualToString:@"com.apple.music.social"])
    {
      v18 = *(a1 + 56);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100114700;
      v28[3] = &unk_1001DE828;
      v29 = *(a1 + 40);
      [v18 _handleMusicSocialPushMessage:v4 withCompletionHandler:v28];
      v10 = v29;
    }

    else if ([*(a1 + 48) isEqualToString:@"com.apple.storebookkeeper"])
    {
      v19 = *(a1 + 56);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10011470C;
      v26[3] = &unk_1001DE828;
      v27 = *(a1 + 40);
      [v19 _handleStoreBookkeeperPushMessage:v4 withCompletionHandler:v26];
      v10 = v27;
    }

    else if ([*(a1 + 48) isEqualToString:@"com.apple.podcasts"])
    {
      v20 = *(a1 + 56);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100114718;
      v24[3] = &unk_1001DE828;
      v25 = *(a1 + 40);
      [v20 _handlePodcastsPushMessage:v4 withCompletionHandler:v24];
      v10 = v25;
    }

    else
    {
      v21 = sub_100102804();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 48);
        *buf = 138543362;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Unknown push topic '%{public}@'", buf, 0xCu);
      }

      v23 = *(a1 + 40);
      v10 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      [v23 finishWithError:v10];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v41 = v8;
      v42 = 2048;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring push notification for an account that is not the active account. accountDSID=%lld, activeAccountDSID=%lld", buf, 0x16u);
    }

    v13 = *(a1 + 40);
    v38 = NSDebugDescriptionErrorKey;
    v10 = [NSString stringWithFormat:@"Ignoring push notification [account is not active] - accountDSID=%lld - activeAccountDSID=%lld", v8, v6];
    v39 = v10;
    v14 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v15 = [NSError errorWithDomain:ICErrorDomain code:-7400 userInfo:v14];
    [v13 finishWithError:v15];
  }
}

void sub_100114C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [v3 writeString:*(a1 + 32) withCode:1835365473];
  }

  if ([*(a1 + 40) length])
  {
    [v3 writeString:*(a1 + 40) withCode:1836152165];
  }

  if (*(a1 + 64) == 1)
  {
    [v3 writeUInt8:1 withCode:1835559268];
  }

  if (*(a1 + 65) == 1)
  {
    [v3 writeUInt8:1 withCode:1634355568];
  }

  if ([*(a1 + 48) length])
  {
    [v3 writeString:*(a1 + 48) withCode:1836081511];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = v4;
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_100114D50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100114DE8;
  v6[3] = &unk_1001DEB68;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100114DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  ICDAAPUtilitiesWriteContainer();
}

void sub_100114EB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  ICDAAPUtilitiesWriteProperty();
  v4 = *(a1 + 40);
  ICDAAPUtilitiesWriteProperty();
}

void sub_100115650(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  [v4 writeUInt8:*(a1 + 36) withCode:1634354753];
}

void sub_100115A78(int a1, unsigned __int8 *a2, unsigned int a3, void *a4, const __CFString **a5)
{
  if (a1 <= 1634952298)
  {
    if (a1 > 1634034543)
    {
      if (a1 > 1634951520)
      {
        if (a1 > 1634952044)
        {
          if (a1 > 1634952050)
          {
            if (a1 <= 1634952288)
            {
              if (a1 == 1634952051)
              {
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songcodecsubtype";
                goto LABEL_518;
              }

              if (a1 == 1634952052)
              {
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"daap.songcategory";
                  goto LABEL_496;
                }

                goto LABEL_497;
              }
            }

            else
            {
              switch(a1)
              {
                case 1634952289:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"daap.songdateadded";
                  goto LABEL_518;
                case 1634952290:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"daap.songdisabled";
                  goto LABEL_518;
                case 1634952291:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"daap.songdisccount";
                  goto LABEL_518;
              }
            }
          }

          else
          {
            if (a1 <= 1634952046)
            {
              if (a1 == 1634952045)
              {
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"daap.songcomment";
                  goto LABEL_496;
                }
              }

              else
              {
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"daap.songcontentdescription";
                  goto LABEL_496;
                }
              }

              goto LABEL_497;
            }

            switch(a1)
            {
              case 1634952047:
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songcompilation";
                goto LABEL_518;
              case 1634952048:
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"daap.songcomposer";
                  goto LABEL_496;
                }

                goto LABEL_497;
              case 1634952050:
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songcontentrating";
                goto LABEL_518;
            }
          }

          goto LABEL_520;
        }

        if (a1 > 1634951786)
        {
          if (a1 <= 1634951793)
          {
            if (a1 == 1634951787)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.bookmarkable";
              goto LABEL_518;
            }

            if (a1 == 1634951791)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.songbookmark";
              goto LABEL_518;
            }
          }

          else
          {
            switch(a1)
            {
              case 1634951794:
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songbitrate";
                goto LABEL_518;
              case 1634951796:
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songbeatsperminute";
                goto LABEL_518;
              case 1634952036:
                *a4 = sub_100118678(a2, a3);
                if (!a5)
                {
                  return;
                }

                v9 = @"daap.songcodectype";
                goto LABEL_518;
            }
          }

          goto LABEL_520;
        }

        if (a1 <= 1634951531)
        {
          if (a1 == 1634951521)
          {
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"daap.songalbumartist";
              goto LABEL_496;
            }

            goto LABEL_497;
          }

          if (a1 == 1634951529)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songalbumid";
            goto LABEL_518;
          }

          goto LABEL_520;
        }

        if (a1 == 1634951532)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"daap.songalbum";
            goto LABEL_496;
          }

          goto LABEL_497;
        }

        if (a1 != 1634951538)
        {
          goto LABEL_520;
        }

        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (!a5)
        {
          goto LABEL_497;
        }

        v10 = @"daap.songartist";
      }

      else
      {
        if (a1 > 1634354546)
        {
          if (a1 > 1634357332)
          {
            if (a1 <= 1634358891)
            {
              if (a1 == 1634357333)
              {
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"com.apple.itunes.store.product-url";
                  goto LABEL_496;
                }

                goto LABEL_497;
              }

              if (a1 == 1634358884)
              {
                v12 = [[NSData alloc] initWithBytes:a2 length:a3];
                *a4 = [[NSString alloc] initWithData:v12 encoding:4];
                if (a5)
                {
                  v10 = @"com.apple.itunes.store.vpp-org-display-name";
                  goto LABEL_496;
                }

                goto LABEL_497;
              }
            }

            else
            {
              switch(a1)
              {
                case 1634358892:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"com.apple.itunes.store.vpp-is-licensed";
                  goto LABEL_518;
                case 1634358895:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"com.apple.itunes.store.vpp-org-id";
                  goto LABEL_518;
                case 1634759535:
                  *a4 = [ICDResponseDataParser _parseItemsResponseWithBytes:a2 length:a3 usingHandler:0];
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"daap.playlistsongs";
                  goto LABEL_518;
              }
            }
          }

          else
          {
            if (a1 > 1634356836)
            {
              switch(a1)
              {
                case 1634356837:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"com.apple.jingle.newsstandBindingEdge";
                  goto LABEL_518;
                case 1634356848:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"com.apple.jingle.AppIconNeedsShine";
                  goto LABEL_518;
                case 1634356852:
                  *a4 = sub_100118678(a2, a3);
                  if (!a5)
                  {
                    return;
                  }

                  v9 = @"com.apple.jingle.newsstandBindingType";
                  goto LABEL_518;
              }

              goto LABEL_520;
            }

            if (a1 == 1634354547)
            {
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"com.apple.itunes.store.episode-screenshot";
                goto LABEL_496;
              }

              goto LABEL_497;
            }

            if (a1 == 1634356833)
            {
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"com.apple.itunes.store.newsstand-artwork-url";
                goto LABEL_496;
              }

              goto LABEL_497;
            }
          }

          goto LABEL_520;
        }

        if (a1 <= 1634037871)
        {
          if (a1 > 1634035307)
          {
            if (a1 == 1634035308)
            {
              *a4 = [[NSData alloc] initWithBytes:a2 length:a3];
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.item-flavor-listing";
              goto LABEL_518;
            }

            if (a1 == 1634036070)
            {
              *a4 = [[NSData alloc] initWithBytes:a2 length:a3];
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.item-flavor";
              goto LABEL_518;
            }
          }

          else
          {
            if (a1 == 1634034544)
            {
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"com.apple.itunes.collection-description";
                goto LABEL_496;
              }

              goto LABEL_497;
            }

            if (a1 == 1634035300)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.item-flavor-id";
              goto LABEL_518;
            }
          }

          goto LABEL_520;
        }

        if (a1 <= 1634038894)
        {
          if (a1 == 1634037872)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.page-progression";
            goto LABEL_518;
          }

          if (a1 == 1634037878)
          {
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"com.apple.itunes.publication-version";
              goto LABEL_496;
            }

            goto LABEL_497;
          }

          goto LABEL_520;
        }

        if (a1 == 1634038895)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"com.apple.itunes.cloud-purchased-token";
          goto LABEL_518;
        }

        if (a1 == 1634169456)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"daap.songgrouping";
            goto LABEL_496;
          }

          goto LABEL_497;
        }

        if (a1 != 1634354517)
        {
          goto LABEL_520;
        }

        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (!a5)
        {
          goto LABEL_497;
        }

        v10 = @"com.apple.itunes.store.extras-url";
      }

LABEL_496:
      *a5 = v10;
      goto LABEL_497;
    }

    if (a1 <= 1634027348)
    {
      if (a1 > 1634026575)
      {
        if (a1 <= 1634027331)
        {
          if (a1 > 1634026581)
          {
            if (a1 == 1634026582)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.drm-versions";
              goto LABEL_518;
            }

            if (a1 == 1634027090)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.supports-fprap";
              goto LABEL_518;
            }
          }

          else
          {
            if (a1 == 1634026576)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.drm-platform-id";
              goto LABEL_518;
            }

            if (a1 == 1634026578)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.drm-user-id";
              goto LABEL_518;
            }
          }
        }

        else if (a1 <= 1634027335)
        {
          if (a1 == 1634027332)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.gapless-enc-dr";
            goto LABEL_518;
          }

          if (a1 == 1634027333)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.gapless-enc-del";
            goto LABEL_518;
          }
        }

        else
        {
          switch(a1)
          {
            case 1634027336:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.gapless-heur";
              goto LABEL_518;
            case 1634027346:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.gapless-resy";
              goto LABEL_518;
            case 1634027347:
              *a4 = [ICDResponseDataParser _parseItemIDArrayWithBytes:a2 length:a3];
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.genius-seed-track-id-listing";
              goto LABEL_518;
          }
        }

        goto LABEL_520;
      }

      if (a1 <= 1634026336)
      {
        if (a1 <= 1634026316)
        {
          if (a1 == 1633841260)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.baseplaylist";
            goto LABEL_518;
          }

          if (a1 == 1634026308)
          {
            *a4 = [[NSData alloc] initWithBytes:a2 length:a3];
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.flat-chapter-data";
            goto LABEL_518;
          }

          goto LABEL_520;
        }

        if (a1 == 1634026317)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"com.apple.itunes.cloud-match-type";
          goto LABEL_518;
        }

        if (a1 == 1634026324)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (!a5)
          {
            goto LABEL_497;
          }

          v10 = @"com.apple.itunes.cloud-artwork-token";
          goto LABEL_496;
        }
      }

      else
      {
        if (a1 > 1634026354)
        {
          switch(a1)
          {
            case 1634026355:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.cloud-connect-status";
              goto LABEL_518;
            case 1634026356:
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"com.apple.itunes.cloud-lyrics-token";
                goto LABEL_496;
              }

              goto LABEL_497;
            case 1634026571:
              *a4 = [[NSData alloc] initWithBytes:a2 length:a3];
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.drm-key-list-id";
              goto LABEL_518;
          }

          goto LABEL_520;
        }

        if (a1 == 1634026337)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"com.apple.itunes.cloud-artwork-url";
            goto LABEL_496;
          }

          goto LABEL_497;
        }

        if (a1 == 1634026354)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (!a5)
          {
            goto LABEL_497;
          }

          v10 = @"com.apple.itunes.copyright";
          goto LABEL_496;
        }
      }
    }

    else
    {
      if (a1 <= 1634029141)
      {
        if (a1 <= 1634027852)
        {
          if (a1 > 1634027587)
          {
            if (a1 == 1634027588)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.is-hd-video";
              goto LABEL_518;
            }

            if (a1 == 1634027606)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.has-video";
              goto LABEL_518;
            }
          }

          else
          {
            if (a1 == 1634027349)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.gapless-dur";
              goto LABEL_518;
            }

            if (a1 == 1634027587)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.has-chapter-data";
              goto LABEL_518;
            }
          }
        }

        else if (a1 <= 1634028337)
        {
          if (a1 == 1634027853)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.itunes-machine-id";
            goto LABEL_518;
          }

          if (a1 == 1634028337)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.drm-key1-id";
            goto LABEL_518;
          }
        }

        else
        {
          switch(a1)
          {
            case 1634028338:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.drm-key2-id";
              goto LABEL_518;
            case 1634028907:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.extended-media-kind";
              goto LABEL_518;
            case 1634029124:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"com.apple.itunes.non-drm-user-id";
              goto LABEL_518;
          }
        }

        goto LABEL_520;
      }

      if (a1 > 1634029681)
      {
        if (a1 <= 1634030159)
        {
          if (a1 == 1634029682)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.playlist-sort-is-reversed";
            goto LABEL_518;
          }

          if (a1 == 1634029683)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.playlist-sort";
            goto LABEL_518;
          }

          goto LABEL_520;
        }

        switch(a1)
        {
          case 1634030160:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"com.apple.itunes.item-redownload-param";
              goto LABEL_496;
            }

            goto LABEL_497;
          case 1634030192:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"com.apple.itunes.item-redownload-param-2";
              goto LABEL_496;
            }

            goto LABEL_497;
          case 1634031684:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (!a5)
            {
              goto LABEL_497;
            }

            v10 = @"com.apple.itunes.xid";
            goto LABEL_496;
        }
      }

      else
      {
        if (a1 <= 1634029642)
        {
          if (a1 == 1634029142)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.norm-volume";
            goto LABEL_518;
          }

          if (a1 == 1634029636)
          {
            *a4 = [[NSData alloc] initWithBytes:a2 length:a3];
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.playlist-data";
            goto LABEL_518;
          }

          goto LABEL_520;
        }

        switch(a1)
        {
          case 1634029643:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.playlist-kind";
            goto LABEL_518;
          case 1634029651:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"com.apple.itunes.special-playlist";
            goto LABEL_518;
          case 1634029668:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (!a5)
            {
              goto LABEL_497;
            }

            v10 = @"com.apple.itunes.display-publication-version";
            goto LABEL_496;
        }
      }
    }

LABEL_520:
    v11 = sub_1001026EC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v14 = HIBYTE(a1);
      v15 = 1024;
      v16 = HIWORD(a1);
      v17 = 1024;
      v18 = a1 >> 8;
      v19 = 1024;
      v20 = a1;
      v21 = 1024;
      v22 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unhandled code in item response: %c%c%c%c (%u bytes long)", buf, 0x20u);
    }

    return;
  }

  if (a1 > 1634957681)
  {
    if (a1 > 1835362656)
    {
      if (a1 <= 1835626092)
      {
        if (a1 <= 1835624552)
        {
          if (a1 > 1835366515)
          {
            if (a1 == 1835366516)
            {
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"dmap.objectextradata";
                goto LABEL_496;
              }

              goto LABEL_497;
            }

            if (a1 == 1835623521)
            {
              *a4 = [ICDResponseDataParser _parseItemIDArrayWithBytes:a2 length:a3];
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.itemidlisting";
              goto LABEL_518;
            }
          }

          else
          {
            if (a1 == 1835362657)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.itemdateadded";
              goto LABEL_518;
            }

            if (a1 == 1835362672)
            {
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.itemdateplayed";
              goto LABEL_518;
            }
          }
        }

        else if (a1 <= 1835625315)
        {
          if (a1 == 1835624553)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.itemhidden";
            goto LABEL_518;
          }

          if (a1 == 1835624804)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.itemid";
            goto LABEL_518;
          }
        }

        else
        {
          switch(a1)
          {
            case 1835625316:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.itemkind";
              goto LABEL_518;
            case 1835625572:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.longitemid";
              goto LABEL_518;
            case 1835625827:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"dmap.itemcount";
              goto LABEL_518;
          }
        }
      }

      else if (a1 > 1936016200)
      {
        if (a1 <= 1936020040)
        {
          if (a1 == 1936016201)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.composersyncid";
            goto LABEL_518;
          }

          if (a1 == 1936017225)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.genresyncid";
            goto LABEL_518;
          }
        }

        else
        {
          switch(a1)
          {
            case 1936020041:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.artistsyncid";
              goto LABEL_518;
            case 1936020297:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.syncid";
              goto LABEL_518;
            case 1936020553:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.albumartistsyncid";
              goto LABEL_518;
          }
        }
      }

      else if (a1 <= 1836082545)
      {
        if (a1 == 1835626093)
        {
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"dmap.itemname";
            goto LABEL_496;
          }

          goto LABEL_497;
        }

        if (a1 == 1836082031)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmap.parentcontainerid";
          goto LABEL_518;
        }
      }

      else
      {
        switch(a1)
        {
          case 1836082546:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.persistentid";
            goto LABEL_518;
          case 1836282996:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.status";
            goto LABEL_518;
          case 1936015689:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.albumsyncid";
            goto LABEL_518;
        }
      }
    }

    else if (a1 <= 1668117345)
    {
      if (a1 <= 1667584838)
      {
        if (a1 > 1667330930)
        {
          if (a1 == 1667330931)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dacp.supports-speakerselection";
            goto LABEL_518;
          }

          if (a1 == 1667330933)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dacp.supports-setuserrating";
            goto LABEL_518;
          }
        }

        else
        {
          if (a1 == 1634957682)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songyear";
            goto LABEL_518;
          }

          if (a1 == 1667330162)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dacp.protocolversion";
            goto LABEL_518;
          }
        }
      }

      else if (a1 <= 1668114794)
      {
        if (a1 == 1667584839)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"com.apple.itunes.supports-genius-control";
          goto LABEL_518;
        }

        if (a1 == 1667584856)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"com.apple.itunes.supported-itunes-extensions";
          goto LABEL_518;
        }
      }

      else
      {
        switch(a1)
        {
          case 1668114795:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmcp.interfacekind";
            goto LABEL_518;
          case 1668116594:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmcp.protocolversion";
            goto LABEL_518;
          case 1668117100:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmcp.supportsremotelibraryselection";
            goto LABEL_518;
        }
      }
    }

    else if (a1 > 1835234402)
    {
      if (a1 <= 1835295338)
      {
        if (a1 == 1835234403)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmap.containercount";
          goto LABEL_518;
        }

        if (a1 == 1835234409)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmap.containeritemid";
          goto LABEL_518;
        }
      }

      else
      {
        switch(a1)
        {
          case 1835295339:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.databasekind";
            goto LABEL_518;
          case 1835295596:
            *a4 = [ICDResponseDataParser _parseDictionaryCollectionWithBytes:a2 length:a3];
            if (!a5)
            {
              return;
            }

            v9 = @"dmap.dictionary";
            goto LABEL_518;
          case 1835361395:
            return;
        }
      }
    }

    else if (a1 <= 1668117359)
    {
      if (a1 == 1668117346)
      {
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"dmcp.supportsbonjoursourcesupdates";
        goto LABEL_518;
      }

      if (a1 == 1668117347)
      {
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"dmcp.supportscontrolpromptrequests";
        goto LABEL_518;
      }
    }

    else
    {
      switch(a1)
      {
        case 1668117360:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmcp.supportsplaystatusupdates";
          goto LABEL_518;
        case 1668117366:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmcp.supportsvolumecontrol";
          goto LABEL_518;
        case 1835103852:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"dmap.itemavailable";
          goto LABEL_518;
      }
    }

    goto LABEL_520;
  }

  if (a1 > 1634955371)
  {
    if (a1 > 1634956145)
    {
      if (a1 > 1634956386)
      {
        if (a1 <= 1634956397)
        {
          if (a1 == 1634956387)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songtrackcount";
            goto LABEL_518;
          }

          if (a1 == 1634956397)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songtime";
            goto LABEL_518;
          }
        }

        else
        {
          switch(a1)
          {
            case 1634956398:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.songtracknumber";
              goto LABEL_518;
            case 1634956652:
              v12 = [[NSData alloc] initWithBytes:a2 length:a3];
              *a4 = [[NSString alloc] initWithData:v12 encoding:4];
              if (a5)
              {
                v10 = @"daap.songdataurl";
                goto LABEL_496;
              }

              goto LABEL_497;
            case 1634956658:
              *a4 = sub_100118678(a2, a3);
              if (!a5)
              {
                return;
              }

              v9 = @"daap.songuserrating";
              goto LABEL_518;
          }
        }
      }

      else
      {
        if (a1 <= 1634956147)
        {
          if (a1 == 1634956146)
          {
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songsamplerate";
            goto LABEL_518;
          }

          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (!a5)
          {
            goto LABEL_497;
          }

          v10 = @"daap.sortseriesname";
          goto LABEL_496;
        }

        switch(a1)
        {
          case 1634956148:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songstarttime";
            goto LABEL_518;
          case 1634956149:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"daap.sortalbum";
              goto LABEL_496;
            }

            goto LABEL_497;
          case 1634956154:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songsize";
            goto LABEL_518;
        }
      }

      goto LABEL_520;
    }

    if (a1 <= 1634956128)
    {
      if (a1 > 1634955880)
      {
        if (a1 == 1634955881)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songartistid";
          goto LABEL_518;
        }

        if (a1 == 1634955894)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songrelativevolume";
          goto LABEL_518;
        }

        goto LABEL_520;
      }

      if (a1 == 1634955372)
      {
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"daap.songdateplayed";
        goto LABEL_518;
      }

      if (a1 == 1634955381)
      {
        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (!a5)
        {
          goto LABEL_497;
        }

        v10 = @"daap.songpodcasturl";
        goto LABEL_496;
      }
    }

    else
    {
      if (a1 > 1634956139)
      {
        switch(a1)
        {
          case 1634956140:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"daap.sortalbumartist";
              goto LABEL_496;
            }

            goto LABEL_497;
          case 1634956142:
            v12 = [[NSData alloc] initWithBytes:a2 length:a3];
            *a4 = [[NSString alloc] initWithData:v12 encoding:4];
            if (a5)
            {
              v10 = @"daap.sortname";
              goto LABEL_496;
            }

            goto LABEL_497;
          case 1634956144:
            *a4 = sub_100118678(a2, a3);
            if (!a5)
            {
              return;
            }

            v9 = @"daap.songstoptime";
            goto LABEL_518;
        }

        goto LABEL_520;
      }

      if (a1 == 1634956129)
      {
        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (a5)
        {
          v10 = @"daap.sortartist";
          goto LABEL_496;
        }

        goto LABEL_497;
      }

      if (a1 == 1634956131)
      {
        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (!a5)
        {
          goto LABEL_497;
        }

        v10 = @"daap.sortcomposer";
        goto LABEL_496;
      }
    }

    goto LABEL_520;
  }

  if (a1 <= 1634952812)
  {
    if (a1 <= 1634952305)
    {
      if (a1 > 1634952301)
      {
        if (a1 == 1634952302)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songdiscnumber";
          goto LABEL_518;
        }

        if (a1 == 1634952304)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songdatepurchased";
          goto LABEL_518;
        }
      }

      else
      {
        if (a1 == 1634952299)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songdatakind";
          goto LABEL_518;
        }

        if (a1 == 1634952301)
        {
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songdatemodified";
          goto LABEL_518;
        }
      }

      goto LABEL_520;
    }

    if (a1 > 1634952547)
    {
      switch(a1)
      {
        case 1634952548:
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"daap.songextradata";
            goto LABEL_496;
          }

          goto LABEL_497;
        case 1634952561:
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"daap.songeqpreset";
            goto LABEL_496;
          }

          goto LABEL_497;
        case 1634952563:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songexcludefromshuffle";
          goto LABEL_518;
      }

      goto LABEL_520;
    }

    if (a1 == 1634952306)
    {
      *a4 = sub_100118678(a2, a3);
      if (!a5)
      {
        return;
      }

      v9 = @"daap.songdatereleased";
      goto LABEL_518;
    }

    if (a1 != 1634952308)
    {
      goto LABEL_520;
    }

    v12 = [[NSData alloc] initWithBytes:a2 length:a3];
    *a4 = [[NSString alloc] initWithData:v12 encoding:4];
    if (!a5)
    {
      goto LABEL_497;
    }

    v10 = @"daap.songdescription";
    goto LABEL_496;
  }

  if (a1 > 1634954095)
  {
    if (a1 <= 1634954338)
    {
      if (a1 == 1634954096)
      {
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"daap.songuserskipcount";
        goto LABEL_518;
      }

      if (a1 == 1634954105)
      {
        v12 = [[NSData alloc] initWithBytes:a2 length:a3];
        *a4 = [[NSString alloc] initWithData:v12 encoding:4];
        if (a5)
        {
          v10 = @"daap.songkeywords";
          goto LABEL_496;
        }

        goto LABEL_497;
      }
    }

    else
    {
      switch(a1)
      {
        case 1634954339:
          v12 = [[NSData alloc] initWithBytes:a2 length:a3];
          *a4 = [[NSString alloc] initWithData:v12 encoding:4];
          if (a5)
          {
            v10 = @"daap.songlongcontentdescription";
            goto LABEL_496;
          }

          goto LABEL_497;
        case 1634954355:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songlongsize";
          goto LABEL_518;
        case 1634955363:
          *a4 = sub_100118678(a2, a3);
          if (!a5)
          {
            return;
          }

          v9 = @"daap.songuserplaycount";
          goto LABEL_518;
      }
    }

    goto LABEL_520;
  }

  if (a1 > 1634953071)
  {
    switch(a1)
    {
      case 1634953072:
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"daap.songgapless";
        goto LABEL_518;
      case 1634953328:
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"daap.songhasbeenplayed";
        goto LABEL_518;
      case 1634954084:
        *a4 = sub_100118678(a2, a3);
        if (!a5)
        {
          return;
        }

        v9 = @"daap.songlastskipdate";
LABEL_518:
        *a5 = v9;
        return;
    }

    goto LABEL_520;
  }

  if (a1 == 1634952813)
  {
    v12 = [[NSData alloc] initWithBytes:a2 length:a3];
    *a4 = [[NSString alloc] initWithData:v12 encoding:4];
    if (a5)
    {
      v10 = @"daap.songformat";
      goto LABEL_496;
    }

    goto LABEL_497;
  }

  if (a1 != 1634953070)
  {
    goto LABEL_520;
  }

  v12 = [[NSData alloc] initWithBytes:a2 length:a3];
  *a4 = [[NSString alloc] initWithData:v12 encoding:4];
  if (a5)
  {
    v10 = @"daap.songgenre";
    goto LABEL_496;
  }

LABEL_497:
}

id sub_100118678(unsigned __int8 *a1, uint64_t a2)
{
  v3 = 0;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v3 = [[NSNumber alloc] initWithUnsignedLong:bswap32(*a1)];
    }

    else if (a2 == 8)
    {
      v3 = [[NSNumber alloc] initWithUnsignedLongLong:((*a1 << 56) | (a1[1] << 48) | (a1[2] << 40) | (a1[3] << 32) | (a1[4] << 24) | (a1[5] << 16) | (a1[6] << 8)) + a1[7]];
    }
  }

  else if (a2 == 1)
  {
    v3 = [[NSNumber alloc] initWithUnsignedChar:*a1];
  }

  else if (a2 == 2)
  {
    v3 = [[NSNumber alloc] initWithUnsignedShort:bswap32(*a1) >> 16];
  }

  return v3;
}

void sub_10011C7E8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(ICAppleMusicAPITokenResponse);
  [(ICAppleMusicAPITokenResponse *)v9 setTokenCollection:v8];

  if (v7)
  {
    v10 = [[ICAppleMusicAPITokenError alloc] initWithNSError:v7];
    [(ICAppleMusicAPITokenError *)v10 setPhase:a4];
    [(ICAppleMusicAPITokenResponse *)v9 setError:v10];
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = [(ICAppleMusicAPITokenResponse *)v9 privacyConsciousDescription];
    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ Reporting completion for token request %{public}@ with response: %{public}@.", &v16, 0x20u);
  }

  v15 = a1[6];
  if (v15)
  {
    (*(v15 + 16))(v15, v9);
  }
}

void sub_10011C968(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error trying to request Developer Token: %{public}@.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ Successfully retrieved Developer Token.", buf, 0xCu);
    }

    v11 = objc_alloc_init(ICAppleMusicAPITokenCollection);
    [(ICAppleMusicAPITokenCollection *)v11 setDeveloperToken:v5];
    v12 = [[ICMusicUserTokenFetchRequest alloc] initWithDeveloperToken:v5 clientInfo:*(a1 + 48) options:{objc_msgSend(*(a1 + 40), "shouldIgnoreUserTokenCache")}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10011CB88;
    v14[3] = &unk_1001DEC98;
    v14[4] = *(a1 + 32);
    v15 = v11;
    v16 = *(a1 + 56);
    v13 = v11;
    [v12 performRequestWithResponseHandler:v14];
  }
}

void sub_10011CB88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error trying to request Music User Token: %{public}@.", &v9, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) setUserToken:a2];
  }

  v8 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10011CFC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IDSProtobuf alloc];
  v5 = [v3 data];

  v6 = [v4 initWithProtobufData:v5 type:2000 isResponse:0];
  v7 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v27[0] = IDSSendMessageOptionTimeoutKey;
  v8 = [NSNumber numberWithLong:llround(3600.0)];
  v28[0] = v8;
  v28[1] = &__kCFBooleanTrue;
  v27[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
  v27[2] = IDSSendMessageOptionForceLocalDeliveryKey;
  v28[2] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

  v10 = *(*(a1 + 32) + 16);
  v21 = 0;
  v22 = 0;
  v11 = [v10 sendProtobuf:v6 toDestinations:v7 priority:300 options:v9 identifier:&v22 error:&v21];
  v12 = v22;
  v13 = v21;
  v14 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v12;
      v17 = "%{public}@ Successfully sent response message; responseMessageIdentifier = %{public}@.";
      v18 = v15;
      v19 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    *buf = 138543618;
    v24 = v20;
    v25 = 2114;
    v26 = v13;
    v17 = "%{public}@ Failed to send response message with error = %{public}@.";
    v18 = v15;
    v19 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void sub_10011D3D4(id a1)
{
  v1 = [[AppleMusicAPITokenIDSService alloc] _init];
  v2 = qword_100213E38;
  qword_100213E38 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10011D5D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  [v3 writeUInt32:*(a1 + 40) withCode:1836413810];
  v8 = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  ICDAAPUtilitiesWriteContainer();
}

void sub_10011D6C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10011D760(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v6 = a2;
  [*(a1 + 40) writeUInt8:DAAPPinTypeFromICLibraryPinEntityType() withCode:1835625316];
  v4 = *(a1 + 32);
  if (v4[14] < 1)
  {
    if (v4[16] == 4)
    {
      v5 = 1634353513;
    }

    else
    {
      v5 = 1634888036;
    }

    [v6 writeString:v4[15] withCode:v5];
  }

  else
  {
    [v6 writeUInt32:? withCode:?];
  }

  [v6 writeUInt32:*(*(a1 + 32) + 136) withCode:1634366576];
}

id sub_10011E2CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing temporary item cloud ids.", &v13, 0xCu);
  }

  if ([v3 executeUpdate:@"UPDATE item_store SET store_saga_id = 0"])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing temporary container cloud ids.", &v13, 0xCu);
    }

    v11 = [v3 executeUpdate:@"UPDATE container SET store_cloud_id = 0"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10011EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011EA78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011EA90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10012018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose((v69 - 192), 8);
  _Block_object_dispose(&a63, 8);
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

void sub_100120288(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if ([v5 responseCode] == 200)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v6 databaseRevision];
      *(*(*(a1 + 64) + 8) + 24) = [v6 hasAddToPlaylistBehavior];
      *(*(*(a1 + 72) + 8) + 24) = [v6 addToPlaylistBehavior];
      *(*(*(a1 + 80) + 8) + 24) = [v6 hasNeedsResetSync];
      *(*(*(a1 + 88) + 8) + 24) = [v6 needsResetSync];
      *(*(*(a1 + 96) + 8) + 24) = [v6 hasClientFeaturesVersion];
      v7 = [v6 clientFeaturesVersion];
      v8 = *(*(a1 + 104) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      *(*(*(a1 + 112) + 8) + 24) = [v6 hasAddToLibraryWhenFavoritingBehavior];
      *(*(*(a1 + 120) + 8) + 24) = [v6 addToLibraryWhenFavoritingBehavior];
      v10 = *(*(*(a1 + 80) + 8) + 24) == 1 && *(*(*(a1 + 88) + 8) + 24) != 0;
      *(*(*(a1 + 128) + 8) + 24) = v10;
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(*(a1 + 56) + 8) + 24);
        v13 = *(*(*(a1 + 64) + 8) + 24);
        v14 = *(*(*(a1 + 112) + 8) + 24);
        v15 = *(*(*(a1 + 80) + 8) + 24);
        v16 = *(*(*(a1 + 96) + 8) + 24);
        v17 = *(*(*(a1 + 72) + 8) + 24);
        v18 = *(*(*(a1 + 120) + 8) + 24);
        v19 = *(*(*(a1 + 88) + 8) + 24);
        v20 = *(*(*(a1 + 104) + 8) + 40);
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        v24 = 138545922;
        v25 = v22;
        v26 = 1024;
        v27 = v12;
        v28 = 1024;
        v29 = v13;
        v30 = 1024;
        v31 = v14;
        v32 = 1024;
        v33 = v15;
        v34 = 1024;
        v35 = v16;
        v36 = 1024;
        v37 = v17;
        v38 = 1024;
        v39 = v18;
        v40 = 1024;
        v41 = v19;
        v42 = 2114;
        v43 = v20;
        v44 = 2114;
        v45 = v21;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got update response databaseRevision=%u, addToPlaylistBehavior=%{BOOL}u, favoriteSongAddToLibraryBehavior=%{BOOL}u, needsResetSync=%{BOOL}u, clientFeaturesVersion=%{BOOL}u, addToPlaylistBehaviorDAAPValue=%d, addToLibraryWhenFavoritingBehaviorDAAPValue=%d, needsResetSyncDAAPValue=%d, clientFeaturesVersionDAAPValue=%{public}@, currentClientBuildVersion=%{public}@", &v24, 0x50u);
      }
    }

    v23 = [v6 error];
    [*(a1 + 32) setError:v23];
  }

  else
  {
    [*(a1 + 32) setError:a3];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100120550(uint64_t a1, void *a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2 == 0;
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setError:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001205C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [v3 executeQuery:@"SELECT best_artwork_token.entity_pid FROM best_artwork_token JOIN artwork_token ON best_artwork_token.entity_pid = artwork_token.entity_pid AND best_artwork_token.entity_type = artwork_token.entity_type AND best_artwork_token.available_artwork_token=artwork_token.artwork_token WHERE best_artwork_token.entity_type = ? AND best_artwork_token.artwork_type = ? AND artwork_source_type = ? AND available_artwork_token != ''" withParameters:&off_1001EE398];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001206CC;
  v8[3] = &unk_1001DEE48;
  v9 = *(a1 + 40);
  [v7 enumerateRowsWithBlock:v8];
}

void sub_1001206CC(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 addObject:v5];
}

uint64_t sub_100120814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:0];
  v8 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID equalToInt64:0];
  v9 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType value:&off_1001EDD68 comparison:10];
  [ML3PropertyPredicate predicateWithProperty:ML3TrackPropertyIsInMyLibrary];
  v27 = v8;
  v28 = v7;
  v35[0] = v7;
  v25 = v35[1] = v8;
  v26 = v9;
  v35[2] = v9;
  v35[3] = v25;
  v10 = [NSArray arrayWithObjects:v35 count:4];
  v11 = [ML3AllCompoundPredicate predicateMatchingPredicates:v10];

  v29 = v11;
  v12 = [ML3Track queryWithLibrary:*(a1 + 40) predicate:v11];
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138543618;
    v32 = v14;
    v33 = 2048;
    v34 = [v12 countOfEntities];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing %lu items that do not have a cloud id.", buf, 0x16u);
  }

  v24 = [v12 deleteAllEntitiesFromLibraryWithDeletionType:2 usingConnection:v3];
  v15 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
  v16 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyIsHidden equalToInt64:0];
  v30[0] = v15;
  v30[1] = v16;
  v17 = [NSArray arrayWithObjects:v30 count:2];
  v18 = [ML3AllCompoundPredicate predicateMatchingPredicates:v17];

  v19 = [ML3Container queryWithLibrary:*(a1 + 40) predicate:v18];
  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    v22 = [v19 countOfEntities];
    *buf = 138543618;
    v32 = v21;
    v33 = 2048;
    v34 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing %lu playlists that do not have a cloud id.", buf, 0x16u);
  }

  [v19 deleteAllEntitiesFromLibraryWithDeletionType:2 usingConnection:v3];
  [*(a1 + 40) setValue:&__kCFBooleanTrue forDatabaseProperty:@"createdBuiltInSmartPlaylists"];
  [*(a1 + 40) setValue:&__kCFBooleanTrue forDatabaseProperty:@"autoCreatedSmartPlaylistsDeleted"];

  return v24;
}

void sub_100122EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose((v62 - 192), 8);
  _Unwind_Resume(a1);
}

Class sub_100122FD8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213E50)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100123FF4;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DEEB8;
    v8 = 0;
    qword_100213E50 = _sl_dlopen();
  }

  if (!qword_100213E50)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MobileBackupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudUpdateLibraryOperation.m" lineNumber:43 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MBStateInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMBStateInfoClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudUpdateLibraryOperation.m" lineNumber:44 description:{@"Unable to find class %s", "MBStateInfo"}];

LABEL_10:
    __break(1u);
  }

  qword_100213E48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001231C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100123294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isCancelled])
  {
    *a5 = 1;
  }

  else
  {
    v29 = v9;
    v10 = [NSMutableDictionary dictionaryWithSharedKeySet:*(a1 + 40)];
    v11 = [NSString stringWithFormat:@"%llx", a2];
    [v10 setObject:v11 forKey:@"persistent-id"];

    v28 = *(a3 + 8 * *(a1 + 72));
    if (([v28 intValue] & 0x400) != 0)
    {
      v12 = @"music-video";
    }

    else
    {
      v12 = @"song";
    }

    v30 = v10;
    [v10 setObject:v12 forKey:@"kind"];
    v13 = *(a3 + 8 * *(a1 + 72) + 8);
    v14 = *(a3 + 8 * *(a1 + 72) + 16);
    v27 = v13;
    if ([v13 intValue] >= 250 && objc_msgSend(v14, "intValue") == 2)
    {
      [v30 setObject:&__kCFBooleanTrue forKey:@"has-subscription-drm"];
    }

    v26 = v14;
    v15 = [*(a3 + 8 * *(a1 + 72) + 24) BOOLValue];
    v16 = [*(a3 + 8 * *(a1 + 72) + 32) BOOLValue];
    if (*(a1 + 72))
    {
      v17 = v16;
      v18 = 0;
      v19 = ML3TrackPropertyUserRating;
      v20 = ML3TrackPropertyUserAlbumRating;
      do
      {
        v21 = *(a3 + 8 * v18);
        v22 = [*(a1 + 48) objectAtIndex:v18];
        v23 = v22;
        if ((!v15 || ([v22 isEqualToString:v19] & 1) == 0) && (!v17 || (objc_msgSend(v23, "isEqualToString:", v20) & 1) == 0))
        {
          v24 = [*(a1 + 56) geniusValueForML3TrackProperty:v23 value:v21];

          if (v24)
          {
            v25 = [*(a1 + 56) geniusTrackPropertyForML3TrackProperty:v23];
            [v30 setObject:v24 forKey:v25];

            v21 = v24;
          }

          else
          {
            v21 = 0;
          }
        }

        ++v18;
      }

      while (v18 < *(a1 + 72));
    }

    [*(a1 + 64) addObject:v30];

    v9 = v29;
  }

  objc_autoreleasePoolPop(v9);
}

void sub_100123548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) isCancelled])
  {
    v10 = [NSMutableDictionary dictionaryWithSharedKeySet:*(a1 + 40)];
    v11 = [NSNumber numberWithLongLong:a2];
    [v10 setObject:v11 forKey:@"persistent-id"];

    v12 = *(a1 + 72);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        v14 = *(a1 + 48);
        v15 = *(a3 + 8 * i);
        v16 = [v14 objectAtIndex:i];
        v17 = [*(a1 + 56) geniusValueForML3ContainerProperty:v16 value:v15];

        if (v17)
        {
          v18 = [*(a1 + 56) geniusPlaylistPropertyForML3ContainerProperty:v16];
          [v10 setObject:v17 forKey:v18];
        }

        v12 = *(a1 + 72);
      }
    }

    v19 = *(a3 + 8 * v12);
    v20 = *(a3 + 8 * *(a1 + 72) + 8);
    v21 = *(a3 + 8 * *(a1 + 72) + 32);
    v22 = *(a3 + 8 * *(a1 + 72) + 40);
    v71 = *(a3 + 8 * *(a1 + 72) + 48);
    v70 = *(a3 + 8 * *(a1 + 72) + 16);
    v69 = *(a3 + 8 * *(a1 + 72) + 24);
    v68 = v9;
    if (([v20 BOOLValue] & 1) != 0 && objc_msgSend(v19, "length"))
    {
      v23 = v20;
      v24 = v22;
      [v10 setObject:v19 forKey:@"playlist-global-id"];
      v25 = 7;
LABEL_13:
      v26 = ICPushNotificationMessage_ptr;
LABEL_14:
      v27 = [v26[84] numberWithInt:v25];
      [v10 setObject:v27 forKey:@"kind"];

      [*(a1 + 64) addObject:v10];
      v9 = v68;
      goto LABEL_15;
    }

    if ([v21 BOOLValue])
    {
      v23 = v20;
      v24 = v22;
      v25 = 4;
      goto LABEL_13;
    }

    v59 = [v71 BOOLValue];
    v61 = v19;
    v51 = a2;
    if (v59)
    {
      v28 = 3;
    }

    else
    {
      if (![v22 length])
      {
        v23 = v20;
        v24 = v22;
        if ([v70 BOOLValue])
        {
          v25 = 8;
          goto LABEL_13;
        }

        v50 = [v69 BOOLValue];
        if (v50)
        {
          v25 = 9;
        }

        else
        {
          v25 = 1;
        }

        v26 = ICPushNotificationMessage_ptr;
        if (v50)
        {
          goto LABEL_14;
        }

LABEL_32:
        v67 = v25;
        v44 = +[NSMutableArray array];
        [*(a1 + 32) musicLibrary];
        v46 = v45 = v21;
        v47 = [ML3Container newWithPersistentID:v51 inLibrary:v46];

        v21 = v45;
        v48 = [ML3Track containerQueryWithContainer:v47];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100123F3C;
        v72[3] = &unk_1001DED58;
        v73 = v44;
        v49 = v44;
        [v48 enumeratePersistentIDsUsingBlock:v72];
        [v10 setObject:v49 forKey:@"items"];

        v19 = v61;
        v25 = v67;
        goto LABEL_14;
      }

      v28 = 2;
    }

    v66 = v28;
    v58 = v21;
    v65 = *(a3 + 8 * *(a1 + 72) + 56);
    v64 = *(a3 + 8 * *(a1 + 72) + 64);
    v63 = *(a3 + 8 * *(a1 + 72) + 72);
    v29 = *(a3 + 8 * *(a1 + 72) + 80);
    v30 = *(a3 + 8 * *(a1 + 72) + 88);
    v60 = *(a3 + 8 * *(a1 + 72) + 96);
    v62 = *(a3 + 8 * *(a1 + 72) + 104);
    v31 = *(a3 + 8 * *(a1 + 72) + 112);
    v32 = *(a3 + 8 * *(a1 + 72) + 120);
    v33 = *(a3 + 8 * *(a1 + 72) + 128);
    v52 = *(a3 + 8 * *(a1 + 72) + 136);
    v34 = [v52 intValue];
    v83 = 0;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v74[0] = [v64 BOOLValue];
    v74[1] = [v63 BOOLValue];
    v57 = v29;
    v74[2] = [v29 BOOLValue];
    v56 = v30;
    [v30 unsignedCharValue];
    v74[3] = ITDBPlaylistLimitFromSmartPlaylistLimit();
    [v62 unsignedIntValue];
    v75 = bswap32(ITDBTrackOrderForTrackOrder());
    v55 = v31;
    v76 = bswap32([v31 unsignedIntValue]);
    v54 = v32;
    LOBYTE(v77) = [v32 BOOLValue];
    v53 = v33;
    BYTE1(v77) = [v33 BOOLValue];
    BYTE2(v77) = [v71 BOOLValue];
    if (!v34)
    {
      [v60 unsignedIntValue];
      DWORD1(v77) = bswap32(ITDBTrackOrderForTrackOrder());
    }

    v23 = v20;
    v35 = [NSData dataWithBytes:v74 length:112];
    v36 = [NSMutableDictionary dictionaryWithObject:v35 forKey:@"smartInfo"];
    v37 = v36;
    if (v22)
    {
      [v36 setObject:v22 forKey:@"contentFilter"];
    }

    v24 = v22;
    if (v34 - 200 >= 7)
    {
      v38 = &__kCFBooleanFalse;
    }

    else
    {
      v38 = &__kCFBooleanTrue;
    }

    [v37 setObject:v38 forKey:@"isDefaultSmartPlaylist"];
    v39 = [v65 longLongValue];
    if (v39)
    {
      v84 = @"persistent-id";
      v40 = [NSString stringWithFormat:@"%llx", v39];
      v85 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v86 = v41;
      v42 = [NSArray arrayWithObjects:&v86 count:1];
      [v10 setObject:v42 forKeyedSubscript:@"genius-seed-tracks"];
    }

    v43 = [NSPropertyListSerialization dataWithPropertyList:v37 format:200 options:0 error:0];
    if (v43)
    {
      [v10 setObject:v43 forKey:@"data"];
    }

    v26 = ICPushNotificationMessage_ptr;
    v19 = v61;
    v21 = v58;
    v25 = v66;
    if ((v59 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  *a5 = 1;
LABEL_15:
  objc_autoreleasePoolPop(v9);
}

void sub_100123D14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100123DB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100123E4C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Importing cloud-ids failed with error: %{public}@", &v8, 0x16u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100123F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = @"persistent-id";
  v3 = [NSNumber numberWithLongLong:a2];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addObject:v4];
}

uint64_t sub_100123FF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213E50 = result;
  return result;
}

void sub_100125EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_100125F64(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_100125FD8(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

uint64_t sub_10012604C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100126064(uint64_t a1, void *a2)
{
  v3 = a2;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
  v89[0] = v4;
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) ml3EntityType]);
  v89[1] = v5;
  v6 = [NSArray arrayWithObjects:v89 count:2];
  v7 = [v3 executeQuery:@"SELECT pin_pid withParameters:{position from library_pins WHERE entity_pid=? AND entity_type=?", v6}];

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100126F34;
  v75[3] = &unk_1001DEED8;
  v75[4] = *(a1 + 32);
  v75[5] = &v76;
  [v7 enumerateRowsWithBlock:v75];
  if (![*(a1 + 32) pinPersistentID])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setStatus:3];
    v13 = [NSError msv_errorWithDomain:ICErrorDomain code:-8405 debugDescription:@"cannot find pinned entity"];
    [*(a1 + 32) setError:v13];

    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v86 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Entity is not pinned", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = v77[3];
  if (v8 != [*(a1 + 32) position])
  {
    v16 = [v3 executeQuery:@"SELECT COUNT() from library_pins"];

    v17 = [v16 int64ValueForFirstRowAndColumn];
    if ([*(a1 + 32) position] > v17)
    {
      v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = [v19 position];
        *buf = 138543874;
        v86 = v19;
        v87 = 1024;
        *v88 = v20;
        *&v88[4] = 2048;
        *&v88[6] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Cannot move pinned entity to position=%d as we only have %lld pinned entities", buf, 0x1Cu);
      }

LABEL_23:
      if (!*(*(*(a1 + 48) + 8) + 24) && ![*(*(*(a1 + 56) + 8) + 40) length])
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        v67 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"cannot find pinned entity"];
        [*(a1 + 32) setError:v67];

        v68 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = *(a1 + 32);
          *buf = 138543362;
          v86 = v69;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%{public}@ Could not find valid identifiers for position to move", buf, 0xCu);
        }

        goto LABEL_47;
      }

      v30 = [*(a1 + 32) position];
      if (v30 <= v77[3])
      {
        v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) position]);
        v81[0] = v40;
        v41 = [NSNumber numberWithLongLong:v77[3]];
        v81[1] = v41;
        v42 = [NSArray arrayWithObjects:v81 count:2];
        v43 = *(*(a1 + 72) + 8);
        v72 = *(v43 + 40);
        v44 = [v3 executeUpdate:@"UPDATE library_pins SET position=position+1 WHERE (position >= ? AND position < ?)" withParameters:v42 error:&v72];
        objc_storeStrong((v43 + 40), v72);
        *(*(*(a1 + 64) + 8) + 24) = v44;

        if (*(*(*(a1 + 64) + 8) + 24))
        {
          goto LABEL_34;
        }

        v36 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
LABEL_33:

LABEL_34:
          v47 = +[NSUUID UUID];
          v48 = [v47 UUIDString];
          [*(a1 + 32) setPositionUUID:v48];

          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            goto LABEL_41;
          }

          v49 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) position]);
          v80[0] = v49;
          v50 = [*(a1 + 32) positionUUID];
          v80[1] = v50;
          v51 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) pinPersistentID]);
          v80[2] = v51;
          v52 = [NSArray arrayWithObjects:v80 count:3];
          v53 = *(*(a1 + 72) + 8);
          v71 = *(v53 + 40);
          v54 = [v3 executeUpdate:@"UPDATE library_pins SET position=? withParameters:position_uuid=? WHERE pin_pid=?" error:{v52, &v71}];
          objc_storeStrong((v53 + 40), v71);
          *(*(*(a1 + 64) + 8) + 24) = v54;

          if (v54)
          {
            v55 = [*(a1 + 32) musicLibrary];
            *(*(*(a1 + 64) + 8) + 24) = +[ML3LibraryPin incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3LibraryPin, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", v55, [*(a1 + 32) pinPersistentID], 0, 0, v3);

            if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
            {
              v56 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v57 = *(a1 + 32);
                v58 = [v57 pinPersistentID];
                *buf = 138543618;
                v86 = v57;
                v87 = 2048;
                *v88 = v58;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@ Could not update entity revision for pinPID=%lld", buf, 0x16u);
              }
            }

            [*(a1 + 32) setState:1];
          }

          else
          {
LABEL_41:
            v59 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v60 = *(a1 + 32);
              v61 = *(*(*(a1 + 72) + 8) + 40);
              *buf = 138543618;
              v86 = v60;
              v87 = 2114;
              *v88 = v61;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}@ could not update postion of moved entity - error=%{public}@", buf, 0x16u);
            }
          }

          v62 = *(*(*(a1 + 72) + 8) + 40);
          if (v62)
          {
            v63 = [v62 msv_errorByRemovingUnsafeUserInfo];
            v64 = [NSError msv_errorWithDomain:ICErrorDomain code:-8406 underlyingError:v63 debugDescription:@"Could not set properties locally"];
            [*(a1 + 32) setError:v64];
          }

          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100127098;
          v70[3] = &unk_1001DEF00;
          v70[4] = *(a1 + 32);
          [v3 enqueueBlockForTransactionCommit:v70];
LABEL_47:
          v7 = v16;
          goto LABEL_48;
        }

        v45 = *(a1 + 32);
        v46 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138543618;
        v86 = v45;
        v87 = 2114;
        *v88 = v46;
        v39 = "%{public}@ could not slide pinned entities forwards - error=%{public}@";
      }

      else
      {
        v31 = [NSNumber numberWithLongLong:?];
        v82[0] = v31;
        v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) position]);
        v82[1] = v32;
        v33 = [NSArray arrayWithObjects:v82 count:2];
        v34 = *(*(a1 + 72) + 8);
        obj = *(v34 + 40);
        v35 = [v3 executeUpdate:@"UPDATE library_pins SET position=position-1 WHERE (position > ? AND position <= ?)" withParameters:v33 error:&obj];
        objc_storeStrong((v34 + 40), obj);
        *(*(*(a1 + 64) + 8) + 24) = v35;

        if (*(*(*(a1 + 64) + 8) + 24))
        {
          goto LABEL_34;
        }

        v36 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        v37 = *(a1 + 32);
        v38 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138543618;
        v86 = v37;
        v87 = 2114;
        *v88 = v38;
        v39 = "%{public}@ could not slide pinned entities backwards - error=%{public}@";
      }

      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);
      goto LABEL_33;
    }

    if ([*(a1 + 32) position])
    {
      if ([*(a1 + 32) position] != v17)
      {
        v23 = v77[3];
        v24 = [*(a1 + 32) position];
        v25 = *(a1 + 32);
        if (v23 >= v24)
        {
          v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 position] - 1);
          v83 = v26;
          [NSArray arrayWithObjects:&v83 count:1];
        }

        else
        {
          v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 position]);
          v84 = v26;
          [NSArray arrayWithObjects:&v84 count:1];
        }
        v27 = ;
        v28 = [v3 executeQuery:@"SELECT position_uuid FROM library_pins WHERE position=?" withParameters:v27];

        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_100126F98;
        v74[3] = &unk_1001DEED8;
        v29 = *(a1 + 56);
        v74[4] = *(a1 + 32);
        v74[5] = v29;
        [v28 enumerateRowsWithBlock:v74];
        v16 = v28;
        goto LABEL_23;
      }

      v21 = *(*(a1 + 48) + 8);
      v22 = 2;
    }

    else
    {
      v21 = *(*(a1 + 48) + 8);
      v22 = 1;
    }

    *(v21 + 24) = v22;
    goto LABEL_23;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = [v10 pinPersistentID];
    v12 = v77[3];
    *buf = 138543874;
    v86 = v10;
    v87 = 2048;
    *v88 = v11;
    *&v88[8] = 2048;
    *&v88[10] = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ pinned item with pid=%lld is already in the correct position=%lld", buf, 0x20u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  [*(a1 + 32) setStatus:1];
LABEL_9:
  [*(a1 + 32) setState:1];
LABEL_48:
  v65 = *(*(*(a1 + 64) + 8) + 24);
  _Block_object_dispose(&v76, 8);

  return v65 & 1;
}

void sub_100126C58(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_100126CCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v25 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2114;
    v31 = v25;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = v16;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  [*(a1 + 40) setError:v6];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100126F34(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setPinPersistentID:{objc_msgSend(v3, "int64ForColumnIndex:", 0)}];
  v4 = [v3 int64ForColumnIndex:1];

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

void sub_100126F98(uint64_t a1, void *a2)
{
  v3 = [a2 stringForColumnIndex:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (![*(*(*(a1 + 40) + 8) + 40) length])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 1024;
      v11 = [v7 position];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Invalid position UUID for item at position=%d", &v8, 0x12u);
    }
  }
}

void sub_100127098(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) musicLibrary];
    [v3 notifyEntitiesAddedOrRemoved];

    v4 = [*(a1 + 32) musicLibrary];
    [v4 notifyContentsDidChange];
  }

  v5 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100127178;
    block[3] = &unk_1001DF578;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}