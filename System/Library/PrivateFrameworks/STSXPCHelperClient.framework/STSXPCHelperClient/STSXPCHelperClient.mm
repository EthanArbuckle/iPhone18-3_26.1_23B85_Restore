id sub_2644F6F40(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_cborWithData_(MEMORY[0x277CF39D8], a2, a1);
  v4 = objc_msgSend_cborWithInteger_(MEMORY[0x277CF39D8], v3, 24);
  objc_msgSend_setTag_(v2, v5, v4);

  return v2;
}

id sub_2644F6FAC(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CBEA90];
  v4 = objc_msgSend_cborEncodeToBstrCbor(a1, a2, a3);
  v6 = objc_msgSend_dataWithCBOR_(v3, v5, v4);

  return v6;
}

id sub_2644F7008(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_length(v3, v4, v5);
  v10 = v6;
  if (!v6 || (v6 & 1) != 0)
  {
    sub_2645011D4(OS_LOG_TYPE_ERROR, 0, "+[NSData(STSExtension) STS_dataFromHexString:]", 25, @"String is of invalid length=%ld", v7, v8, v9, v6);
    v32 = 0;
    goto LABEL_16;
  }

  v11 = objc_alloc(MEMORY[0x277CBEB28]);
  v13 = objc_msgSend_initWithLength_(v11, v12, v10 >> 1);
  v17 = v13;
  if (!v13)
  {
    sub_2645011D4(OS_LOG_TYPE_ERROR, 0, "+[NSData(STSExtension) STS_dataFromHexString:]", 31, @"Memory allocation request failed.", v14, v15, v16, v35);
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

  v18 = v13;
  v21 = objc_msgSend_mutableBytes(v18, v19, v20);
  v22 = v3;
  v25 = objc_msgSend_UTF8String(v22, v23, v24);
  __str[2] = 0;
  v28 = *v25;
  if (*v25)
  {
    v29 = v25 + 2;
    v30 = MEMORY[0x277D85DE0];
    do
    {
      __str[0] = v28;
      v31 = *(v29 - 1);
      __str[1] = *(v29 - 1);
      if ((v28 & 0x80) != 0)
      {
        goto LABEL_14;
      }

      v32 = 0;
      if ((*(v30 + 4 * v28 + 60) & 0x10000) == 0 || v31 < 0)
      {
        goto LABEL_15;
      }

      if ((*(v30 + 4 * v31 + 60) & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      *v21++ = strtoul(__str, 0, 16);
      v33 = *v29;
      v29 += 2;
      v28 = v33;
    }

    while (v33);
  }

  v32 = objc_msgSend_copy(v17, v26, v27);
LABEL_15:

LABEL_16:

  return v32;
}

__CFString *sub_2644F7170(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  if (!v4)
  {
    goto LABEL_7;
  }

  v7 = v4;
  v8 = objc_msgSend_length(a1, v5, v6);
  v9 = malloc_type_malloc((2 * v8) | 1, 0x100004077774924uLL);
  if (!v9)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[NSData(STSExtension) STS_asHexString]", 65, a1, @"Memory allocation request failed.", v10, v11, v22);
LABEL_7:
    v20 = &stru_2875F9850;
    goto LABEL_8;
  }

  v12 = v9;
  v9[2 * v8] = 0;
  v13 = a1;
  v16 = objc_msgSend_bytes(v13, v14, v15);
  v17 = v12;
  do
  {
    v18 = *v16++;
    sprintf(v17, "%02X", v18);
    v17 += 2;
    --v7;
  }

  while (v7);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v12);
  free(v12);
LABEL_8:

  return v20;
}

id sub_2644F728C(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB28]);
  v5 = objc_msgSend_length(a1, v3, v4);
  v7 = objc_msgSend_initWithLength_(v2, v6, v5);
  v8 = v7;
  v11 = objc_msgSend_mutableBytes(v8, v9, v10);
  v14 = objc_msgSend_length(a1, v12, v13) - 1;
  if (v14 >= 0)
  {
    do
    {
      v15 = a1;
      *v11++ = *(objc_msgSend_bytes(v15, v16, v17) + v14--);
    }

    while (v14 != -1);
  }

  return v7;
}

id sub_2644FB7E4(uint64_t a1)
{
  v2 = 0;
  v3 = *MEMORY[0x277CCA050];
  v4 = 2;
  while (1)
  {
    v5 = v2;
    v2 = (*(a1 + 16))(a1);

    if (!v2)
    {
      break;
    }

    v8 = objc_msgSend_domain(v2, v6, v7);
    if (!objc_msgSend_isEqual_(v8, v9, v3))
    {

LABEL_11:
      v14 = v2;
      break;
    }

    v12 = objc_msgSend_code(v2, v10, v11);

    if (v12 != 4097 || v4-- == 0)
    {
      goto LABEL_11;
    }
  }

  return v2;
}

id sub_2644FB8B8(void *a1, const char *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2644FBA2C;
  v16 = sub_2644FBA3C;
  v17 = 0;
  v3 = a1[4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2644FBA44;
  v11[3] = &unk_279B5FD88;
  v11[4] = v3;
  v11[5] = &v12;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v11);
  v5 = a1[5];
  v6 = a1[6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2644FBABC;
  v10[3] = &unk_279B5FDB0;
  v10[4] = &v12;
  objc_msgSend_startConnectionHandoverWithConfiguration_type_credentialType_callback_(v4, v7, v5, v6, 0, v10);

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_2644FBA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2644FBA2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2644FBA44(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:delegate:]_block_invoke", 80, *(a1 + 32), @"XPC Error: %@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

id sub_2644FBBFC(uint64_t a1, const char *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2644FBA2C;
  v17 = sub_2644FBA3C;
  v18 = 0;
  v3 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2644FBD70;
  v12[3] = &unk_279B5FD88;
  v12[4] = v3;
  v12[5] = &v13;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v12);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2644FBDE8;
  v11[3] = &unk_279B5FDB0;
  v11[4] = &v13;
  objc_msgSend_startConnectionHandoverWithConfiguration_type_credentialType_callback_(v4, v8, v5, v6, v7, v11);

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_2644FBD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2644FBD70(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary startISO18013WithConnectionHandoverConfiguration:type:credentialType:delegate:]_block_invoke_2", 106, *(a1 + 32), @"XPC Error: %@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

id sub_2644FBEEC(uint64_t a1, const char *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2644FBA2C;
  v15 = sub_2644FBA3C;
  v16 = 0;
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2644FC05C;
  v10[3] = &unk_279B5FD88;
  v10[4] = v3;
  v10[5] = &v11;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v10);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2644FC0D4;
  v9[3] = &unk_279B5FDB0;
  v9[4] = &v11;
  objc_msgSend_connectNotificationListenerEndpoint_callback_(v4, v6, v5, v9);

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void sub_2644FC044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2644FC05C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary connectToNotificationListener:]_block_invoke_2", 132, *(a1 + 32), @"XPC Error: %@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_2644FC250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = *MEMORY[0x277D85DE8];
  HIWORD(v18) = 111;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary processUnifiedAccessStepupAPDU:callbackQueue:responseHandler:]_block_invoke", 158, *(a1 + 32), @"Not initialized", a7, a8, v18);
  v9 = *(a1 + 40);
  v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, &v18 + 6, 2);
  v12 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277CCA450];
  v20[0] = @"Not initialized";
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v20, &v19, 1);
  v16 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v15, @"STSXPCHelperErrorDomain", 2, v14);

  (*(v9 + 16))(v9, v11, v16, 1);
  v17 = *MEMORY[0x277D85DE8];
}

void sub_2644FC574(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2644FC668;
    block[3] = &unk_279B5FE50;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FC680(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary processConnectionHandoverRequest:callbackQueue:responseHandler:]_block_invoke_3", 193, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_2644FC8FC(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2644FCA04;
    v10[3] = &unk_279B5FEF0;
    v13 = *(a1 + 40);
    v11 = v7;
    v14 = a3;
    v12 = v8;
    dispatch_async(v9, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FCA20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary processConnectionHandoverRequestData:callbackQueue:responseHandler:]_block_invoke_3", 227, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_2644FCC84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2644FCD78;
    block[3] = &unk_279B5FE50;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FCD90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary generateConnectionHandoverRequestWithQueue:responseHandler:]_block_invoke_3", 257, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_2644FCFF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2644FD0E4;
    block[3] = &unk_279B5FE50;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FD0FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary generateQRCodeCHRequestAndStartACWithQueue:responseHandler:]_block_invoke_3", 279, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_2644FD370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2644FD440;
    v5[3] = &unk_279B5FFB8;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FD454(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary connectRemoteWithConnectionHandoverSelect:callbackQueue:responseHandler:]_block_invoke_3", 306, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

void sub_2644FD6C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2644FD794;
    v5[3] = &unk_279B5FFB8;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2644FD7A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary connectRemoteWithQRCodeHandoverData:callbackQueue:responseHandler:]_block_invoke_3", 328, v3, @"XPC Error: %@", v4, v5, v6);
  (*(*(a1 + 40) + 16))();
}

id sub_2644FD9CC(uint64_t a1, const char *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2644FBA2C;
  v19 = sub_2644FBA3C;
  v20 = 0;
  v3 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2644FDB18;
  v14[3] = &unk_279B5FD88;
  v14[4] = v3;
  v14[5] = &v15;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v14);
  v7 = objc_msgSend_seProxyListener(*(a1 + 32), v5, v6);
  v10 = sub_264502450(v7, v8, v9);
  objc_msgSend_transferSEProxyWithXPCEndpoint_(v4, v11, v10);

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void sub_2644FDB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2644FDB18(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary startSEProxyListener:parameters:workQueue:]_block_invoke_2", 364, *(a1 + 32), @"XPC Error: %@", v4, v5, *(*(*(a1 + 40) + 8) + 40));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

id sub_2644FE388(uint64_t a1, const char *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_2644FBA2C;
  v12 = sub_2644FBA3C;
  v13 = 0;
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2644FE4A4;
  v7[3] = &unk_279B5FD88;
  v7[4] = v2;
  v7[5] = &v8;
  v3 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v2, a2, v7);
  objc_msgSend_invalidateWithCompletion_(v3, v4, &unk_2875F97B0);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_2644FE48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2644FE4A4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSHelperLibrary invalidate]_block_invoke_2", 468, *(a1 + 32), @"XPC Error: %@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_2644FE51C()
{
  v0 = sub_2645012A0();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_2644F6000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalidate STSXPCHeler", &unk_264509B0B, v1, 2u);
  }
}

void sub_2644FEA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2644FEA40(uint64_t a1)
{
  v2 = _os_activity_create(&dword_2644F6000, "STSHelperLibrary xpcInvalidated", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v2, &v8);
  os_activity_scope_leave(&v8);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_xpc(WeakRetained, v4, v5);
  objc_msgSend_didInvalidateXPC_connection_(WeakRetained, v7, 1, v6);
}

void sub_2644FEAD4(uint64_t a1)
{
  v2 = _os_activity_create(&dword_2644F6000, "STSHelperLibrary xpcInterrupted", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v2, &v8);
  os_activity_scope_leave(&v8);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_msgSend_xpc(WeakRetained, v4, v5);
  objc_msgSend_didInvalidateXPC_connection_(WeakRetained, v7, 0, v6);
}

id sub_2644FEED4(void *a1, const char *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2644FBA2C;
  v17 = sub_2644FBA3C;
  v18 = 0;
  v3 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2644FF044;
  v12[3] = &unk_279B5FDB0;
  v12[4] = &v13;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v12);
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2644FF054;
  v11[3] = &unk_279B5FDB0;
  v11[4] = &v13;
  objc_msgSend_testWifiHandoverSessionWithServiceName_publisherRole_datapathPMK_datapathPMKID_callback_(v4, v8, v5, 1, v6, v7, v11);

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_2644FF02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2644FF1A4(void *a1, const char *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2644FBA2C;
  v17 = sub_2644FBA3C;
  v18 = 0;
  v3 = a1[4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2644FF314;
  v12[3] = &unk_279B5FDB0;
  v12[4] = &v13;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v12);
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2644FF324;
  v11[3] = &unk_279B5FDB0;
  v11[4] = &v13;
  objc_msgSend_testWifiHandoverSessionWithServiceName_publisherRole_datapathPMK_datapathPMKID_callback_(v4, v8, v5, 0, v6, v7, v11);

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_2644FF2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2644FF504(uint64_t a1, const char *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2644FBA2C;
  v17 = sub_2644FBA3C;
  v18 = 0;
  v3 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2644FF674;
  v12[3] = &unk_279B5FDB0;
  v12[4] = &v13;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v12);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2644FF684;
  v11[3] = &unk_279B5FDB0;
  v11[4] = &v13;
  objc_msgSend_testBluetoothHandoverSessionType_uuid_peripheralAddress_callback_(v4, v8, v5 ^ 1, v6, v7, v11);

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_2644FF65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2644FF864(uint64_t a1, const char *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2644FBA2C;
  v18 = sub_2644FBA3C;
  v19 = 0;
  v3 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2644FF9DC;
  v13[3] = &unk_279B5FDB0;
  v13[4] = &v14;
  v4 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v3, a2, v13);
  v6 = v4;
  if (*(a1 + 56))
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2644FF9EC;
  v12[3] = &unk_279B5FDB0;
  v12[4] = &v14;
  objc_msgSend_testBluetoothHandoverSessionType_uuid_peripheralAddress_callback_(v4, v5, v7, v8, v9, v12);

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void sub_2644FF9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_2644FF9FC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  v6 = objc_msgSend_bytes(v3, v4, v5);
  v7 = v2;
  v10 = objc_msgSend_bytes(v7, v8, v9);
  v13 = objc_msgSend_length(v2, v11, v12);
  if (objc_msgSend_length(v2, v14, v15) < 4)
  {
    v16 = 0;
    goto LABEL_46;
  }

  v17 = (v10 + v13);
  v18 = objc_alloc_init(STSApdu);
  p_isa = &v18->super.isa;
  if (v18)
  {
    v18->_cls = *v6;
    v18->_instruction = *(v6 + 1);
    v18->_p1 = *(v6 + 2);
    v18->_p2 = *(v6 + 3);
  }

  v20 = (v6 + 4);
  if ((v6 + 4) == v17)
  {
    goto LABEL_44;
  }

  v21 = *v20;
  v22 = *v20 == 0;
  if (*v20)
  {
    v23 = (v6 + 5);
    v24 = *v20;
  }

  else
  {
    v26 = v17 - v20;
    if (v26 == 1)
    {
      v22 = 0;
      v24 = 0;
      v23 = (v6 + 5);
      v25 = 1;
      goto LABEL_16;
    }

    if (v26 <= 2)
    {
      goto LABEL_36;
    }

    v23 = (v6 + 7);
    v24 = __rev16(*(v6 + 5));
    if (!v24)
    {
      v25 = 0;
      v22 = 1;
      goto LABEL_16;
    }
  }

  v25 = v21 != 0;
  if (v17 - v23 >= v24)
  {
    v27 = v2;
    v30 = objc_msgSend_bytes(v27, v28, v29);
    v32 = objc_msgSend_subdataWithRange_(v2, v31, v23 - v30, v24);
    if (p_isa)
    {
      objc_storeStrong(p_isa + 2, v32);
    }

    v23 = (v23 + v24);
  }

  else if (v17 - v23 > 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  if (v23 == v17)
  {
    if (p_isa && p_isa[2])
    {
LABEL_44:
      v16 = p_isa;
      goto LABEL_45;
    }

    if (v24)
    {
      v36 = v24;
    }

    else
    {
      v36 = 0x10000;
    }

    if (v24)
    {
      v37 = v24;
    }

    else
    {
      v37 = 253;
    }

    if (v22)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }

LABEL_41:
    v39 = objc_alloc(MEMORY[0x277CCABB0]);
    v41 = objc_msgSend_initWithInt_(v39, v40, v38);
    if (p_isa)
    {
      objc_storeStrong(p_isa + 3, v41);
    }

    goto LABEL_44;
  }

  if (v17 - v23 == 2)
  {
    if (!v25)
    {
      v33 = __rev16(*v23);
      v34 = v33 == 0;
      v35 = 0x10000;
LABEL_38:
      if (v34)
      {
        v38 = v35;
      }

      else
      {
        v38 = v33;
      }

      goto LABEL_41;
    }
  }

  else if (v17 - v23 == 1 && !v22)
  {
    v33 = *v23;
    v34 = v33 == 0;
    v35 = 253;
    goto LABEL_38;
  }

LABEL_36:
  v16 = 0;
LABEL_45:

LABEL_46:

  return v16;
}

id sub_264500ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_data(MEMORY[0x277CBEB28], v4, v5);
  v85 = 0;
  v84 = objc_msgSend_header(v3, v7, v8);
  objc_msgSend_appendBytes_length_(v6, v9, &v84, 1);
  v12 = objc_msgSend_type(v3, v10, v11);
  if (v12)
  {
  }

  else if (!objc_msgSend_typeNameFormat(v3, v13, v14))
  {
    v85 = 0;
    objc_msgSend_appendBytes_length_(v6, v15, &v85, 1);
    v85 = 0;
    objc_msgSend_appendBytes_length_(v6, v82, &v85, 1);
    goto LABEL_22;
  }

  v17 = objc_msgSend_type(v3, v15, v16);
  v85 = objc_msgSend_length(v17, v18, v19);

  objc_msgSend_appendBytes_length_(v6, v20, &v85, 1);
  if (objc_msgSend_shortRecord(v3, v21, v22))
  {
    v85 = 0;
    v25 = objc_msgSend_payload(v3, v23, v24);
    v28 = objc_msgSend_length(v25, v26, v27);

    if (v28)
    {
      v31 = objc_msgSend_payload(v3, v29, v30);
      v85 = objc_msgSend_length(v31, v32, v33);
    }
  }

  else
  {
    v34 = objc_msgSend_payload(v3, v23, v24);
    v37 = objc_msgSend_length(v34, v35, v36);

    if (v37)
    {
      v40 = objc_msgSend_payload(v3, v38, v39);
      v43 = objc_msgSend_length(v40, v41, v42);
    }

    else
    {
      v43 = 0;
    }

    v85 = HIBYTE(v43);
    objc_msgSend_appendBytes_length_(v6, v38, &v85, 1);
    v85 = BYTE2(v43);
    objc_msgSend_appendBytes_length_(v6, v44, &v85, 1);
    v85 = BYTE1(v43);
    objc_msgSend_appendBytes_length_(v6, v45, &v85, 1);
    v85 = v43;
  }

  objc_msgSend_appendBytes_length_(v6, v29, &v85, 1);
  if (objc_msgSend__idLengthPresent(v3, v46, v47))
  {
    v50 = objc_msgSend_identifier(v3, v48, v49);
    v53 = objc_msgSend_length(v50, v51, v52);

    if (v53)
    {
      v54 = objc_msgSend_identifier(v3, v48, v49);
      v85 = objc_msgSend_length(v54, v55, v56);

      objc_msgSend_appendBytes_length_(v6, v57, &v85, 1);
    }
  }

  v58 = objc_msgSend_type(v3, v48, v49);
  v61 = objc_msgSend_length(v58, v59, v60);

  if (v61)
  {
    v64 = objc_msgSend_type(v3, v62, v63);
    objc_msgSend_appendData_(v6, v65, v64);
  }

  if (objc_msgSend__idLengthPresent(v3, v62, v63))
  {
    v68 = objc_msgSend_identifier(v3, v66, v67);
    v71 = objc_msgSend_length(v68, v69, v70);

    if (v71)
    {
      v72 = objc_msgSend_identifier(v3, v66, v67);
      objc_msgSend_appendData_(v6, v73, v72);
    }
  }

  v74 = objc_msgSend_payload(v3, v66, v67);
  v77 = objc_msgSend_length(v74, v75, v76);

  if (v77)
  {
    v80 = objc_msgSend_payload(v3, v78, v79);
    objc_msgSend_appendData_(v6, v81, v80);
  }

LABEL_22:

  return v6;
}

id sub_264500DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_new();
  if (objc_msgSend_count(v3, v5, v6))
  {
    v9 = 0;
    do
    {
      if (!v9)
      {
        v10 = objc_msgSend_objectAtIndexedSubscript_(v3, v7, 0);
        objc_msgSend_setMessageBegin_(v10, v11, 1);
      }

      if (v9 == objc_msgSend_count(v3, v7, v8) - 1)
      {
        v13 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, v9);
        objc_msgSend_setMessageEnd_(v13, v14, 1);
      }

      v15 = MEMORY[0x277CBEA90];
      v16 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, v9);
      v18 = objc_msgSend_dataWithSTSNDEFRecord_(v15, v17, v16);
      objc_msgSend_appendData_(v4, v19, v18);

      ++v9;
    }

    while (v9 < objc_msgSend_count(v3, v20, v21));
  }

  v22 = objc_msgSend_copy(v4, v7, v8);

  return v22;
}

uint64_t sub_264500F18()
{
  if (qword_27FF71B40 != -1)
  {
    dispatch_once(&qword_27FF71B40, &unk_2875F97D0);
  }

  return dword_27FF71B3C;
}

uint64_t sub_264500F60()
{
  result = arc4random();
  dword_27FF71B3C = result;
  return result;
}

void sub_264500F80(os_log_type_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (qword_27FF71B50 != -1)
  {
    dispatch_once(&qword_27FF71B50, &unk_2875F9770);
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = objc_msgSend_initWithFormat_arguments_(v6, v7, v5, a3);
  v9 = v8;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  v13 = qword_27FF71B48;
  if (os_log_type_enabled(qword_27FF71B48, a1))
  {
    v15 = 136446210;
    v16 = v12;
    _os_log_impl(&dword_2644F6000, v13, a1, "%{public}s", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264501094()
{
  qword_27FF71B48 = os_log_create("com.apple.sts", "logging");

  return MEMORY[0x2821F96F8]();
}

void sub_2645010D8(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a5;
  v15 = a6;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_27FF71B68 != -1)
  {
    dispatch_once(&qword_27FF71B68, &unk_2875F9790);
  }

  if (byte_27FF71B38 == 1)
  {
LABEL_5:
    v16 = MEMORY[0x277CCACA8];
    v17 = v15;
    v20 = objc_msgSend_objectInstanceID(v14, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v16, v21, @"%08x [%s]:%d %@", v20, a3, a4, v17);

    sub_264500F80(a1, v22, &a9);
  }
}

void sub_2645011D4(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a5;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_27FF71B68 != -1)
  {
    dispatch_once(&qword_27FF71B68, &unk_2875F9790);
  }

  if (byte_27FF71B38 == 1)
  {
LABEL_5:
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s : %d : %@", a3, a4, v14);
    sub_264500F80(a1, v15, &a9);
  }
}

id sub_2645012A0()
{
  if (qword_27FF71B60 != -1)
  {
    dispatch_once(&qword_27FF71B60, &unk_2875F9750);
  }

  v1 = qword_27FF71B58;

  return v1;
}

uint64_t sub_2645012F4()
{
  qword_27FF71B58 = os_log_create("com.apple.sts.signpost", "GeneralSignposts");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_264501338()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    byte_27FF71B38 = 1;
  }

  return result;
}

void sub_264502078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26450209C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2645020B4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSRemoteTransceiverProxy transceive:outError:]_block_invoke", 55, *(a1 + 32), @"XPC error: %@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_26450212C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id *sub_2645022A4(id *a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = STSRemoteTransceiverProxyListener;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeWeak(v9 + 2, v7);
      objc_storeStrong(a1 + 3, a4);
      *(a1 + 8) = a3;
    }
  }

  return a1;
}

uint64_t sub_264502394(uint64_t result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (!*(result + 32))
    {
      v4 = objc_msgSend_anonymousListener(MEMORY[0x277CCAE98], a2, a3);
      v5 = *(v3 + 32);
      *(v3 + 32) = v4;

      objc_msgSend_setDelegate_(*(v3 + 32), v6, v3);
      v9 = *(v3 + 32);

      return objc_msgSend_resume(v9, v7, v8);
    }
  }

  return result;
}

void sub_264502408(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    objc_msgSend_invalidate(*(a1 + 32), a2, a3);
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

void **sub_264502450(void **a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    a1 = objc_msgSend_endpoint(a1[4], a2, a3);
    v3 = vars8;
  }

  return a1;
}

void sub_264502708(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_264502750(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSRemoteTransceiverProxyListener listener:shouldAcceptNewConnection:]_block_invoke", 101, a1[4], @"XPC invalidated", a7, a8, v14);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 5);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = objc_loadWeakRetained(a1 + 6);
  objc_msgSend_removeObject_(v11, v13, v12);
}

void sub_2645027F4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSRemoteTransceiverProxyListener listener:shouldAcceptNewConnection:]_block_invoke_2", 105, a1[4], @"XPC interrupted", a7, a8, v14);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 5);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = objc_loadWeakRetained(a1 + 6);
  objc_msgSend_removeObject_(v11, v13, v12);
}

id *sub_264502A80(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = STSUnifiedAccessHandler;
    v16 = objc_msgSendSuper2(&v20, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeWeak(v16 + 1, v11);
      objc_storeStrong(a1 + 2, a4);
      objc_storeStrong(a1 + 3, a5);
      objc_storeStrong(a1 + 4, a3);
      objc_storeStrong(a1 + 5, a6);
      v17 = objc_alloc_init(STSNFCHandoverHandler);
      v18 = a1[6];
      a1[6] = v17;
    }
  }

  return a1;
}

uint64_t sub_264502B94(uint64_t a1)
{
  hasPrefix = a1;
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277CBEA90]);
    v4 = objc_msgSend_initWithBytes_length_(v2, v3, &unk_264507639, 9);
    v7 = objc_msgSend_STS_asHexString(v4, v5, v6);

    v8 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = objc_msgSend_initWithBytes_length_(v8, v9, &unk_264507642, 9);
    v13 = objc_msgSend_STS_asHexString(v10, v11, v12);

    if (objc_msgSend_hasPrefix_(*(hasPrefix + 32), v14, v7))
    {
      hasPrefix = 1;
    }

    else
    {
      hasPrefix = objc_msgSend_hasPrefix_(*(hasPrefix + 32), v15, v13);
    }
  }

  return hasPrefix;
}

void sub_264502C50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_length(v5, v7, v8);
  v12 = *(a1 + 32);
  if (v9)
  {
    if (v12)
    {
      v13 = v12[6];
    }

    else
    {
      v13 = 0;
    }

    sub_26450554C(v13, v5);
    v24 = 0;
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_264505598(v15, *(a1 + 48), &v24);
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processStepupRequest:responseLe:callback:]_block_invoke", 107, *(a1 + 32), @"respApdu=%@, error=%@, isLastChunk=%d", v17, v18, v16);
    v19 = sub_264502B94(*(a1 + 32));
    (*(*(a1 + 40) + 16))(*(a1 + 40), v16, v6, (v19 ^ 1) & v24);
  }

  else
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processStepupRequest:responseLe:callback:]_block_invoke", 98, v12, @"Empty response", v10, v11, v23);
    v20 = objc_alloc(MEMORY[0x277CBEA90]);
    v22 = objc_msgSend_initWithBytes_length_(v20, v21, &unk_26450764B, 2);

    (*(*(a1 + 40) + 16))();
    v5 = v22;
  }
}

void sub_264502DBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _processStepupRequest:responseLe:callback:]_block_invoke_2", 118, v3, @"XPC Error: %@", v5, v6, v4);
  v7 = *(a1 + 40);
  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v8, &unk_26450764B, 2);
  (*(v7 + 16))(v7, v9, v4, 1);
}

void sub_264502E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_264502F44;
  v10[3] = &unk_279B60140;
  v8 = v6;
  v12 = v8;
  v10[4] = a1;
  v9 = v5;
  v11 = v9;
  sub_264504FDC(v7, v9, v10);
}

void sub_264502F44(uint64_t a1, char a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v38[0] = *MEMORY[0x277CCA450];
    v40[0] = off_27FF71AA8;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v40, v38, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"STSXPCHelperErrorDomain", 11, v12);

    (*(v10 + 16))(v10, v7, v14, 1);
  }

  else if (a2)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[3];
    }

    v37 = v15;
    v19 = objc_msgSend_unsignedIntegerValue(v37, v17, v18);
    v20 = *(a1 + 48);
    v21 = v20;
    if (v16)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_264502C50;
      v40[3] = &unk_279B60118;
      v40[4] = v16;
      v22 = v20;
      v41 = v22;
      v42 = v19;
      v23 = v9;
      v24 = MEMORY[0x26673B1B0](v40);
      WeakRetained = objc_loadWeakRetained((v16 + 8));
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_264502DBC;
      v38[3] = &unk_279B5FEA0;
      v38[4] = v16;
      v39 = v22;
      v27 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(WeakRetained, v26, v38);
      v28 = sub_264502B94(v16);
      v30 = v16 + 16;
      v29 = *(v16 + 16);
      v31 = *(v30 + 8);
      objc_msgSend_processUnifiedAccessStepupSessionEstablishment_forAcwg_endpointIdentifier_intermediateKeyMaterial_callback_(v27, v32, v23, v28, v31, v29, v24);
    }
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CBEA90]);
    v35 = objc_msgSend_initWithBytes_length_(v33, v34, &unk_26450764D, 2);
    (*(*(a1 + 48) + 16))();
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_264503228(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_length(v5, v7, v8);
  v12 = *(a1 + 32);
  if (v9)
  {
    if (v12)
    {
      v13 = v12[6];
    }

    else
    {
      v13 = 0;
    }

    sub_2645054F0(v13, v5);
    v23 = 0;
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_264505598(v15, *(a1 + 48), &v23);
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processExchangeRequest:responseLe:callback:]_block_invoke", 162, *(a1 + 32), @"respApdu=%@, error=%@, isLastChunk=%d", v17, v18, v16);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processExchangeRequest:responseLe:callback:]_block_invoke", 153, v12, @"Empty response", v10, v11, v22);
    v19 = objc_alloc(MEMORY[0x277CBEA90]);
    v21 = objc_msgSend_initWithBytes_length_(v19, v20, &unk_26450764B, 2);

    (*(*(a1 + 40) + 16))();
    v5 = v21;
  }
}

void sub_264503384(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _processExchangeRequest:responseLe:callback:]_block_invoke_2", 168, v3, @"XPC Error: %@", v5, v6, v4);
  v7 = *(a1 + 40);
  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v8, &unk_26450764B, 2);
  (*(v7 + 16))(v7, v9, v4, 1);
}

void sub_264503440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26450350C;
  v10[3] = &unk_279B60140;
  v8 = v6;
  v12 = v8;
  v10[4] = a1;
  v9 = v5;
  v11 = v9;
  sub_264505328(v7, v9, v10);
}

void sub_26450350C(uint64_t a1, char a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v40[0] = off_27FF71AA8;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v40, &v34, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"STSXPCHelperErrorDomain", 11, v12);

    (*(v10 + 16))(v10, v7, v14, 1);
  }

  else
  {
    if (a2)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      if (v15)
      {
        v15 = v15[3];
      }

      v17 = v15;
      v20 = objc_msgSend_unsignedIntegerValue(v17, v18, v19);
      v21 = *(a1 + 48);
      v22 = v21;
      if (v16)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_264503228;
        v40[3] = &unk_279B60118;
        v40[4] = v16;
        v23 = v21;
        v41 = v23;
        v42 = v20;
        v24 = v9;
        v25 = MEMORY[0x26673B1B0](v40);
        WeakRetained = objc_loadWeakRetained((v16 + 8));
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = sub_264503384;
        v37 = &unk_279B5FEA0;
        v38 = v16;
        v39 = v23;
        v28 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(WeakRetained, v27, &v34);
        v29 = sub_264502B94(v16);
        objc_msgSend_processUnifiedAccessStepupExchangeCommand_forAcwg_callback_(v28, v30, v24, v29, v25, v34, v35, v36, v37, v38);
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x277CBEA90]);
      v17 = objc_msgSend_initWithBytes_length_(v31, v32, &unk_26450764D, 2);
      (*(*(a1 + 48) + 16))();
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2645037CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v6 = a4;
  if (objc_msgSend_length(v19, v7, v8))
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 48);
    }

    else
    {
      v10 = 0;
    }

    sub_26450554C(v10, v19);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 48);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_264505598(v12, *(a1 + 48), 0);
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processHandoverRequest:responseLe:callback:]_block_invoke", 205, *(a1 + 32), @"respApdu=%@, error=%@", v14, v15, v13);
    (*(*(a1 + 40) + 16))();

    v6 = v13;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEA90]);
    v18 = objc_msgSend_initWithBytes_length_(v16, v17, &unk_26450764B, 2);

    (*(*(a1 + 40) + 16))();
    v19 = v18;
  }
}

void sub_264503910(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _processHandoverRequest:responseLe:callback:]_block_invoke_2", 210, v3, @"XPC Error: %@", v5, v6, v4);
  v8 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v7, &unk_26450764B, 2);
  (*(*(a1 + 40) + 16))();
}

void sub_2645039C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_264503A94;
  v10[3] = &unk_279B60140;
  v8 = v6;
  v12 = v8;
  v10[4] = a1;
  v9 = v5;
  v11 = v9;
  sub_264504FDC(v7, v9, v10);
}

void sub_264503A94(uint64_t a1, char a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v39[0] = off_27FF71AA8;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v39, &v33, 1);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"STSXPCHelperErrorDomain", 11, v12);

    (*(v10 + 16))(v10, v7, v14, 1);
  }

  else
  {
    if (a2)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      if (v15)
      {
        v15 = v15[3];
      }

      v17 = v15;
      v20 = objc_msgSend_unsignedIntegerValue(v17, v18, v19);
      v21 = *(a1 + 48);
      v22 = v21;
      if (v16)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = sub_2645037CC;
        v39[3] = &unk_279B60168;
        v23 = v21;
        v39[4] = v16;
        v40 = v23;
        v41 = v20;
        v24 = v9;
        v25 = MEMORY[0x26673B1B0](v39);
        WeakRetained = objc_loadWeakRetained((v16 + 8));
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = sub_264503910;
        v36 = &unk_279B5FEA0;
        v37 = v16;
        v38 = v23;
        v28 = objc_msgSend_asynchronousRemoteObjectProxyWithErrorHandler_(WeakRetained, v27, &v33);
        objc_msgSend_processHandoverRequest_callback_(v28, v29, v24, v25, v33, v34, v35, v36, v37);
      }
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x277CBEA90]);
      v17 = objc_msgSend_initWithBytes_length_(v30, v31, &unk_26450764D, 2);
      (*(*(a1 + 48) + 16))();
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_264503D44(void *a1, void *a2, void *a3)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v11 = objc_msgSend_length(v8, v9, v10);

  if (v11)
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _processControlFlow:callback:]", 381, a1, @"%@", v12, v13, v5);
    if (v5)
    {
      v14 = v5[2];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = 0x277CCA000uLL;
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v70 = *MEMORY[0x277CCA450];
    v71[0] = off_27FF71AA8;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v71, &v70, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v21, @"STSXPCHelperErrorDomain", 11, v20);

    if (objc_msgSend_length(v15, v23, v24))
    {
      v27 = v15;
      v30 = objc_msgSend_bytes(v27, v28, v29);
      v33 = objc_msgSend_length(v15, v31, v32);
      if (*v30 == 65)
      {
        if ((v33 - 1) > 1)
        {
          if (v30[1] == 1)
          {
            v68 = MEMORY[0x277CCA9B8];
            v70 = v18;
            v71[0] = STSXPCHelperErrorDescriptions;
            v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v71, &v70, 1);
            v69 = objc_msgSend_errorWithDomain_code_userInfo_(v68, v63, @"STSXPCHelperErrorDomain", 0, v62);

            if (v30[2] == 1)
            {
              v44 = 1;
              sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler _extractContentFromTag41:isCompleted:]", 359, a1, @"CONTROL_FLOW returned Success", v64, v65, v67);
            }

            else
            {
              sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _extractContentFromTag41:isCompleted:]", 362, a1, @"CONTROL_FLOW returned Failure %d", v64, v65, v30[2]);
              v44 = 0;
            }

            v22 = v69;
            v16 = 0x277CCA000;
LABEL_14:
            v38 = v22;

            if (objc_msgSend_code(v38, v45, v46) && (objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v47, &unk_26450764B, 2), (v48 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v50 = v48;
              v51 = *(v16 + 2488);
              v70 = v18;
              v71[0] = off_27FF71AA8;
              v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v71, &v70, 1);
              v54 = objc_msgSend_errorWithDomain_code_userInfo_(v51, v53, @"STSXPCHelperErrorDomain", 11, v52);

              v6[2](v6, v50, v54, 1);
            }

            else
            {
              v55 = objc_alloc(MEMORY[0x277CBEA90]);
              v50 = objc_msgSend_initWithBytes_length_(v55, v56, &unk_26450764D, 2);
              if (v44)
              {
                v6[2](v6, v50, 0, 1);
LABEL_21:

                goto LABEL_22;
              }

              v58 = *(v16 + 2488);
              v70 = v18;
              v71[0] = off_27FF71AD0;
              v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v71, &v70, 1);
              v54 = objc_msgSend_errorWithDomain_code_userInfo_(v58, v60, @"STSXPCHelperErrorDomain", 16, v59);

              v6[2](v6, v50, v54, 1);
            }

            goto LABEL_21;
          }

          v35 = @"Invalid CONTROL_FLOW payload length";
          v36 = 366;
        }

        else
        {
          v35 = @"Invalid CONTROL_FLOW payload";
          v36 = 351;
        }
      }

      else
      {
        v35 = @"Invalid CONTROL_FLOW payload";
        v36 = 346;
      }
    }

    else
    {
      v35 = @"Invalid CONTROL_FLOW payload";
      v36 = 338;
    }

    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _extractContentFromTag41:isCompleted:]", v36, a1, v35, v25, v26, v67);
    v44 = 0;
    goto LABEL_14;
  }

  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSUnifiedAccessHandler _processControlFlow:callback:]", 374, a1, @"Unexpected payload length 0", v12, v13, v66);
  v38 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v37, &unk_26450764B, 2);
  v39 = MEMORY[0x277CCA9B8];
  v70 = *MEMORY[0x277CCA450];
  v71[0] = off_27FF71AA8;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v71, &v70, 1);
  v43 = objc_msgSend_errorWithDomain_code_userInfo_(v39, v42, @"STSXPCHelperErrorDomain", 11, v41);

  v6[2](v6, v38, v43, 1);
LABEL_22:

  v61 = *MEMORY[0x277D85DE8];
}

void sub_26450429C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v164[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_264504CC0;
    v153[3] = &unk_279B60190;
    v154 = v7;
    v155 = v8;
    v9 = a2;
    v10 = MEMORY[0x26673B1B0](v153);
    v11 = sub_2644FF9FC(STSApdu, v9);

    if (!v11)
    {
      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 419, a1, @"Invalid APDU: %@", v12, v13, 0);
      v26 = MEMORY[0x277CCA9B8];
      v163 = *MEMORY[0x277CCA450];
      v164[0] = @"Invalid APDU";
      v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v164, &v163, 1);
      v30 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v29, @"STSXPCHelperErrorDomain", 5, v28);

      v31 = v10[2];
      v32 = v10;
      v33 = 0;
      v34 = v30;
LABEL_14:
      v35 = 1;
LABEL_43:
      v31(v32, v33, v34, v35);

      goto LABEL_44;
    }

    v14 = *(v11 + 9);
    if (v14 > 0xBF)
    {
      switch(v14)
      {
        case 0xC0u:
          v96 = *(v11 + 16);
          v99 = objc_msgSend_length(v96, v97, v98);

          if (!v99)
          {
            v159[0] = 0;
            v128 = *(a1 + 48);
            v129 = *(v11 + 24);
            v132 = objc_msgSend_unsignedIntegerValue(v129, v130, v131);
            v133 = sub_264505598(v128, v132, v159);

            if (v133)
            {
              v137 = 0;
            }

            else
            {
              v142 = MEMORY[0x277CCA9B8];
              v163 = *MEMORY[0x277CCA450];
              v164[0] = off_27FF71A60;
              v143 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v134, v164, &v163, 1);
              v137 = objc_msgSend_errorWithDomain_code_userInfo_(v142, v144, @"STSXPCHelperErrorDomain", 2, v143);
            }

            sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 468, a1, @"respApdu=%@, error=%@, isLastChunk=%d", v135, v136, v133);
            v145 = sub_264502B94(a1);
            (v10[2])(v10, v133, v137, v159[0] & ~v145);

            goto LABEL_44;
          }

          objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v100, &unk_264507651, 2);
          goto LABEL_41;
        case 0xC3u:
          v101 = *(v11 + 16);
          v104 = objc_msgSend_length(v101, v102, v103);

          if (!v104)
          {
            sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 430, a1, @"Missing payload", v106, v107, v148);
            v138 = objc_alloc(MEMORY[0x277CBEA90]);
            v116 = objc_msgSend_initWithBytes_length_(v138, v139, &unk_264507651, 2);
            goto LABEL_42;
          }

          if (!*(v11 + 10))
          {
            if (*(v11 + 11) == 1)
            {
              sub_2645039C8(a1, v11, v10);
              goto LABEL_44;
            }

            if (!*(v11 + 11))
            {
              sub_264502E78(a1, v11, v10);
              goto LABEL_44;
            }
          }

          objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v105, &unk_264507653, 2);
          v116 = LABEL_41:;
LABEL_42:
          v30 = v116;
          v31 = v10[2];
          v32 = v10;
          v33 = v30;
          v34 = 0;
          v35 = 0;
          goto LABEL_43;
        case 0xC9u:
          sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 441, a1, @"Exchange Command for termination for _protocolVersion: %@", v12, v13, *(a1 + 40));
          if (sub_264502B94(a1) && objc_msgSend_integerValue(*(a1 + 40), v15, v16) >= 8)
          {
            v19 = *(v11 + 16);
            v22 = objc_msgSend_length(v19, v20, v21);

            if (v22)
            {
              if (!*(v11 + 10) && !*(v11 + 11))
              {
                sub_264503440(a1, v11, v10);
LABEL_44:

                goto LABEL_45;
              }

              goto LABEL_36;
            }

            v141 = 445;
            goto LABEL_72;
          }

          v150 = *(a1 + 32);
          v151 = *(a1 + 40);
          sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 454, a1, @"Unsupported instruction: %@ for applet %@ and protocol version 0x%x", v17, v18, v11);
          goto LABEL_40;
      }

LABEL_37:
      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 488, a1, @"Unsupported instruction: %@", v12, v13, v11);
LABEL_40:
      objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v115, &unk_264507655, 2);
      goto LABEL_41;
    }

    if (v14 == 60)
    {
      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 471, a1, @"Control Flow", v12, v13, v148);
      if (sub_264502B94(a1))
      {
        v110 = *(v11 + 16);
        v113 = objc_msgSend_length(v110, v111, v112);

        if (v113)
        {
          if (!*(v11 + 10) && !*(v11 + 11))
          {
            sub_264503D44(a1, v11, v10);
            goto LABEL_44;
          }

LABEL_36:
          v114 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v23, &unk_264507653, 2);
LABEL_73:
          v30 = v114;
          v31 = v10[2];
          v32 = v10;
          v33 = v30;
          v34 = 0;
          goto LABEL_14;
        }

        v141 = 474;
LABEL_72:
        sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", v141, a1, @"Missing payload", v24, v25, v149);
        v146 = objc_alloc(MEMORY[0x277CBEA90]);
        v114 = objc_msgSend_initWithBytes_length_(v146, v147, &unk_264507651, 2);
        goto LABEL_73;
      }

      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler processReceivedRequest:callbackQueue:callback:]", 483, a1, @"Unsupported instruction: %@", v108, v109, v11);
      goto LABEL_40;
    }

    if (v14 != 164)
    {
      goto LABEL_37;
    }

    v36 = v11;
    v37 = sub_264502B94(a1);
    v38 = v36[2];
    v41 = objc_msgSend_length(v38, v39, v40);
    if (v37)
    {
      if (v41 == 9)
      {
        v42 = v36[2];
        v43 = v42;
        v46 = objc_msgSend_bytes(v43, v44, v45);
        v48 = *v46 != 0x55CEAC09090000A0 || *(v46 + 8) != 2;

        if (!v48)
        {
          v152 = objc_msgSend_data(MEMORY[0x277CBEB28], v49, v50);
          v161 = -124;
          v162 = 9;
          objc_msgSend_appendBytes_length_(v152, v53, &v161, 1);
          objc_msgSend_appendBytes_length_(v152, v54, &v162, 1);
          objc_msgSend_appendBytes_length_(v152, v55, &unk_264507642, 9);
          v58 = objc_msgSend_data(MEMORY[0x277CBEB28], v56, v57);
          v160 = 0x80;
          *v159 = 0;
          v162 = 2;
          objc_msgSend_appendBytes_length_(v58, v59, &v160, 1);
          objc_msgSend_appendBytes_length_(v58, v60, &v162, 1);
          objc_msgSend_appendBytes_length_(v58, v61, v159, 2);
          v64 = objc_msgSend_data(MEMORY[0x277CBEB28], v62, v63);
          v158 = 26239;
          LODWORD(v164[0]) = 918018;
          LODWORD(v163) = 918018;
          v162 = 8;
          objc_msgSend_appendBytes_length_(v64, v65, &v158, 2);
          objc_msgSend_appendBytes_length_(v64, v66, &v162, 1);
          objc_msgSend_appendBytes_length_(v64, v67, v164, 4);
          objc_msgSend_appendBytes_length_(v64, v68, &v163, 4);
          v71 = objc_msgSend_data(MEMORY[0x277CBEB28], v69, v70);
          v157 = -91;
          v74 = objc_msgSend_length(v58, v72, v73);
          v162 = objc_msgSend_length(v64, v75, v76) + v74;
          objc_msgSend_appendBytes_length_(v71, v77, &v157, 1);
          objc_msgSend_appendBytes_length_(v71, v78, &v162, 1);
          objc_msgSend_appendData_(v71, v79, v58);
          objc_msgSend_appendData_(v71, v80, v64);
          v83 = objc_msgSend_data(MEMORY[0x277CBEB28], v81, v82);
          v156 = 111;
          v86 = objc_msgSend_length(v152, v84, v85);
          v162 = objc_msgSend_length(v71, v87, v88) + v86;
          objc_msgSend_appendBytes_length_(v83, v89, &v156, 1);
          objc_msgSend_appendBytes_length_(v83, v90, &v162, 1);
          objc_msgSend_appendData_(v83, v91, v152);
          objc_msgSend_appendData_(v83, v92, v71);
          v94 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v93, &unk_26450764D, 2);
          objc_msgSend_appendData_(v83, v95, v94);

LABEL_64:
          (v10[2])(v10, v83, 0, 0);

          goto LABEL_44;
        }
      }

      else
      {
      }

      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler _processSelectAID:]", 315, a1, @"Unexpected SELECT: %@", v51, v52, v36);
    }

    else
    {
      if (v41 == 7)
      {
        v118 = v36[2];
        v119 = v118;
        v122 = objc_msgSend_bytes(v119, v120, v121);
        v124 = *v122 != 134217888 || *(v122 + 3) != 33642504;

        if (!v124)
        {
          objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v125, &unk_26450764D, 2);
          v83 = LABEL_63:;
          goto LABEL_64;
        }
      }

      else
      {
      }

      sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSUnifiedAccessHandler _processSelectAID:]", 324, a1, @"Unexpected SELECT: %@", v126, v127, v36);
    }

    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v140, &unk_26450764F, 2);
    goto LABEL_63;
  }

LABEL_45:

  v117 = *MEMORY[0x277D85DE8];
}

void sub_264504CC0(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_264504DA4;
  v13[3] = &unk_279B5FEF0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v14 = v7;
  v17 = a4;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

id sub_264504E94(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    v9 = objc_msgSend_length(v3, v4, v5);
    if (v9 >= 0x100)
    {
      if (objc_msgSend_length(v6, v7, v8) >= 0x10000)
      {
        if (objc_msgSend_length(v6, v11, v12) >> 32)
        {
          v10 = 8;
        }

        else
        {
          v10 = 4;
        }
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 1;
    }

    v24 = 83;
    v13 = objc_alloc(MEMORY[0x277CBEB28]);
    v15 = objc_msgSend_initWithBytes_length_(v13, v14, &v24, 1);
    a1 = v15;
    if (v9 > 0xFF)
    {
      v24 = v10 | 0x80;
      objc_msgSend_appendBytes_length_(v15, v16, &v24, 1);
      v21 = 8 * v10 - 8;
      do
      {
        v24 = objc_msgSend_length(v6, v19, v20) >> v21;
        objc_msgSend_appendBytes_length_(a1, v22, &v24, 1);
        v21 -= 8;
        --v10;
      }

      while (v10);
    }

    else
    {
      v24 = objc_msgSend_length(v6, v16, v17);
      objc_msgSend_appendBytes_length_(a1, v18, &v24, 1);
    }

    objc_msgSend_appendData_(a1, v19, v6);
  }

  return a1;
}

void sub_264504FDC(id *a1, void *a2, void *a3)
{
  v52 = a2;
  v5 = a3;
  if (a1)
  {
    if (v52)
    {
      v6 = v52[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v10 = objc_msgSend_length(v7, v8, v9);

    if (!v10)
    {
      sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNFCHandoverHandler processEnvelopeCommand:completionHandler:]", 116, a1, @"Unexpected payload length 0", v11, v12, v50);
      v31 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v30, &unk_264507657, 2);
      (v5)[2](v5, 1, v31, a1[1]);

      v32 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v33 = a1[1];
      a1[1] = v32;

      goto LABEL_18;
    }

    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSNFCHandoverHandler processEnvelopeCommand:completionHandler:]", 123, a1, @"%@", v11, v12, v52);
    v13 = a1[1];
    v14 = v13;
    if (v52)
    {
      v15 = v52[2];
      objc_msgSend_appendData_(v14, v16, v15);

      if ((v52[1] & 0x10) != 0)
      {
        (v5)[2](v5, 0, 0, a1[1]);
        goto LABEL_18;
      }
    }

    else
    {
      objc_msgSend_appendData_(v13, 0, 0);
    }

    v17 = a1[1];
    if (objc_msgSend_length(v17, v18, v19))
    {
      v22 = v17;
      v25 = objc_msgSend_bytes(v22, v23, v24);
      v28 = objc_msgSend_length(v17, v26, v27);
      if (*v25 == 83)
      {
        if (v28 == 1)
        {
          v29 = 49;
        }

        else
        {
          v41 = v25[1];
          if (v25[1] < 0)
          {
            v46 = v41 & 0x7F;
            v36 = v28 - 2;
            if (v28 - 2 < (v41 & 0x7F))
            {
              v29 = 59;
              goto LABEL_15;
            }

            v41 = 0;
            v42 = v25 + 2;
            if (v28 != 2 && v46)
            {
              v41 = 0;
              v47 = 2 - v28;
              do
              {
                v48 = *v42++;
                v41 = v48 | (v41 << 8);
                --v46;
                v49 = v47 + 1;
                if (!v46)
                {
                  break;
                }

                ++v47;
              }

              while (v47);
              v36 = -v49;
            }
          }

          else
          {
            v42 = v25 + 2;
            v36 = v28 - 2;
          }

          if (v41 == v36)
          {
            v43 = v17;
            v35 = &v42[-objc_msgSend_bytes(v43, v44, v45)];

            if (v36)
            {
              v37 = 0;
              goto LABEL_17;
            }

LABEL_16:
            v37 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v34, &unk_264507657, 2);
LABEL_17:
            v38 = objc_msgSend_subdataWithRange_(a1[1], v34, v35, v36);
            (v5)[2](v5, 1, v37, v38);

            v39 = objc_alloc_init(MEMORY[0x277CBEB28]);
            v40 = a1[1];
            a1[1] = v39;

            goto LABEL_18;
          }

          v29 = 73;
        }
      }

      else
      {
        v29 = 44;
      }
    }

    else
    {
      v29 = 36;
    }

LABEL_15:
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNFCHandoverHandler _extractContentFromTag53:]", v29, a1, @"Invalid ENVELOPE payload", v20, v21, v51);

    v35 = 0;
    v36 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

void sub_264505328(id *a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (v24)
  {
    v6 = v24[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v10 = objc_msgSend_length(v7, v8, v9);

  if (!v10)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNFCHandoverHandler processExchangeCommand:completionHandler:]", 146, a1, @"Unexpected payload length 0", v11, v12, v23);
    v20 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v19, &unk_264507657, 2);
    (v5)[2](v5, 1, v20, a1[1]);

LABEL_10:
    v21 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v22 = a1[1];
    a1[1] = v21;

    goto LABEL_12;
  }

  sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSNFCHandoverHandler processExchangeCommand:completionHandler:]", 153, a1, @"%@", v11, v12, v24);
  v13 = a1[1];
  v14 = v13;
  if (!v24)
  {
    objc_msgSend_appendData_(v13, 0, 0);

    (v5)[2](v5, 1, 0, a1[1]);
    goto LABEL_10;
  }

  v15 = v24[2];
  objc_msgSend_appendData_(v14, v16, v15);

  v17 = v5[2];
  v18 = a1[1];
  if ((v24[1] & 0x10) == 0)
  {
    v17(v5, 1, 0, v18);
    goto LABEL_10;
  }

  v17(v5, 0, 0, v18);
LABEL_12:
}

void sub_2645054F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    *(a1 + 24) = 0;
    objc_storeStrong((a1 + 16), a2);
  }
}

void *sub_26450554C(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    result[3] = 0;
    v3 = sub_264504E94(result, a2);
    v4 = v2[2];
    v2[2] = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

id sub_264505598(uint64_t a1, unint64_t a2, BOOL *a3)
{
  if (!a1)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_21;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v11 = v6, v12 = *(a1 + 24), v13 = objc_msgSend_length(*(a1 + 16), v7, v8), v11, v12 == v13))
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSNFCHandoverHandler getResponseAPDUWithChunkSize:isLastChunk:]", 179, a1, @"Empty response buffer", v9, v10, v41);
    if (a3)
    {
      v14 = 0;
      *a3 = 1;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (a2 > 0x1000)
  {
    a2 = 4096;
    sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSNFCHandoverHandler getResponseAPDUWithChunkSize:isLastChunk:]", 185, a1, @"Restrict chunk size to %lu", v9, v10, 4096);
  }

  v15 = *(a1 + 16);
  v18 = objc_msgSend_length(v15, v16, v17);
  v19 = *(a1 + 24);

  if (v18 - v19 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = v18 - v19;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v22 = objc_msgSend_subdataWithRange_(*(a1 + 16), v21, *(a1 + 24), v20);
  objc_msgSend_appendData_(v14, v23, v22);

  v24 = *(a1 + 16);
  *(a1 + 24) += v20;
  v25 = v24;
  v28 = objc_msgSend_length(v25, v26, v27);
  v29 = *(a1 + 24);

  v31 = v28 - v29;
  if ((v28 - v29) >= 0x100)
  {
    v31 = 0;
LABEL_16:
    v32 = 97;
    goto LABEL_17;
  }

  if (v28 != v29)
  {
    goto LABEL_16;
  }

  v31 = 0;
  v32 = -112;
LABEL_17:
  v42[0] = v32;
  v42[1] = v31;
  objc_msgSend_appendBytes_length_(v14, v30, v42, 2);
  v33 = *(a1 + 24);
  v36 = objc_msgSend_length(*(a1 + 16), v34, v35);
  if (a3)
  {
    *a3 = v33 == v36;
  }

  if (v33 == v36)
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSNFCHandoverHandler getResponseAPDUWithChunkSize:isLastChunk:]", 215, a1, @"Buffer all read", v37, v38, v41);
    v39 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

LABEL_21:

  return v14;
}

id sub_264505F28(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = STSXPCHelperClientEntitlementChecker;
    a1 = objc_msgSendSuper2(&v21, sel_init);
    if (a1)
    {
      *(a1 + 3) = objc_msgSend_processIdentifier(v3, v4, v5);
      v8 = *MEMORY[0x277CBECE8];
      if (v3)
      {
        objc_msgSend_auditToken(v3, v6, v7);
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v9 = SecTaskCreateWithAuditToken(v8, &token);
      if (v9)
      {
        v12 = v9;
        v13 = @"com.apple.sts.xpchelperclient.transceive.proxy.listener";
        *token.val = 0;
        v16 = SecTaskCopyValueForEntitlement(v12, @"com.apple.sts.xpchelperclient.transceive.proxy.listener", &token);
        if (*token.val)
        {
          sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelperClientEntitlementChecker _copyValueOfEntitlement:secTask:]", 34, a1, @"Failed to get entitlements: %@", v14, v15, *token.val);
          CFRelease(*token.val);
        }

        if (v16)
        {
          v17 = CFGetTypeID(v16);
          v18 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v16) != 0;
          CFRelease(v16);
        }

        else
        {
          v18 = 0;
        }

        *(a1 + 8) = v18;
        CFRelease(v12);
      }

      else
      {
        sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSXPCHelperClientEntitlementChecker initWithConnection:]", 88, a1, @"Cannot create SecTaskRef with XPC Connection: %@", v10, v11, v3);

        a1 = 0;
      }
    }
  }

  return a1;
}