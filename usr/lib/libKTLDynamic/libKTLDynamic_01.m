void sub_297A3778C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  if (v27)
  {
    dispatch_release(v27);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v28 - 160);
    MEMORY[0x29C279E00](v28 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v28 - 160);
  MEMORY[0x29C279E00](v28 - 144);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLGetAntennaPortP10KTLOptionsP14KTLAntennaPort_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetAntennaPortParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), (*(*(a1 + 48) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetAntennaPortParseAndRelease(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[3] = v6;
  v25 = v6;
  v24[1] = v6;
  v24[2] = v6;
  v24[0] = v6;
  v7 = (*(*a1 + 16))(a1);
  v8 = a1[2];
  AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::ARI_CsiIceGetTxAntennaRspCb_SDK(v24, v7);
  if (AriSdk::MsgBase::getMergedGMID(v24) == 67600384)
  {
    _KTLErrorPrint("KTLGetAntennaPortParseAndRelease", "NACK Received\n", v9, v10, v11, v12, v13, v14, *&v24[0]);
  }

  v21 = AriSdk::ARI_CsiIceGetTxAntennaRspCb_SDK::unpack(v24);
  if (v21)
  {
    _KTLErrorPrint("KTLGetAntennaPortParseAndRelease", "Failed to unpack response.\n", v15, v16, v17, v18, v19, v20, *&v24[0]);
  }

  else
  {
    v22 = *(&v25 + 1);
    *a2 = *v25;
    *a3 = *v22;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279FA0](v24);
  return v21 == 0;
}

uint64_t KTLSetAntennaPort(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1)
  {
    _KTLErrorPrint("KTLSetAntennaPort", "These parameters cannot be NULL: opt: %p\n", a3, a4, a5, a6, a7, a8, 0);
    return v8;
  }

  v62 = -1;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[3] = v10;
  v61 = v10;
  v60[1] = v10;
  v60[2] = v10;
  v60[0] = v10;
  AriSdk::ARI_CsiIceSetTxAntennaReq_SDK::ARI_CsiIceSetTxAntennaReq_SDK(v60);
  v11 = operator new(4uLL);
  *v11 = a2;
  v12 = v61;
  *&v61 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v58 = 0;
  v59 = 0;
  AriSdk::MsgBase::getRawBytes();
  v19 = *(v8 + 8);
  if (!v19 && *(v8 + 16))
  {
    v34 = dispatch_semaphore_create(0);
    v35 = v34;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = -1;
    v36 = *(v58 + 2) - *v58;
    v37 = *(v8 + 16);
    object = v34;
    if (v34)
    {
      dispatch_retain(v34);
    }

    v38 = *(v8 + 20);
    if (AriHost::Send())
    {
      v45 = "Failed to send the message of CsiIceSetTxAntennaReq.\n";
    }

    else
    {
      v46 = dispatch_time(0, 1000000 * *(v8 + 20));
      if (!dispatch_semaphore_wait(v35, v46))
      {
        if (*(v55 + 24) == 1)
        {
          v31 = *(v51 + 6);
          v62 = v31;
          LODWORD(v8) = 1;
          v47 = object;
          if (!object)
          {
LABEL_35:
            _Block_object_dispose(&v50, 8);
            _Block_object_dispose(&v54, 8);
            if (v35)
            {
              dispatch_release(v35);
            }

            goto LABEL_17;
          }

LABEL_34:
          dispatch_release(v47);
          goto LABEL_35;
        }

LABEL_33:
        LODWORD(v8) = 0;
        v31 = -1;
        v47 = object;
        if (!object)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v45 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLSetAntennaPort", v45, v39, v40, v41, v42, v43, v44, v48);
    goto LABEL_33;
  }

  v20 = *v58;
  v21 = v58[1] - *v58;
  v22 = *(v8 + 20);
  LODWORD(v54) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v13, v14, v15, v16, v17, v18, v21);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v20);
  }

  if (!*v19 || ((v29 = (*v19)(v19, v20, v21, &v54, 1, v22, 0), v54 == v21) ? (v30 = v29) : (v30 = 0), (v30 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v23, v24, v25, v26, v27, v28, v21);
    goto LABEL_16;
  }

  v54 = 0;
  if (!KTLUTACopyReceiveData(v8, &v54))
  {
LABEL_16:
    LODWORD(v8) = 0;
    v31 = -1;
    goto LABEL_17;
  }

  LODWORD(v8) = KTLSetAntennaPortParseAndRelease(v54, &v62);
  v31 = v62;
LABEL_17:
  if (v31)
  {
    v8 = 0;
  }

  else
  {
    v8 = v8;
  }

  v32 = v59;
  if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  MEMORY[0x29C279E40](v60);
  return v8;
}

void sub_297A37D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  if (v27)
  {
    dispatch_release(v27);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
    MEMORY[0x29C279E40](v28 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x29C279E40](v28 - 144);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLSetAntennaPortP10KTLOptions14KTLAntennaPort_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLSetAntennaPortParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

BOOL KTLSetAntennaPortParseAndRelease(ktl::KTLPacket *a1, unsigned int *a2)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v4;
  v21[3] = v4;
  v21[0] = v4;
  v21[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  v6 = *(a1 + 2);
  AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::ARI_CsiIceSetTxAntennaRspCb_SDK(v21, v5);
  if (AriSdk::MsgBase::getMergedGMID(v21) == 67600384)
  {
    _KTLErrorPrint("KTLSetAntennaPortParseAndRelease", "NACK Received\n", v7, v8, v9, v10, v11, v12, *&v21[0]);
  }

  v19 = AriSdk::ARI_CsiIceSetTxAntennaRspCb_SDK::unpack(v21);
  if (v19)
  {
    _KTLErrorPrint("KTLSetAntennaPortParseAndRelease", "Failed to unpack response.\n", v13, v14, v15, v16, v17, v18, *&v21[0]);
  }

  else
  {
    *a2 = *v22;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279FF0](v21);
  return v19 == 0;
}

BOOL KTLGetRxDiversity(uint64_t a1, int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetRxDiversity", "These parameters cannot be NULL: opt: %p, rxDiversity: %p\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v11 = *(a1 + 16);
  v58 = -1;
  v59 = v11;
  v56 = 0x7FFFFFFF;
  v57 = a2;
  if (*(a1 + 8))
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = -1;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = -1;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = a2;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 0x7FFFFFFF;
    v20 = dispatch_semaphore_create(0);
    v21 = v20;
    object = v20;
    if (v20)
    {
      dispatch_retain(v20);
    }

    if (ARI_CsiIceGetRxDiversityReq_BLK())
    {
      _KTLErrorPrint("KTLGetRxDiversity", "Failed to send request.\n", v22, v23, v24, v25, v26, v27, v38);
      v28 = 0;
      v18 = -1;
      goto LABEL_25;
    }

    v29 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v21, v29))
    {
      _KTLErrorPrint("KTLGetRxDiversity", "Timeout waiting for response.\n", v30, v31, v32, v33, v34, v35, v38);
      v28 = 0;
      v18 = -1;
      v36 = v59;
      if (!v59)
      {
        goto LABEL_25;
      }
    }

    else if (*(v53 + 6))
    {
      v28 = 0;
      v18 = -1;
      v36 = v59;
      if (!v59)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = *(v49 + 6);
      v37 = *(v45 + 6);
      v56 = *(v41 + 6);
      v57 = v37;
      v28 = 1;
      v36 = v59;
      if (!v59)
      {
LABEL_25:
        if (object)
        {
          dispatch_release(object);
        }

        if (v21)
        {
          dispatch_release(v21);
        }

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);
        result = 0;
        if (!v28)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    AriHost::ExitTrx(v36);
    goto LABEL_25;
  }

  v48 = 0;
  LODWORD(v44) = v11;
  LODWORD(v40) = 0;
  v52 = 0;
  if (!ARI_CsiIceGetRxDiversityReq_ENC() && (v13 = operator new(0x18uLL), v14 = v52, v13[2] = v40, *(v13 + 2) = v14, *v13 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v13)) && KTLUTACopyReceiveData(a1, &v48))
  {
    v15 = v48;
    (*(*v48 + 16))(v48);
    v16 = v15[2];
    v17 = ARI_CsiIceGetRxDiversityRspCb_Extract();
    (*(*v15 + 8))(v15);
    v18 = v58;
    result = 0;
    if (!v17)
    {
LABEL_30:
      if (!v18)
      {
        result = v57 == a2;
      }
    }
  }

  else
  {
    result = 0;
  }

LABEL_32:
  *a3 = v56;
  return result;
}

void sub_297A3838C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLGetRxDiversityP10KTLOptions13KTLAntennaRATP14KTLRxDiversity_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  v4 = *(*(a1 + 56) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetRxDiversityRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 64));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSetRxDiversity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _KTLErrorPrint("KTLSetRxDiversity", "These parameters cannot be NULL: opt: %p\n", a3, a4, a5, a6, a7, a8, 0);
    return 0;
  }

  v9 = *(a1 + 16);
  v45 = -1;
  v46 = v9;
  if (*(a1 + 8))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2000000000;
    v44 = -1;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2000000000;
    v40 = -1;
    v19 = dispatch_semaphore_create(0);
    v20 = v19;
    object = v19;
    if (v19)
    {
      dispatch_retain(v19);
    }

    if (ARI_CsiIceRxDiversityReq_BLK())
    {
      _KTLErrorPrint("KTLSetRxDiversity", "Failed to send request.\n", v21, v22, v23, v24, v25, v26, v35);
      v16 = 0;
      v17 = -1;
LABEL_23:
      if (object)
      {
        dispatch_release(object);
      }

      if (v20)
      {
        dispatch_release(v20);
      }

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
      return !v17 && v16;
    }

    v27 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v20, v27))
    {
      _KTLErrorPrint("KTLSetRxDiversity", "Timeout waiting for response.\n", v28, v29, v30, v31, v32, v33, v35);
      v16 = 0;
      v17 = -1;
      v34 = v46;
      if (!v46)
      {
        goto LABEL_23;
      }
    }

    else if (*(v42 + 6))
    {
      v16 = 0;
      v17 = -1;
      v34 = v46;
      if (!v46)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = *(v38 + 6);
      v16 = 1;
      v34 = v46;
      if (!v46)
      {
        goto LABEL_23;
      }
    }

    AriHost::ExitTrx(v34);
    goto LABEL_23;
  }

  v37 = 0;
  v47 = 0;
  v48 = v9;
  v41 = 0;
  if (!ARI_CsiIceRxDiversityReq_ENC() && (v11 = operator new(0x18uLL), v12 = v41, v11[2] = v47, *(v11 + 2) = v12, *v11 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v11)) && KTLUTACopyReceiveData(a1, &v37))
  {
    v13 = v37;
    (*(*v37 + 16))(v37);
    v14 = v13[2];
    v15 = ARI_CsiIceRxDiversityRspCb_Extract();
    (*(*v13 + 8))(v13);
    v16 = v15 == 0;
    v17 = v45;
  }

  else
  {
    v16 = 0;
    v17 = -1;
  }

  return !v17 && v16;
}

void sub_297A38770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z17KTLSetRxDiversityP10KTLOptions13KTLAntennaRAT14KTLRxDiversity_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceRxDiversityRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLRFFilePushReq(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a4)
  {
    _KTLErrorPrint("KTLRFFilePushReq", "Parameters are not correct: opt: %p, filerID: %p\n", a3, a4, a5, a6, a7, a8, a1);
    v47 = 0;
    return v47 & 1;
  }

  v10 = a3;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83[3] = v12;
  v84 = v12;
  v83[1] = v12;
  v83[2] = v12;
  v83[0] = v12;
  AriSdk::ARI_CsiIceRFFilerWriteReq_SDK::ARI_CsiIceRFFilerWriteReq_SDK(v83);
  v13 = operator new(4uLL);
  *v13 = a2;
  v14 = v84;
  *&v84 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(4uLL);
  *v15 = v10;
  v16 = *(&v84 + 1);
  *(&v84 + 1) = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v81 = 0;
  v82 = 0;
  AriSdk::MsgBase::getRawBytes();
  if (MEMORY[0] == MEMORY[8])
  {
    _KTLErrorPrint("KTLRFFilePushReq", "Failed to setup CsiIceRFFilerWriteReq\n", v17, v18, v19, v20, v21, v22, v66);
    v47 = 0;
LABEL_48:
    MEMORY[0x29C279E20](v83);
    return v47 & 1;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v80 = 0;
  v23 = *(a1 + 8);
  if (!v23 && *(a1 + 16))
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x2000000000;
    v76 = 0;
    v48 = dispatch_semaphore_create(0);
    v49 = v48;
    v50 = *(v81 + 2) - *v81;
    v51 = *(a1 + 16);
    v69[1] = MEMORY[0x29EDCA5F8];
    v69[2] = 1174405120;
    v69[3] = ___Z16KTLRFFilePushReqP10KTLOptionsjjPi_block_invoke;
    v69[4] = &__block_descriptor_tmp_21;
    v71 = a2;
    v72 = v10;
    v69[5] = &v77;
    v69[6] = &v73;
    object = v48;
    if (v48)
    {
      dispatch_retain(v48);
    }

    v52 = *(a1 + 20);
    started = AriHost::StartStream();
    v54 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v49, v54))
    {
      _KTLErrorPrint("KTLRFFilePushReq", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v66);
      *(v78 + 24) = 0;
    }

    else
    {
      v63 = v78[3] & (started == 0);
      *(v78 + 24) = v63;
      if (v63 == 1)
      {
        *a4 = *(v74 + 6);
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v49)
    {
      dispatch_release(v49);
    }

    _Block_object_dispose(&v73, 8);
LABEL_45:
    v47 = *(v78 + 24);
    _Block_object_dispose(&v77, 8);
    v64 = v82;
    if (v82)
    {
      if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v64->__on_zero_shared)(v64);
        std::__shared_weak_count::__release_weak(v64);
      }
    }

    goto LABEL_48;
  }

  v24 = *v81;
  v25 = v81[1] - *v81;
  v26 = *(a1 + 20);
  LODWORD(v73) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v17, v18, v19, v20, v21, v22, v25);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v24);
  }

  if (*v23)
  {
    v33 = (*v23)(v23, v24, v25, &v73, 1, v26, 0);
    v34 = v73 == v25 ? v33 : 0;
    if (v34)
    {
      *(v78 + 24) = 1;
      v69[0] = 0;
      v35 = KTLUTACopyReceiveData(a1, v69);
      v36 = v69[0];
      *(v78 + 24) = v35;
      v73 = 0xAAAAAAAAAAAAAAAALL;
      v74 = 0xAAAAAAAAAAAAAAAALL;
      v37 = (*(*v36 + 16))(v36);
      v38 = v36[2];
      getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(&v73, v37);
      v45 = v73;
      if (*(v78 + 24) == 1)
      {
        if (v73)
        {
          v46 = *(v73 + 8);
          if (*v46 == a2)
          {
            **(v73 + 9) = v10;
            *(v78 + 24) = v10 != 0;
            if (v10)
            {
LABEL_35:
              *a4 = 0;
              v62 = v74;
              if (v74 && !atomic_fetch_add(v74 + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v62->__on_zero_shared)(v62);
                std::__shared_weak_count::__release_weak(v62);
              }

              goto LABEL_45;
            }
          }

          else
          {
            *(v78 + 24) = 0;
          }

          goto LABEL_33;
        }

        *(v78 + 24) = 0;
      }

      else
      {
        *(v78 + 24) = 0;
        if (v45)
        {
          v46 = *(v45 + 8);
LABEL_33:
          v68 = **(v45 + 9);
          v67 = *v46;
          v61 = "Response in error. response->instance_t1: %d(expecting nInstance: %d), response->result_t2: %d(expecting %d), \n";
          goto LABEL_34;
        }
      }

      v61 = "Failed to get response!\n";
LABEL_34:
      _KTLErrorPrint("KTLRFFilePushReq", v61, v39, v40, v41, v42, v43, v44, v67);
      goto LABEL_35;
    }
  }

  result = _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v27, v28, v29, v30, v31, v32, v25);
  __break(1u);
  return result;
}

void sub_297A38CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t object, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a31);
  MEMORY[0x29C279E20](v32 - 160);
  _Unwind_Resume(a1);
}

void sub_297A38D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a31);
  MEMORY[0x29C279E20](v31 - 160);
  _Unwind_Resume(a1);
}

uint64_t ___Z16KTLRFFilePushReqP10KTLOptionsjjPi_block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(&v35, v7);
    v20 = v35;
    v21 = v35 && **(v35 + 8) == *(a1 + 56) && **(v35 + 9) == *(a1 + 60);
    *(*(*(a1 + 32) + 8) + 24) = v21;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = AriMsg::GetBufCtx(a2, a3);
      _KTLDebugPrint("KTLRFFilePushReq_block_invoke", "Filer ID: %d (0x%x)\n", v23, v24, v25, v26, v27, v28, *(*(*(a1 + 40) + 8) + 24));
      v22 = 0;
      v29 = v36;
      if (!v36)
      {
        goto LABEL_16;
      }
    }

    else if (v20)
    {
      v33 = **(v20 + 9);
      v34 = *(a1 + 60);
      v32 = *(a1 + 56);
      _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Response in error. response->instance_t1: %d(expecting nInstance: %d), response->result_t2: %d(expecting %d), \n", v14, v15, v16, v17, v18, v19, **(v20 + 8));
      v22 = 0xFFFFFFFFLL;
      v29 = v36;
      if (!v36)
      {
        goto LABEL_16;
      }
    }

    else
    {
      _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Failed to get response!\n", v14, v15, v16, v17, v18, v19, v31);
      v22 = 0xFFFFFFFFLL;
      v29 = v36;
      if (!v36)
      {
        goto LABEL_16;
      }
    }

    if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  else
  {
    _KTLErrorPrint("KTLRFFilePushReq_block_invoke", "Failed to allocate packet memory\n", v8, v9, v10, v11, v12, v13, v31);
    v22 = 0xFFFFFFFFLL;
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 48));
  return v22;
}

void sub_297A38FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void getResponse<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>(AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK **a1, const unsigned __int8 *a2)
{
  if (a2)
  {
    v4 = operator new(0x68uLL);
    v4->__shared_owners_ = 0;
    v4->__shared_weak_owners_ = 0;
    v4->__vftable = &unk_2A1E62D60;
    v5 = &v4[1];
    AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::ARI_CsiIceRFFilerWriteRspCb_SDK(&v4[1], a2);
    if (AriSdk::MsgBase::getMergedGMID(&v4[1]) == 67600384 || AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK::unpack(v5))
    {
      *a1 = 0;
      a1[1] = 0;
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);

        std::__shared_weak_count::__release_weak(v4);
      }
    }

    else
    {
      *a1 = v5;
      a1[1] = v4;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_297A39134(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ktl::KTLReceivePacket::~KTLReceivePacket(void **this)
{
  *this = &unk_2A1E62D20;
  if (this[2])
  {
    operator delete[](this[2]);
  }
}

{
  *this = &unk_2A1E62D20;
  if (this[2])
  {
    v2 = this;
    operator delete[](this[2]);
    this = v2;
    v1 = vars8;
  }

  operator delete(this);
}

void std::__shared_ptr_emplace<AriSdk::ARI_CsiIceRFFilerWriteRspCb_SDK>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E62D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

BOOL KTLSecGetFusingState(uint64_t a1, int *a2)
{
  v42 = 0;
  v43 = -1;
  v2 = *(a1 + 16);
  v41 = v2;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2000000000;
    v40 = -1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = -1431655766;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    v27 = MEMORY[0x29EDCA5F8];
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (ARI_CsiSecGetFusingStateReq_BLK())
    {
      v11 = 0;
      v13 = *(v38 + 6);
      v12 = *(v34 + 6);
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v16, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLSecGetFusingState", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v27);
      }

      if (v41)
      {
        AriHost::ExitTrx(v41);
      }

      v13 = *(v38 + 6);
      v12 = *(v34 + 6);
      if (v25)
      {
        v11 = 0;
        v17 = object;
        if (!object)
        {
LABEL_25:
          if (v16)
          {
            dispatch_release(v16);
          }

          _Block_object_dispose(&v29, 8);
          _Block_object_dispose(&v33, 8);
          _Block_object_dispose(&v37, 8);
          goto LABEL_28;
        }
      }

      else
      {
        v11 = *(v30 + 6) == 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_25;
  }

  v33 = 0;
  LODWORD(v29) = v2;
  v44 = 0;
  v37 = 0;
  if (!ARI_CsiSecGetFusingStateReq_ENC() && (v6 = operator new(0x18uLL), v7 = v37, v6[2] = v44, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v33))
  {
    v8 = v33;
    (*(*v33 + 16))(v33);
    v9 = v8[2];
    v10 = ARI_CsiSecGetFusingStateRspCb_Extract();
    (*(*v8 + 8))(v8);
    v11 = v10 == 0;
    v12 = v42;
    v13 = v43;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = -1;
  }

LABEL_28:
  if (v12)
  {
    v26 = 3;
  }

  else
  {
    v26 = 1;
  }

  *a2 = v26;
  return !v13 && v11;
}

void sub_297A395D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSecGetFusingState_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetFusingStateRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLSecGetRandomNum(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v18[0] = 0;
  v18[1] = 0;
  v18[2] = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v3;
  v17[3] = v3;
  v17[0] = v3;
  v17[1] = v3;
  AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(v17);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  RandomNum = security::ARICommandDriver::GetRandomNum(v18, v17, &v16);
  if ((RandomNum & 1) == 0)
  {
    _KTLErrorPrint("KTLSecGetRandomNum", "Failed GetRandomNum ARI command\n", v4, v5, v6, v7, v8, v9, v15);
  }

  v11 = *(v16 + 8);
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *a2 = *v11;
  *(a2 + 16) = v13;
  *(a2 + 32) = v12;
  MEMORY[0x29C279E90](v17);
  return RandomNum;
}

double security::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t security::ARICommandDriver::GetRandomNum(security::ARICommandDriver *this, AriSdk::ARI_CsiSecGetRandomNumReq_SDK *a2, AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(this + 2);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(this + 2), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x48uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__23;
  v76 = __Block_byref_object_dispose__24;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(this + 2) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(this + 2) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 84082688);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetRandomNum", "Failed CsiSecGetRandomNumReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A39C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void security::ARICommandDriver::~ARICommandDriver(security::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t KTLSecGetSNUM(uint64_t a1, uint64_t a2)
{
  v41[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v33 = v2;
  if (!a2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x4002000000;
    v39 = __Block_byref_object_copy__5;
    v40 = __Block_byref_object_dispose__5;
    memset(v41, 170, 24);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1;
    v7 = dispatch_semaphore_create(0);
    v8 = v7;
    v27 = MEMORY[0x29EDCA5F8];
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    if (ARI_CsiSecGetSNUMReq_BLK())
    {
      v9 = 0;
      v10 = v37[7];
      *a2 = *(v37 + 5);
      *(a2 + 16) = v10;
      v11 = object;
      if (!object)
      {
LABEL_14:
        if (v8)
        {
          dispatch_release(v8);
        }

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v36, 8);
        result = v9;
        goto LABEL_17;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v8, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLSecGetSNUM", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v27);
      }

      if (v33)
      {
        AriHost::ExitTrx(v33);
      }

      v26 = v37[7];
      *a2 = *(v37 + 5);
      *(a2 + 16) = v26;
      if (v25)
      {
        v9 = 0;
        v11 = object;
        if (!object)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = *(v30 + 6) == 0;
        v11 = object;
        if (!object)
        {
          goto LABEL_14;
        }
      }
    }

    dispatch_release(v11);
    goto LABEL_14;
  }

  v29 = 0;
  v34 = 0;
  v35 = v2;
  v36 = 0;
  if (ARI_CsiSecGetSNUMReq_ENC())
  {
LABEL_8:
    result = 0;
    goto LABEL_17;
  }

  v13 = operator new(0x18uLL);
  v14 = v36;
  v13[2] = v34;
  *(v13 + 2) = v14;
  *v13 = &unk_2A1E625B0;
  result = KTLUTASendAndReleaseData(a1, v13);
  if (result)
  {
    result = KTLUTACopyReceiveData(a1, &v29);
    if (result)
    {
      v15 = v29;
      (*(*v29 + 16))(v29);
      v16 = v15[2];
      v17 = ARI_CsiSecGetSNUMRspCb_Extract();
      (*(*v15 + 8))(v15);
      result = v17 == 0;
    }
  }

LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A3A064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLSecGetSNUM_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetSNUMRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSecGetChipId(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  v34 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v26 = 0;
    v35 = 0;
    v36 = v4;
    v30 = 0;
    if (ARI_CsiSecGetChipIdReq_ENC())
    {
      return 0;
    }

    v6 = operator new(0x18uLL);
    v7 = v30;
    v6[2] = v35;
    *(v6 + 2) = v7;
    *v6 = &unk_2A1E625B0;
    if (!KTLUTASendAndReleaseData(a1, v6) || !KTLUTACopyReceiveData(a1, &v26))
    {
      return 0;
    }

    v8 = v26;
    (*(*v26 + 16))(v26);
    v9 = v8[2];
    v10 = ARI_CsiSecGetChipIdRspCb_Extract();
    (*(*v8 + 8))(v8);
    return v10 == 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = -1431655766;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (!ARI_CsiSecGetChipIdReq_BLK())
  {
    v16 = dispatch_time(0, 1000000 * *(a1 + 20));
    v23 = dispatch_semaphore_wait(v13, v16);
    if (v23)
    {
      _KTLErrorPrint("KTLSecGetChipId", "Timeout waiting for response.\n", v17, v18, v19, v20, v21, v22, v24);
    }

    if (v34)
    {
      AriHost::ExitTrx(v34);
    }

    *a2 = *(v31 + 6);
    if (v23)
    {
      v11 = 0;
      v14 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = *(v27 + 6) == 0;
      v14 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v11 = 0;
  *a2 = *(v31 + 6);
  v14 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v14);
  }

LABEL_15:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v11;
}

void sub_297A3A3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSecGetChipId_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetChipIdRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSecGetPkHash(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v36 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x5002000000;
    v42 = __Block_byref_object_copy__7_0;
    v43 = __Block_byref_object_dispose__8_0;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v12;
    v45 = v12;
    v46 = -21846;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = -1;
    v13 = dispatch_semaphore_create(0);
    v14 = v13;
    v30 = MEMORY[0x29EDCA5F8];
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    if (ARI_CsiSecGetPkHashReq_BLK())
    {
      v11 = 0;
      v15 = *(v40 + 36);
      v16 = *(v40 + 7);
      *a2 = *(v40 + 5);
      *(a2 + 16) = v16;
      *(a2 + 32) = v15;
      v17 = object;
      if (!object)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v20 = dispatch_time(0, 1000000 * *(a1 + 20));
    v27 = dispatch_semaphore_wait(v14, v20);
    if (v27)
    {
      _KTLErrorPrint("KTLSecGetPkHash", "Timeout waiting for response.\n", v21, v22, v23, v24, v25, v26, v30);
    }

    if (v36)
    {
      AriHost::ExitTrx(v36);
    }

    v28 = *(v40 + 36);
    v29 = *(v40 + 7);
    *a2 = *(v40 + 5);
    *(a2 + 16) = v29;
    *(a2 + 32) = v28;
    if (v27)
    {
      v11 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *(v33 + 6) == 0;
      v17 = object;
      if (!object)
      {
LABEL_16:
        if (v14)
        {
          dispatch_release(v14);
        }

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v39, 8);
        if (!*(a2 + 32))
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

LABEL_15:
    dispatch_release(v17);
    goto LABEL_16;
  }

  v32 = 0;
  v37 = 0;
  v38 = v4;
  v39 = 0;
  if (ARI_CsiSecGetPkHashReq_ENC() || (v6 = operator new(0x18uLL), v7 = v39, v6[2] = v37, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v32))
  {
    v11 = 0;
    if (*(a2 + 32))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = v32;
  (*(*v32 + 16))(v32);
  v9 = v8[2];
  v10 = ARI_CsiSecGetPkHashRspCb_Extract();
  (*(*v8 + 8))(v8);
  v11 = v10 == 0;
  if (!*(a2 + 32))
  {
LABEL_19:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 32;
  }

LABEL_20:
  v18 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_297A3A7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLSecGetPkHash_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSecGetPkHashRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLGetPersonalizationInfo(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = -1431655766;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[0] = v4;
  __src[1] = v4;
  memset(v18, 170, sizeof(v18));
  v15 = 0;
  v17 = -21846;
  v16[0] = v4;
  v16[1] = v4;
  result = KTLSecGetRandomNum(a1, __src);
  if (result)
  {
    result = KTLSecGetSNUM(a1, v18);
    if (result)
    {
      result = KTLSecGetChipId(a1, &v15);
      if (result)
      {
        result = KTLSecGetPkHash(a1, v16);
        if (result)
        {
          v11 = v20;
          v12 = LOWORD(v18[2]);
          v13 = v17;
          if (v20 > 0x20 || LOWORD(v18[2]) > 0x10u || v17 >= 0x21u)
          {
            _KTLErrorPrint("KTLGetPersonalizationInfo", "Invalid buffer size(s) returned from baseband:\nnonce(%u)\tnonce_max(%u)\nsnum(%u)\tsnum_max(%u)\npkhash(%u)\tpkhash_max(%u)\n", v20, v6, v7, v8, v9, v10, v20);
            result = 0;
          }

          else
          {
            *(a2 + 80) = 0u;
            *(a2 + 64) = 0u;
            *(a2 + 48) = 0u;
            *(a2 + 16) = 0u;
            *(a2 + 32) = 0u;
            *a2 = v15;
            *(a2 + 4) = v11;
            *(a2 + 8) = v12;
            *(a2 + 12) = v13;
            memcpy((a2 + 16), __src, v11);
            memcpy((a2 + 48), v18, v12);
            memcpy((a2 + 64), v16, v13);
            result = 1;
          }
        }
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL KTLSecGetFactoryDebugEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 16);
  v36 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v26 = 0;
    v37 = 0;
    v38 = v4;
    v30 = 0;
    if (ARI_CsiIceGetFactoryDebugEnabledReq_ENC())
    {
      return 0;
    }

    v6 = operator new(0x18uLL);
    v7 = v30;
    v6[2] = v37;
    *(v6 + 2) = v7;
    *v6 = &unk_2A1E625B0;
    if (!KTLUTASendAndReleaseData(a1, v6) || !KTLUTACopyReceiveData(a1, &v26))
    {
      return 0;
    }

    v8 = v26;
    (*(*v26 + 16))(v26);
    v9 = v8[2];
    v10 = ARI_CsiIceGetFactoryDebugEnabledResp_Extract();
    (*(*v8 + 8))(v8);
    return v10 == 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3002000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__14;
  v35 = -1431655766;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -1;
  v12 = dispatch_semaphore_create(0);
  v13 = v12;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  if (!ARI_CsiIceGetFactoryDebugEnabledReq_BLK())
  {
    v16 = dispatch_time(0, 1000000 * *(a1 + 20));
    v23 = dispatch_semaphore_wait(v13, v16);
    if (v23)
    {
      _KTLErrorPrint("KTLSecGetFactoryDebugEnabled", "Timeout waiting for response.\n", v17, v18, v19, v20, v21, v22, v24);
    }

    if (v36)
    {
      AriHost::ExitTrx(v36);
    }

    *a2 = *(v31 + 10);
    if (v23)
    {
      v11 = 0;
      v14 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = *(v27 + 6) == 0;
      v14 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v11 = 0;
  *a2 = *(v31 + 10);
  v14 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v14);
  }

LABEL_15:
  if (v13)
  {
    dispatch_release(v13);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return v11;
}

void sub_297A3ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSecGetFactoryDebugEnabled_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetFactoryDebugEnabledResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t security::ARICommandDriver::GetPersonalizationParams(uint64_t a1, uint64_t a2, AriSdk::ARI_GetPersonalizationParametersRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0xA8uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__23;
  v76 = __Block_byref_object_dispose__24;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4245028864);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetPersonalizationParams", "Failed GetPersonalizationParametersReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A3B24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t security::ARICommandDriver::CsiSecCollectScrtBlob(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x60uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__23;
  v76 = __Block_byref_object_dispose__24;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4245094400);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("CsiSecCollectScrtBlob", "Failed CsiSecCollectScrtBlobReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A3B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t security::ARICommandDriver::CsiSecReadSikPKey(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x60uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__23;
  v76 = __Block_byref_object_dispose__24;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4245127168);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("CsiSecReadSikPKey", "Failed CsiSecReadSikPKeyReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A3BC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__24(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_CsiSecGetRandomNumRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x48uLL);
  AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk41ARI_GetPersonalizationParametersRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0xA8uLL);
  AriSdk::ARI_GetPersonalizationParametersRspCb_SDK::ARI_GetPersonalizationParametersRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk34ARI_CsiSecCollectScrtBlobRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x60uLL);
  AriSdk::ARI_CsiSecCollectScrtBlobRspCb_SDK::ARI_CsiSecCollectScrtBlobRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_CsiSecReadSikPKeyRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x60uLL);
  AriSdk::ARI_CsiSecReadSikPKeyRspCb_SDK::ARI_CsiSecReadSikPKeyRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t getRestoreOSMode(void)
{
  {
    return getRestoreOSMode(void)::restoreOS;
  }

  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A1899218;
  if (!off_2A1899218)
  {
    ctu::Gestalt::create_default_global(&v5, v1);
    std::shared_ptr<ctu::Gestalt>::operator=[abi:ne200100](&off_2A1899218, &v5);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&v5);
    v2 = off_2A1899218;
  }

  v4[0] = v2;
  v4[1] = qword_2A1899220;
  if (qword_2A1899220)
  {
    atomic_fetch_add_explicit((qword_2A1899220 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v3 = (*(*v2 + 96))(v2);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v4);
  getRestoreOSMode(void)::restoreOS = v3;
  return getRestoreOSMode(void)::restoreOS;
}

void sub_297A3C060(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<ctu::Gestalt>::operator=[abi:ne200100](uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_297A27000);
  }

  return result;
}

uint64_t KTLPSIFormatEnhancedCommand(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = a2;
  *(a1 + 6) = a2 ^ HIWORD(a3) ^ a3;
  return 1;
}

uint64_t KTLPSIFormatEnhancedCommandMrcData(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = a2;
  *(a1 + 6) = a2 ^ HIWORD(a3) ^ a3;
  return 1;
}

uint64_t KTLPSISendEnhancedCommand(unsigned int *a1, uint64_t (**a2)(void, unsigned int *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v14 = *a1;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
  v12 = *a2;
  if (*a2)
  {
    LODWORD(result) = v12(a2, a1, a3, &v15, 1, a4, 0);
    LODWORD(v12) = v15;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v12 == a3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLPSISendMrcTrainingCommand(unsigned int *a1, uint64_t (**a2)(void, unsigned int *, uint64_t, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v15 = *a1;
  _KTLDebugPrint("KTLPSISendMrcTrainingCommand", "Sending PSI enhanced command: command %d, param %d, length = %u\n", a3, a4, a5, a6, a7, a8, *(a1 + 2));
  v13 = *a2;
  if (*a2)
  {
    LODWORD(result) = v13(a2, a1, a3, &v16, 1, a4, 0);
    LODWORD(v13) = v16;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v13 == a3)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  *a5 = v13;
  return result;
}

uint64_t KTLPSIReadResponse(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _KTLDebugPrint("KTLPSIReadResponse", "Reading response from PSI\n", a3, a4, a5, a6, a7, a8, v22);
  v23 = 0;
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = v17(a1, a4, a2, &v23, 0, a3, 0);
    v19 = v23;
    if (v23 && (_KTLDebugFlags & 2) != 0)
    {
      v20 = v18;
      off_2A18991C8("Rx:", 1, a4);
      v19 = v23;
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (!v18)
    {
      goto LABEL_11;
    }

    if (v19 >= 2 && v19 <= a2)
    {
      _KTLDebugPrint("KTLPSIReadResponse", "Read response from PSI: code = %u\n", v12, v19, v13, v14, v15, v16, *a4);
      return 1;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_11:
  _KTLDebugPrint("KTLPSIReadResponse", "Failed reading response from PSI: bytesRead = %u\n", v12, v19, v13, v14, v15, v16, v19);
  return 0;
}

uint64_t KTLPSIReadMrcResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _KTLDebugPrint("KTLPSIReadMrcResponse", "Reading response from PSI, maxLength = %u\n", a3, a4, a5, a6, a7, a8, a2);
  v24 = 0;
  v17 = *(a1 + 8);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_11;
  }

  v18 = v17(a1, a4, a2, &v24, 0, a3, 0);
  v19 = v24;
  if (v24 && (_KTLDebugFlags & 2) != 0)
  {
    v20 = v18;
    off_2A18991C8("Rx:", 1, a4);
    v19 = v24;
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = 0;
    v22 = "Failed reading response from PSI: bytesRead = %u\n";
    goto LABEL_12;
  }

  if (!v18)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v19 < 2 || v19 > a2)
  {
    goto LABEL_11;
  }

  v21 = 1;
  v22 = "Successful Read response from PSI,bytesRead = %u\n";
LABEL_12:
  _KTLDebugPrint("KTLPSIReadMrcResponse", v22, v12, v19, v13, v14, v15, v16, v19);
  return v21;
}

uint64_t KTLSendEBLImage(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = a4;
  v10 = 0;
  if (!*a2)
  {
    return 0;
  }

  v7 = a3;
  if (!(*a2)(a2, a1, a3, &v10, 1, a5, 0) || v10 != v7)
  {
    return 0;
  }

  if (*a2)
  {
    LODWORD(result) = (*a2)(a2, &v11, 1, &v10, 1, a5, 0);
    v7 = v10;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v7 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLSendEBLImageNoXor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = 0;
  if (!*a2)
  {
    return 0;
  }

  LODWORD(result) = (*a2)(a2, a1, a3, &v6, 1, a4, 0);
  if (v6 == v4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

const char *PSIModeDescription(int a1)
{
  if (a1 <= 52479)
  {
    if (a1 == 462)
    {
      return "Secure";
    }

    if (a1 == 43520)
    {
      return "Normal";
    }
  }

  else
  {
    switch(a1)
    {
      case 52480:
        return "Coredump";
      case 61166:
        return "BadEEPROM";
      case 56577:
        return "Enhanced";
    }
  }

  return "Unknown";
}

uint64_t KTLParsePSIRunning(unsigned __int16 *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2)
  {
    v10 = *a1;
    if (v10 > 0xEEEE)
    {
      return 0;
    }

    *a2 = v10;
    if (v10 <= 52479)
    {
      if (v10 == 462)
      {
        v11 = "Secure";
        goto LABEL_17;
      }

      if (v10 == 43520)
      {
        v11 = "Normal";
        goto LABEL_17;
      }
    }

    else
    {
      switch(v10)
      {
        case 52480:
          v11 = "Coredump";
          goto LABEL_17;
        case 61166:
          v11 = "BadEEPROM";
          goto LABEL_17;
        case 56577:
          v11 = "Enhanced";
LABEL_17:
          _KTLDebugPrint("KTLParsePSIRunning", "PSI is running in %s mode\n", a3, a4, a5, a6, a7, a8, v11);
          return 1;
      }
    }

    v11 = "Unknown";
    goto LABEL_17;
  }

  return result;
}

uint64_t KTLParsePSIICEPersonalizionInfo(_OWORD *a1, unsigned int a2, uint64_t *a3)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x4C)
    {
      result = malloc(0x4CuLL);
      if (result)
      {
        v6 = a1[1];
        *result = *a1;
        *(result + 16) = v6;
        v7 = a1[3];
        *(result + 32) = a1[2];
        *(result + 48) = v7;
        *(result + 60) = *(a1 + 60);
        if (*result == 3777)
        {
          *a3 = result;
          return 1;
        }

        else
        {
          free(result);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEPersonalizionInfoSha384(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0x78)
    {
      result = malloc(0x78uLL);
      if (result)
      {
        v6 = *(a1 + 80);
        *(result + 64) = *(a1 + 64);
        *(result + 80) = v6;
        *(result + 96) = *(a1 + 96);
        *(result + 112) = *(a1 + 112);
        v7 = *(a1 + 16);
        *result = *a1;
        *(result + 16) = v7;
        v8 = *(a1 + 48);
        *(result + 32) = *(a1 + 32);
        *(result + 48) = v8;
        if (*result == 3777)
        {
          *a3 = result;
          return 1;
        }

        else
        {
          free(result);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEHashResponse(const void *a1, size_t __size, void *a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 8)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (*v7 == 3777 && 96 * *(v7 + 1) <= v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICEHashResponseSha384(const void *a1, size_t __size, void *a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 8)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (*v7 == 3777 && 112 * *(v7 + 1) <= v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLParsePSIICETestModeResponse(const void *a1, size_t __size, unsigned __int16 **a3)
{
  result = 0;
  if (a1)
  {
    if (__size >= 4)
    {
      v6 = __size;
      result = malloc(__size);
      if (result)
      {
        v7 = result;
        memcpy(result, a1, v6);
        if (v6 - 4 == v7[1])
        {
          *a3 = v7;
          return 1;
        }

        else
        {
          free(v7);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t KTLEBLReceivePacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (v8 && (v8() & 1) != 0)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Received:", 1, a2);
    }

    _KTLDebugPrint("KTLEBLReceivePacket", "Packet read < Minimum size (%d < %ld)\n", a3, 0, a5, a6, a7, a8, 0);
    return 0;
  }

  else
  {
    _KTLDebugPrint("KTLEBLReceivePacket", "Packet read failed.\n", a3, a4, a5, a6, a7, a8, v11);
    return 0;
  }
}

uint64_t KTLEBLSendReadfileData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = 0;
  if (!*a1)
  {
    return 0;
  }

  LODWORD(result) = (*a1)(a1, a2, a3, &v6, 1, a4, 0);
  if (v6 == v4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLEBLSendPacket(uint64_t (**a1)(void, unsigned int *, uint64_t, int *, uint64_t, uint64_t, void), unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v11 = a2[1] + 8;
  v14 = *a2;
  _KTLDebugPrint("KTLEBLSendPacket", "Sending command of length %u, type %u\n", a3, a4, a5, a6, a7, a8, v11);
  v12 = *a1;
  if (*a1)
  {
    LODWORD(result) = v12(a1, a2, v11, &v15, 1, a3, 0);
    LODWORD(v12) = v15;
  }

  else
  {
    LODWORD(result) = 0;
  }

  if (v12 == v11)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t KTLEBLParseStartInfo(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    v8 = a1[1];
    if (v8 > 0xB)
    {
      if (v8 == 12)
      {
        v10 = *(a1 + 1);
        *(a2 + 8) = a1[4];
        *a2 = v10;
        return 1;
      }

      else
      {
        _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet malformed, payload too large for StartInfo.\n", a3, a4, a5, a6, a7, a8, v11);
        return 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet malformed, payload too small for StartInfo.\n", a3, a4, a5, a6, a7, a8, v11);
      return 0;
    }
  }

  else
  {
    v12 = *a1;
    _KTLDebugPrint("KTLEBLParseStartInfo", "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n", a3, a4, a5, a6, a7, a8, 1);
    return 0;
  }
}

uint64_t KTLEBLCreateStartACKPacket(uint64_t a1, _DWORD *a2)
{
  *a1 = 0x1000000002;
  *(a1 + 8) = *a2;
  *(a1 + 12) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 20) = a2[3];
  return 1;
}

uint64_t KTLEBLParseReadfileExt(const char *a1, void *a2, size_t a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: one of given parameter got null.(pkt: %p, fname: %p, offset: %p, length: %p)\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  if (*a1 <= 2 || *a1 != 3)
  {
    v17 = *a1;
    v16 = 3;
    v8 = "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n";
LABEL_10:
    _KTLDebugPrint("KTLEBLParseReadfileExt", v8, a3, a4, a5, a6, a7, a8, v16);
    return 0;
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 1);
  if (v11 < v10 + 12)
  {
    v8 = "Error: packet malformed, payload too small for Readfile.\n";
    goto LABEL_10;
  }

  if (v11 > v10 + 12)
  {
    v8 = "Error: packet malformed, payload too large for Readfile.\n";
    goto LABEL_10;
  }

  if (v10 > a3)
  {
    _KTLDebugPrint("KTLEBLParseReadfileExt", "Error: given filename size (%lu) is too small to copy. We need %d size.\n", a3, a4, a5, a6, a7, a8, a3);
    return 0;
  }

  bzero(a2, a3);
  strncpy(a2, a1 + 20, *(a1 + 4));
  *a4 = *(a1 + 2);
  *a5 = *(a1 + 3);
  return 1;
}

uint64_t KTLEBLParseDone(unsigned int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 4)
  {
    v8 = a1[1];
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        *a2 = a1[2];
        return 1;
      }

      else
      {
        _KTLDebugPrint("KTLEBLParseDone", "Error: packet malformed, payload too large for Done.\n", a3, a4, a5, a6, a7, a8, v10);
        return 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLEBLParseDone", "Error: packet malformed, payload too small for Done.\n", a3, a4, a5, a6, a7, a8, v10);
      return 0;
    }
  }

  else
  {
    v11 = *a1;
    _KTLDebugPrint("KTLEBLParseDone", "Error: packet id mismatch (expected=%d (%s), got=%d (%s))\n", a3, a4, a5, a6, a7, a8, 4);
    return 0;
  }
}

uint64_t KTLInitOptions(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4 != 0;
  v9 = a5 != 0;
  v10 = v8 ^ v9;
  if ((v8 ^ v9))
  {
    *a1 = a2;
    *(a1 + 4) = a3;
    *(a1 + 8) = a4;
    *(a1 + 16) = a5;
    *(a1 + 20) = a6;
    return v8 ^ v9;
  }

  else
  {
    *(a1 + 4) = 3;
    _KTLErrorPrint("KTLInitOptions", "Provide either transport or ARI id, not both\n", a3, a4, a5, a6, a7, a8, v12);
    return v10;
  }
}

uint64_t KTLOpenChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 24) = 0;
  v9 = *(a1 + 4);
  if (v9 < 3)
  {
    return 1;
  }

  if (v9 == 3)
  {
    _KTLErrorPrint("KTLOpenChannel", "Invalid transport option selected.  See previous error.  Abort!\n", a3, a4, a5, a6, a7, a8, v8);
  }

  return 0;
}

uint64_t KTLCloseChannel(uint64_t a1)
{
  v1 = *(a1 + 4);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 1;
  }

  do
  {
    v4 = v3[5];
    (*(*v3 + 8))(v3);
    v3 = v4;
  }

  while (v4);
  return 1;
}

uint64_t KTLEFISendData(uint64_t a1, _DWORD *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v29 = *MEMORY[0x29EDCA608];
  if ((*a2 | 0x20) == 0x61)
  {
    if (a3 > 0xC00)
    {
      _KTLErrorPrint("KTLEFISendData", "AT string size (%u) larger than max size (%u).\n", a3, a4, a5, a6, a7, a8, a3);
      goto LABEL_25;
    }

    if (*(a2 + (a3 - 1)) == 10)
    {
      if (*(a2 + (a3 - 2)) == 13)
      {
        v11 = a2;
        goto LABEL_24;
      }

      if (a3 != 3072)
      {
        *(a2 + a3) = 10;
        v11 = a2;
        *(a2 + (a3 - 1)) = 13;
        LODWORD(v9) = a3 + 1;
LABEL_24:
        bzero(__dst, 0xC00uLL);
        __dst[768] = v9;
        memcpy(__dst, v11, v9);
        v24 = *(a1 + 16);
        __dst[769] = *(a1 + 20);
        __dst[770] = 1;
        if (!ARI_CsiIceAtExtReq_ENC())
        {
          v26 = operator new(0x18uLL);
          v26[2] = 0;
          *(v26 + 2) = 0;
          *v26 = &unk_2A1E625B0;
          result = KTLUTASendAndReleaseData(a1, v26);
          goto LABEL_26;
        }

LABEL_25:
        result = 0;
LABEL_26:
        *a4 = 1;
        goto LABEL_27;
      }
    }

    else if (a3 <= 0xBFE)
    {
      v11 = a2;
      *(a2 + a3) = 2573;
      LODWORD(v9) = a3 + 2;
      goto LABEL_24;
    }

    v11 = a2;
    _KTLErrorPrint("KTLEFISendData", "Not enough space left to append \\r\\n to AT string.\n", a3, a4, a5, a6, a7, a8, v27);
    goto LABEL_24;
  }

  if (a3 >= 0xC && *a2 == -1417756450)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 20);
    __dst[0] = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4, a5, a6, a7, a8, a3);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, a2);
    }

    if (*v13 && ((v21 = (*v13)(v13, a2, v9, __dst, 1, v14, 0), __dst[0] == v9) ? (v22 = v21) : (v22 = 0), (v22 & 1) != 0))
    {
      result = 1;
      *a4 = 0;
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v15, v16, v17, v18, v19, v20, v9);
      result = 0;
      *a4 = 0;
    }
  }

  else
  {
    _KTLErrorPrint("KTLEFISendData", "Unrecognized message type.\n", a3, a4, a5, a6, a7, a8, v27);
    result = 0;
  }

LABEL_27:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLRawSendData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4, a5, a6, a7, a8, a3);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, a2);
  }

  if (!*a1 || ((v18 = 1, (*a1)(a1, a2, a3, &v21, 1, a4, 0)) ? (v19 = v21 == a3) : (v19 = 0), !v19))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v12, v13, v14, v15, v16, v17, a3);
    return 0;
  }

  return v18;
}

uint64_t KTLEFIReceiveData(uint64_t a1, char *a2, _DWORD *a3, unsigned int a4, int a5)
{
  *(&__b[385] + 4) = *MEMORY[0x29EDCA608];
  v49 = 0;
  *a3 = 0;
  if (!a5)
  {
    result = KTLUTACopyReceiveData(a1, &v49);
    if (result)
    {
      v40 = v49;
      v41 = v49[2];
      v42 = v41 <= a4;
      if (v41 > a4)
      {
        _KTLErrorPrint("KTLEFIReceiveData", "Receved message of size %u, but caller provided buffer size %u\n", v34, v35, v36, v37, v38, v39, v49[2]);
      }

      else
      {
        v43 = (*(*v49 + 16))(v49);
        memcpy(a2, v43, v40[2]);
        *a3 = v40[2];
      }

      (*(*v40 + 8))(v40);
      result = v42;
      v44 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_30:
    v45 = *MEMORY[0x29EDCA608];
    return result;
  }

  result = KTLUTACopyReceiveData(a1, &v49);
  if (!result)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v10 = v49;
    v11 = (*(*v49 + 16))(v49);
    if (AriMsg::GetBufGmid(v11, v10[2]) != -116752384)
    {
      _KTLErrorPrint("KTLEFIReceiveData", "EFI receive expected AT response (%u) but found (%u)\n", v12, v13, v14, v15, v16, v17, 4178214912);
      v31 = 0;
LABEL_19:
      (*(*v10 + 8))(v10);
      v49 = 0;
      if (v31)
      {
        result = 1;
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    v48 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47[2] = v18;
    v47[3] = v18;
    v47[0] = v18;
    v47[1] = v18;
    v19 = (*(*v10 + 16))(v10);
    MEMORY[0x29C279B30](v47, v19, v10[2]);
    memset(__b, 170, 0xC0CuLL);
    if (a4 - *a3 < 0xAAAAAAAA)
    {
      break;
    }

    v26 = 0;
    do
    {
      v27 = *(__b + v26);
      if (!v27)
      {
        v27 = 32;
      }

      *(__b + v26++) = v27;
    }

    while (v26 < LODWORD(__b[384]));
    memcpy(a2, __b, LODWORD(__b[384]));
    v28 = *a3;
    if (v28)
    {
      if (v28 < 8)
      {
        v29 = &a2[-v28];
        v30 = LODWORD(__b[384]) + v28;
      }

      else
      {
        v29 = a2 - 8;
        v30 = LODWORD(__b[384]) + 8;
      }
    }

    else
    {
      v30 = __b[384];
      v29 = a2;
    }

    v32 = v30;
    if (strnstr(v29, "\r\nOK\r\n", v30))
    {
      v31 = 1;
    }

    else
    {
      v31 = strnstr(v29, "\r\nERROR\r\n", v32) != 0;
    }

    a2 += LODWORD(__b[384]);
    *a3 += LODWORD(__b[384]);
    AriMsg::~AriMsg(v47);
    v10 = v49;
    if (v49)
    {
      goto LABEL_19;
    }

    if (v31)
    {
      result = 1;
      v33 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_20:
    if ((KTLUTACopyReceiveData(a1, &v49) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  _KTLErrorPrint("KTLEFIReceiveData", "Received AT string size %u, but caller provided buffer size %u\n", v20, v21, v22, v23, v24, v25, (*a3 - 1431655766));
  (*(*v10 + 8))(v10);
  AriMsg::~AriMsg(v47);
LABEL_33:
  result = 0;
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A3DAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AriMsg::~AriMsg(va);
  _Unwind_Resume(a1);
}

uint64_t KTLUTACopyReceiveData(uint64_t a1, uint64_t *a2)
{
  v11 = dispatch_time(0, 1000000 * *(a1 + 20));
  while (1)
  {
    result = ktl::KTLReceivePacket::fetchARIMsgFromTransport(a1, v4, v5, v6, v7, v8, v9, v10);
    *a2 = result;
    if (!result)
    {
      break;
    }

    v13 = (*(*result + 16))(result);
    v14 = (*(**a2 + 16))();
    result = AriMsg::GetBufMsgDir(v14, *(*a2 + 8));
    if (result == 1)
    {
      break;
    }

    v21 = *(v13 + 8) >> 6;
    _KTLDebugPrint("KTLUTACopyReceiveData", "Skipping unexpected message (groupId=%d, msgId=0x%x) with unexpected direction (%d) and retrying receive.\n", v15, v16, v17, v18, v19, v20, (*v13 >> 35) & 0x3FLL);
    if (*a2)
    {
      (*(**a2 + 8))(*a2);
    }

    *a2 = 0;
    if (dispatch_time(0, 0) > v11)
    {
      return 0;
    }
  }

  return result;
}

uint64_t KTLUTASendAndReleaseData(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v5 = (*(*a2 + 16))(a2);
  v6 = a2[2];
  v7 = *(a1 + 20);
  v23 = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v8, v9, v10, v11, v12, v13, v6);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v5);
  }

  if (!*v4 || ((v20 = 1, (*v4)(v4, v5, v6, &v23, 1, v7, 0)) ? (v21 = v23 == v6) : (v21 = 0), !v21))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v14, v15, v16, v17, v18, v19, v6);
    v20 = 0;
  }

  (*(*a2 + 8))(a2);
  return v20;
}

BOOL KTLUTACopyReceiveNextMessage(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ARIMsgFromTransport = ktl::KTLReceivePacket::fetchARIMsgFromTransport(a1, a2, a3, a4, a5, a6, a7, a8);
  *a2 = ARIMsgFromTransport;
  return ARIMsgFromTransport != 0;
}

uint64_t KTLRawReceiveData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  result = v3();
  if (*a3)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      v7 = result;
      off_2A18991C8("Rx:", 1, a2);
      return v7;
    }
  }

  return result;
}

uint64_t KTLRawReceiveDataExact(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 0;
  if (!a4)
  {
    return 1;
  }

  v6 = a4;
  v10 = a2;
  do
  {
    v15 = 0;
    v11 = *(a1 + 8);
    if (!v11 || (v11(a1, v10, v6, &v15, 1, a5, 0) & 1) == 0)
    {
      return 0;
    }

    v12 = v15;
    v13 = *a3 + v15;
    *a3 = v13;
    v10 += v12;
    v6 = (v6 - v12);
  }

  while (v6);
  if (v13)
  {
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Rx:", 1, a2);
    }
  }

  return 1;
}

uint64_t ICE_FILER_write(uint64_t a1, uint64_t a2, uint64_t a3, AriHost *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    return ICE_FILER_write(a1, 0, a2, a3, a4, a5, a7, a8);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: %s. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, "ICE_FILER_write");
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_write(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, AriHost *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = *MEMORY[0x29EDCA608];
  if (!a1 || !a4 || (a2 == 0) == (a3 == 0))
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, v99);
LABEL_8:
    result = 0xFFFFFFFFLL;
    v22 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (!*(a1 + 8) && !a5 && *(a1 + 16))
  {
    _KTLErrorPrint("ICE_FILER_write", "Missing required transaction ID: context_id=%x\n", a3, a4, a5, a6, a7, a8, a5);
    goto LABEL_8;
  }

  v12 = a4;
  if (pthread_mutex_lock(&_MergedGlobals))
  {
LABEL_6:
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Context Already Exists.\n", v14, v15, v16, v17, v18, v19, v99);
    result = 4294967291;
    v21 = *MEMORY[0x29EDCA608];
    return result;
  }

  v23 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    v24 = off_2A13A4F40;
    while (*v24 != a5)
    {
      v24 = *(v24 + 10);
      if (v24 == &dword_2A13A4EF0)
      {
        goto LABEL_16;
      }
    }

    pthread_mutex_unlock(&_MergedGlobals);
    goto LABEL_6;
  }

LABEL_16:
  v25 = operator new(0x60uLL);
  *(v25 + 8) = 0;
  *v25 = a5;
  *(v25 + 1) = a3;
  *(v25 + 2) = a1;
  v26 = a2;
  if (a3)
  {
    v26 = operator new[](0xC00uLL);
  }

  *(v25 + 3) = v26;
  v25[8] = v12;
  *(v25 + 5) = v26;
  v25[12] = v12;
  *(v25 + 7) = a6;
  *(v25 + 8) = 0;
  v25[18] = 0;
  *(v25 + 10) = v23;
  *(v25 + 11) = &dword_2A13A4EF0;
  *(v23 + 11) = v25;
  off_2A13A4F40 = v25;
  _KTLDebugFlags = 13;
  pthread_mutex_unlock(&_MergedGlobals);
  if (!*(a1 + 8) && *(a1 + 16))
  {
    if (!a6)
    {
      v58 = dispatch_semaphore_create(0);
      v59 = *(v25 + 8);
      *(v25 + 8) = v58;
      if (v59)
      {
        dispatch_release(v59);
      }
    }

    do
    {
      v60 = v25[12];
      if (!v60)
      {
        break;
      }

      if (v60 >= 0xC00)
      {
        v61 = 3072;
      }

      else
      {
        v61 = v60;
      }

      v62 = *(v25 + 1);
      v63 = *(v25 + 5);
      if (v62)
      {
        __dst[0] = 0;
        v64 = *(v62 + 8);
        v65 = v61;
        if (v64)
        {
          while (1)
          {
            if (!(v64)())
            {
              v64 = 0;
              goto LABEL_102;
            }

            if (v65 < __dst[0])
            {
              break;
            }

            if (v65 == __dst[0])
            {
              v63 = *(v25 + 5);
              goto LABEL_72;
            }

            v63 += __dst[0];
            v64 = *(*(v25 + 1) + 8);
            v65 -= __dst[0];
            if (!v64)
            {
              goto LABEL_102;
            }
          }

          v64 = 1;
        }

LABEL_102:
        _KTLErrorPrint("ICE_FILER_transport_read", "Error: TelephonyUtilTransportRead (ret=%d, available=%d, read=%d).\n", v27, v28, v29, v30, v31, v32, v64);
        v25[18] = -6;
        break;
      }

LABEL_72:
      v104 = 0;
      v105 = 0;
      *&v66 = 0xAAAAAAAAAAAAAAAALL;
      *(&v66 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v109 = v66;
      *__p = v66;
      v107 = v66;
      v108 = v66;
      v106 = v66;
      AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(&v106);
      v67 = operator new(4uLL);
      *v67 = v61;
      v68 = __p[0];
      __p[0] = v67;
      if (v68)
      {
        operator delete(v68);
      }

      if (v60 <= 0xBFF)
      {
        v69 = 3072 - v61;
      }

      else
      {
        v69 = 0;
      }

      bzero(__dst + v61, v69);
      memcpy(__dst, v63, v61);
      v70 = operator new(0xC00uLL);
      memcpy(v70, __dst, 0xC00uLL);
      v71 = __p[1];
      __p[1] = v70;
      if (v71)
      {
        operator delete(v71);
      }

      AriSdk::MsgBase::getRawBytes();
      MEMORY[0x29C279C50](&v106);
      v72 = *(v104 + 2) - *v104;
      v103[1] = MEMORY[0x29EDCA5F8];
      v103[2] = 0x40000000;
      v103[3] = ___ZL15ICE_FILER_writeP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_E_block_invoke;
      v103[4] = &__block_descriptor_tmp_0;
      v103[5] = v25;
      v73 = AriHost::Send();
      if (v73)
      {
        v100 = v25[12];
        v102 = v25[8];
        _KTLErrorPrint("ICE_FILER_write", "%s: Failed to send (Remaining=%d/%d).  Aborting...\n", v27, v28, v29, v30, v31, v32, "ICE_FILER_write");
        v25[18] = -6;
      }

      else
      {
        if (!*(v25 + 1))
        {
          *(v25 + 5) += v61;
        }

        v25[12] -= v61;
      }

      if (v105 && !atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v105->__on_zero_shared)(v105);
        std::__shared_weak_count::__release_weak(v105);
      }
    }

    while (!v73);
    if (*(v25 + 8))
    {
      v92 = dispatch_time(0, 1000000 * (*(a1 + 20) - v25[8] / 0xC00 + 8 * (v25[8] / 0xC00)));
      if (dispatch_semaphore_wait(*(v25 + 8), v92))
      {
        _KTLErrorPrint("ICE_FILER_write", "Timeout waiting for transfer to complete\n", v93, v94, v95, v96, v97, v98, v99);
      }

      v90 = v25[18];
      ICE_FILER_lookup_remove(a5);
      goto LABEL_99;
    }

    goto LABEL_8;
  }

  v103[0] = 0;
  v33 = v25[12];
  if (!v33)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v34 = v33 >= 0xC00 ? 3072 : v33;
    v35 = *(v25 + 1);
    v36 = *(v25 + 5);
    if (v35)
    {
      break;
    }

LABEL_31:
    v104 = 0;
    v105 = 0;
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v109 = v39;
    *__p = v39;
    v107 = v39;
    v108 = v39;
    v106 = v39;
    AriSdk::ARI_CsiIceFilerWriteReq_SDK::ARI_CsiIceFilerWriteReq_SDK(&v106);
    v40 = operator new(4uLL);
    *v40 = v34;
    v41 = __p[0];
    __p[0] = v40;
    if (v41)
    {
      operator delete(v41);
    }

    if (v33 <= 0xBFF)
    {
      v42 = 3072 - v34;
    }

    else
    {
      v42 = 0;
    }

    bzero(__dst + v34, v42);
    memcpy(__dst, v36, v34);
    v43 = operator new(0xC00uLL);
    memcpy(v43, __dst, 0xC00uLL);
    v44 = __p[1];
    __p[1] = v43;
    if (v44)
    {
      operator delete(v44);
    }

    AriSdk::MsgBase::getRawBytes();
    MEMORY[0x29C279C50](&v106);
    v45 = *(a1 + 8);
    v46 = *v104;
    v47 = v104[1] - *v104;
    v48 = *(a1 + 20);
    __dst[0] = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v49, v50, v51, v52, v53, v54, v47);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v46);
    }

    if (*v45 && ((v55 = (*v45)(v45, v46, v47, __dst, 1, v48, 0), __dst[0] == v47) ? (v56 = v55) : (v56 = 0), (v56 & 1) != 0))
    {
      if (*(v25 + 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v27, v28, v29, v30, v31, v32, v47);
      if (*(v25 + 1))
      {
LABEL_46:
        v33 = v25[12] - v34;
        v25[12] = v33;
        v57 = v105;
        if (v105)
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }
    }

    *(v25 + 5) += v34;
    v33 = v25[12] - v34;
    v25[12] = v33;
    v57 = v105;
    if (v105)
    {
LABEL_50:
      if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
      }

      v33 = v25[12];
    }

LABEL_53:
    if (!v33)
    {
      goto LABEL_92;
    }
  }

  __dst[0] = 0;
  v37 = *(v35 + 8);
  v38 = v34;
  if (v37)
  {
    while (1)
    {
      if (!(v37)())
      {
        v37 = 0;
        goto LABEL_91;
      }

      if (v38 < __dst[0])
      {
        break;
      }

      if (v38 == __dst[0])
      {
        v36 = *(v25 + 5);
        goto LABEL_31;
      }

      v36 += __dst[0];
      v37 = *(*(v25 + 1) + 8);
      v38 -= __dst[0];
      if (!v37)
      {
        goto LABEL_91;
      }
    }

    v37 = 1;
  }

LABEL_91:
  _KTLErrorPrint("ICE_FILER_transport_read", "Error: TelephonyUtilTransportRead (ret=%d, available=%d, read=%d).\n", v27, v28, v29, v30, v31, v32, v37);
  v25[18] = -6;
LABEL_92:
  if (KTLUTACopyReceiveData(a1, v103))
  {
    __dst[0] = -1431655766;
    v80 = v103[0];
    v81 = (*(*v103[0] + 16))(v103[0]);
    BufCtx = AriMsg::GetBufCtx(v81, v80[2]);
    (*(*v80 + 16))(v80);
    v83 = v80[2];
    if (ARI_CsiIceFilerWriteRspCb_Extract())
    {
      v101 = v25[8];
      _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Failed ARI_EXTRACT (Remaining=%d/%d)\n", v84, v85, v86, v87, v88, v89, v25[12]);
      v25[18] = -7;
    }

    else
    {
      IceFilerWriteRspCb(__dst[0], BufCtx);
    }

    (*(*v80 + 8))(v80);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: ICE_FILER_write. Failed copyReceiveData\n", v74, v75, v76, v77, v78, v79, v99);
  }

  v90 = v25[18];
  ICE_FILER_lookup_remove(a5);
LABEL_99:
  result = v90;
  v91 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A3E870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297A3E884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  MEMORY[0x29C279C50](va1);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ICE_FILER_write(uint64_t a1, void *a2, uint64_t a3, AriHost *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    return ICE_FILER_write(a1, a2, 0, a3, a4, a5, a7, a8);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_write", "Error: %s. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, "ICE_FILER_write");
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    return ICE_FILER_read(a1, 0, a2, a3, a4, a5, a6, a8);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t ICE_FILER_read(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = *MEMORY[0x29EDCA608];
  v67 = a5;
  if (a1 && a4 && (a2 == 0) != (a3 == 0))
  {
    v9 = a5;
    if (*(a1 + 8) || a5 || !*(a1 + 16))
    {
      v13 = a4;
      if (!pthread_mutex_lock(&_MergedGlobals))
      {
        v24 = off_2A13A4F40;
        if (off_2A13A4F40 == &dword_2A13A4EF0)
        {
LABEL_17:
          v26 = operator new(0x60uLL);
          *(v26 + 8) = 0;
          *v26 = v9;
          *(v26 + 1) = a3;
          *(v26 + 2) = a1;
          v27 = a2;
          if (a3)
          {
            v27 = operator new[](0xC00uLL);
          }

          *(v26 + 3) = v27;
          v26[8] = v13;
          *(v26 + 5) = v27;
          v26[12] = v13;
          *(v26 + 7) = a6;
          *(v26 + 8) = 0;
          v26[18] = 0;
          *(v26 + 10) = v24;
          *(v26 + 11) = &dword_2A13A4EF0;
          *(v24 + 11) = v26;
          off_2A13A4F40 = v26;
          _KTLDebugFlags = 13;
          pthread_mutex_unlock(&_MergedGlobals);
          if (*(a1 + 8) || !*(a1 + 16))
          {
            v61 = 0;
            v60[0] = 0;
            v60[1] = 0;
            ARI_CsiIceFilerReadReq_ENC();
            v28 = operator new(0x18uLL);
            v28[2] = 0;
            *(v28 + 2) = 0;
            *v28 = &unk_2A1E625B0;
            KTLUTASendAndReleaseData(a1, v28);
            if (!v26[18])
            {
              while (1)
              {
                if (a7)
                {
                  (*(a7 + 16))(a7, v26[8] - v26[12]);
                }

                if (!KTLUTACopyReceiveData(a1, v60))
                {
                  break;
                }

                memset(__b, 170, sizeof(__b));
                v35 = v60[0];
                v36 = (*(*v60[0] + 16))(v60[0]);
                BufCtx = AriMsg::GetBufCtx(v36, v35[2]);
                (*(*v35 + 16))(v35);
                v38 = v35[2];
                if (ARI_CsiIceFilerReadRspCb_Extract())
                {
                  v58 = v26[8];
                  _KTLErrorPrint("ICE_FILER_read", "Error: Failed ARI_EXTRACT on copyReceiveData (Remaining=%d/%d)\n", v39, v40, v41, v42, v43, v44, v26[12]);
                  v26[18] = -7;
                }

                else
                {
                  IceFilerReadRspCb(-1431655766, 2863311530, __b, BufCtx);
                }

                (*(*v35 + 8))(v35);
                if (v26[18])
                {
                  goto LABEL_40;
                }
              }

              v59 = v26[8];
              _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Failed copyReceiveData (Remaining=%d/%d)\n", v29, v30, v31, v32, v33, v34, v26[12]);
            }

LABEL_40:
            if (a7)
            {
              (*(a7 + 16))(a7, v26[8] - v26[12]);
            }

            v55 = v26[18];
            ICE_FILER_lookup_remove(v67);
          }

          else
          {
            if (!a6)
            {
              v45 = dispatch_semaphore_create(0);
              v46 = *(v26 + 8);
              *(v26 + 8) = v45;
              if (v46)
              {
                dispatch_release(v46);
              }
            }

            v62 = MEMORY[0x29EDCA5F8];
            v63 = 0x40000000;
            v64 = ___ZL14ICE_FILER_readP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_EU13block_pointerFvjjE_block_invoke;
            v65 = &__block_descriptor_tmp_15;
            v66 = v26;
            Req_BLK = ARI_CsiIceFilerReadReq_BLK();
            if (!*(v26 + 8))
            {
              goto LABEL_8;
            }

            if (!Req_BLK)
            {
              v48 = dispatch_time(0, 1000000 * (*(a1 + 20) - v26[8] / 0xC00 + 8 * (v26[8] / 0xC00)));
              if (dispatch_semaphore_wait(*(v26 + 8), v48))
              {
                _KTLErrorPrint("ICE_FILER_read", "Timeout waiting for transfer to complete\n", v49, v50, v51, v52, v53, v54, v57);
              }
            }

            v55 = v26[18];
            ICE_FILER_lookup_remove(v67);
          }

          result = v55;
          v56 = *MEMORY[0x29EDCA608];
          return result;
        }

        v25 = off_2A13A4F40;
        while (*v25 != v9)
        {
          v25 = *(v25 + 10);
          if (v25 == &dword_2A13A4EF0)
          {
            goto LABEL_17;
          }
        }

        pthread_mutex_unlock(&_MergedGlobals);
      }

      _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Context Already Exists.\n", v15, v16, v17, v18, v19, v20, v57);
      result = 4294967291;
      v22 = *MEMORY[0x29EDCA608];
      return result;
    }

    _KTLErrorPrint("ICE_FILER_read", "Missing required transaction ID: context_id=%x\n", a3, a4, a5, a6, a7, a8, a5);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, v57);
  }

LABEL_8:
  result = 0xFFFFFFFFLL;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

{
  if (a2)
  {

    return ICE_FILER_read(a1, a2, 0, a3, a4, a5, 0, a8);
  }

  else
  {
    _KTLErrorPrint("ICE_FILER_read", "Error: ICE_FILER_read. Invalid Parameter.\n", a3, a4, a5, a6, a7, a8, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t ___ZL15ICE_FILER_writeP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_E_block_invoke(uint64_t a1, AriMsg *this, unsigned __int8 *a3)
{
  BufCtx = AriMsg::GetBufCtx(this, a3);
  if (ARI_CsiIceFilerWriteRspCb_Extract())
  {
    v11 = *(a1 + 32);
    v13 = *(v11 + 32);
    _KTLErrorPrint("ICE_FILER_write_block_invoke", "Error: ICE_FILER_write. Failed ARI_EXTRACT (Remaining=%d/%d)\n", v5, v6, v7, v8, v9, v10, *(v11 + 48));
    *(*(a1 + 32) + 72) = -7;
  }

  else
  {
    IceFilerWriteRspCb(-1431655766, BufCtx);
  }

  return 0;
}

uint64_t IceFilerWriteRspCb(int a1, AriHost *a2)
{
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    return result;
  }

  v11 = off_2A13A4F40;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
LABEL_5:
    _KTLErrorPrint("IceFilerWriteRspCb", "Error: IceFilerWriteRspCb. ARI Context ID %x not on Lookup Table.\n", v5, v6, v7, v8, v9, v10, a2);
  }

  else
  {
    while (*v11 != a2)
    {
      v11 = *(v11 + 10);
      if (v11 == &dword_2A13A4EF0)
      {
        goto LABEL_5;
      }
    }

    if (a1)
    {
      _KTLErrorPrint("IceFilerWriteRspCb", "Error: IceFilerWriteRspCb. Failure from Baseband.\n", v5, v6, v7, v8, v9, v10, v16);
      v11[18] = -3;
      v12 = *(v11 + 2);
      if (!*(v12 + 8))
      {
LABEL_10:
        if (*(v12 + 16))
        {
          v13 = *(v11 + 7);
          if (v13)
          {
            v14 = *(v11 + 3);
            v13();
            ICE_FILER_lookup_lockless_remove(a2);
          }

          else
          {
            v15 = *(v11 + 8);
            if (v15)
            {
              dispatch_semaphore_signal(v15);
            }
          }
        }
      }
    }

    else
    {
      v11[18] = v11[8];
      v12 = *(v11 + 2);
      if (!*(v12 + 8))
      {
        goto LABEL_10;
      }
    }
  }

  return pthread_mutex_unlock(&_MergedGlobals);
}

uint64_t ICE_FILER_lookup_remove(AriHost *a1)
{
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v3 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    while (*v3 != a1)
    {
      v3 = *(v3 + 10);
      if (v3 == &dword_2A13A4EF0)
      {
        goto LABEL_17;
      }
    }

    if (*(v3 + 1))
    {
      v4 = *(v3 + 3);
      if (v4)
      {
        operator delete[](v4);
      }
    }

    v6 = *(v3 + 10);
    v5 = *(v3 + 11);
    *(v6 + 88) = v5;
    *(v5 + 80) = v6;
    v7 = *(v3 + 8);
    if (v7)
    {
      dispatch_release(v7);
    }

    operator delete(v3);
    if (off_2A13A4F40 == &dword_2A13A4EF0)
    {
      _KTLDebugFlags = 15;
    }
  }

LABEL_17:
  result = pthread_mutex_unlock(&_MergedGlobals);
  if (a1)
  {
LABEL_3:

    return AriHost::ExitTrx(a1);
  }

  return result;
}

AriHost *ICE_FILER_lookup_lockless_remove(AriHost *result)
{
  v1 = off_2A13A4F40;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
    goto LABEL_11;
  }

  while (*v1 != result)
  {
    v1 = *(v1 + 10);
    if (v1 == &dword_2A13A4EF0)
    {
      goto LABEL_11;
    }
  }

  v2 = result;
  if (*(v1 + 1))
  {
    v3 = *(v1 + 3);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  v5 = *(v1 + 10);
  v4 = *(v1 + 11);
  *(v5 + 88) = v4;
  *(v4 + 80) = v5;
  v6 = *(v1 + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  operator delete(v1);
  result = v2;
  if (off_2A13A4F40 == &dword_2A13A4EF0)
  {
    _KTLDebugFlags = 15;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
LABEL_11:
    if (!result)
    {
      return result;
    }
  }

  return AriHost::ExitTrx(result);
}

uint64_t ___ZL14ICE_FILER_readP10KTLOptionsPvP26TelephonyUtilTransport_tagjiPFviS1_EU13block_pointerFvjjE_block_invoke(uint64_t a1, AriMsg *a2, unsigned int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(__b, 170, sizeof(__b));
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  if (ARI_CsiIceFilerReadRspCb_Extract())
  {
    v13 = *(a1 + 32);
    v16 = *(v13 + 32);
    _KTLErrorPrint("ICE_FILER_read_block_invoke", "Error: Failed ARI_EXTRACT on copyReceiveData (Remaining=%d/%d)\n", v7, v8, v9, v10, v11, v12, *(v13 + 48));
    *(*(a1 + 32) + 72) = -7;
  }

  else
  {
    IceFilerReadRspCb(-1431655766, 2863311530, __b, BufCtx);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t IceFilerReadRspCb(int a1, uint64_t a2, const void *a3, AriHost *a4)
{
  result = pthread_mutex_lock(&_MergedGlobals);
  if (result)
  {
    return result;
  }

  v15 = off_2A13A4F40;
  if (off_2A13A4F40 != &dword_2A13A4EF0)
  {
    while (*v15 != a4)
    {
      v15 = *(v15 + 10);
      if (v15 == &dword_2A13A4EF0)
      {
        goto LABEL_5;
      }
    }

    if (a1)
    {
      _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. Uta Failure from Baseband.\n", v9, v10, v11, v12, v13, v14, v24);
      v16 = -3;
    }

    else if (a3)
    {
      if (v15[12] >= a2)
      {
        if (*(v15 + 1))
        {
          if (ICE_FILER_transport_write(v15, a3, a2, v10, v11, v12, v13, v14) == 1)
          {
            v20 = v15[12] - a2;
            v15[12] = v20;
            if (v20)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v15[18] = -6;
            v23 = v15[12] - a2;
            v15[12] = v23;
            if (v23)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          memcpy(*(v15 + 5), a3, a2);
          *(v15 + 5) += a2;
          v22 = v15[12] - a2;
          v15[12] = v22;
          if (v22)
          {
            goto LABEL_9;
          }
        }

        v16 = v15[8];
      }

      else
      {
        _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. Buffer Overflow.\n", v9, v10, v11, v12, v13, v14, v24);
        v16 = -2;
      }
    }

    else
    {
      _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. NUL p_data from Baseband.\n", v9, v10, v11, v12, v13, v14, v24);
      v16 = -4;
    }

    v15[18] = v16;
LABEL_9:
    v17 = *(v15 + 2);
    if (!*(v17 + 8) && *(v17 + 16) && v15[18])
    {
      v18 = *(v15 + 7);
      if (v18)
      {
        v19 = *(v15 + 3);
        v18();
        ICE_FILER_lookup_lockless_remove(a4);
      }

      else
      {
        v21 = *(v15 + 8);
        if (v21)
        {
          dispatch_semaphore_signal(v21);
        }
      }
    }

    goto LABEL_10;
  }

LABEL_5:
  _KTLErrorPrint("IceFilerReadRspCb", "Error: IceFilerReadRspCb. ARI Context ID %x not on Lookup Table.\n", v9, v10, v11, v12, v13, v14, a4);
LABEL_10:

  return pthread_mutex_unlock(&_MergedGlobals);
}

uint64_t ICE_FILER_transport_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 1;
  }

  v9 = **(a1 + 8);
  if (v9)
  {
    while (v9())
    {
      v9 = **(a1 + 8);
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v9 = 0;
  }

LABEL_9:
  _KTLErrorPrint("ICE_FILER_transport_write", "Error: TelephonyUtilTransportWrite (ret=%d, available=%d, written=%d).\n", a3, a4, a5, a6, a7, a8, v9);
  return 4294967290;
}

uint64_t ktl::KTLReceivePacket::fetchARIMsgFromTransport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24))
  {
    _KTLDebugPrint("fetchARIMsgFromTransport", "Pulling next message from backlog\n", a3, a4, a5, a6, a7, a8, v26);
    v9 = *(a1 + 24);
    *(a1 + 24) = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    v10 = operator new(0x30uLL);
    v16 = operator new[](0x7FFFuLL);
    v10[2] = 0x7FFF;
    *(v10 + 2) = v16;
    *v10 = &unk_2A1E62D20;
    v10[6] = 0x7FFF;
    *(v10 + 4) = v16;
    *(v10 + 5) = 0;
    v17 = *(a1 + 20);
    v18 = *(*(a1 + 8) + 8);
    if (v18)
    {
      v18();
      v12 = 0;
    }

    _KTLDebugPrint("sKTLPacketCopyReceiveData", "Receive Data failed.\n", v11, v12, v13, v17, v14, v15, v26);
    (*(*v10 + 8))(v10);
    _KTLErrorPrint("fetchARIMsgFromTransport", "Failed initial receive\n", v19, v20, v21, v22, v23, v24, v27);
    return 0;
  }

  return v9;
}

uint64_t ktl::KTLReceivePacket::setMessageBounds(uint64_t this, unsigned int a2, int a3)
{
  *(this + 32) = *(this + 16) + a2;
  *(this + 8) = a3;
  return this;
}

uint64_t sFetchMessageRemainder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  MEMORY[0x2A1C7C4A8]();
  if (v7)
  {
    memset(v27 - ((v6 + 15) & 0x1FFFFFFF0), 170, v6);
  }

  _KTLDebugPrint("sFetchMessageRemainder", "Have %u bytes, expect %u more...", v7, v8, v9, v10, v11, v12, *(a2 + 8));
  v19 = 0;
  if (a3)
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 20);
    v22 = v27 - ((v6 + 15) & 0x1FFFFFFF0);
    v23 = a3;
    while (1)
    {
      HIDWORD(v27[0]) = 0;
      v24 = *(v20 + 8);
      if (!v24 || (v24(v20, v22, v23, v27 + 4, 1, v21, 0) & 1) == 0)
      {
        goto LABEL_13;
      }

      v19 += HIDWORD(v27[0]);
      v22 += HIDWORD(v27[0]);
      v23 = (v23 - HIDWORD(v27[0]));
      if (!v23)
      {
        if (v19 && (_KTLDebugFlags & 2) != 0)
        {
          off_2A18991C8("Rx:", 1, v27 - ((v6 + 15) & 0x1FFFFFFF0));
        }

        break;
      }
    }
  }

  if (v19 != a3)
  {
LABEL_13:
    _KTLDebugPrint("sFetchMessageRemainder", "Failed receive of remaining packet bytes (expected=%u, actual=%u)\n", v13, v14, v15, v16, v17, v18, a3);
    result = 0;
    goto LABEL_14;
  }

  _KTLDebugPrint("sFetchMessageRemainder", "Success\n", v13, v14, v15, v16, v17, v18, v27[0]);
  memcpy((*(a2 + 32) + *(a2 + 8)), v27 - ((v6 + 15) & 0x1FFFFFFF0), v6);
  *(a2 + 8) += a3;
  result = 1;
LABEL_14:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void *ktl::KTLReceivePacket::append(ktl::KTLReceivePacket *this, size_t __n, unsigned __int8 *__src)
{
  v3 = __n;
  result = memcpy((*(this + 4) + *(this + 2)), __src, __n);
  *(this + 2) += v3;
  return result;
}

BOOL KTLBspSetApWakeInterval(uint64_t a1)
{
  v2 = *(a1 + 16);
  v33 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v25 = 0;
    v34 = 0;
    v35 = v2;
    v29 = 0;
    if (!ARI_CsiIceBspSetApWakeIntervalReq_ENC() && (v4 = operator new(0x18uLL), v5 = v29, v4[2] = v34, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v4)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v6 = v25;
      (*(*v25 + 16))(v25);
      v7 = v6[2];
      v8 = ARI_CsiIceBspSetApWakeIntervalRspCb_Extract();
      (*(*v6 + 8))(v6);
      v9 = v8 == 0;
      v10 = HIDWORD(v33);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    return !v10 && v9;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1431655766;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiIceBspSetApWakeIntervalReq_BLK())
  {
    v9 = 0;
    v10 = *(v30 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v12, v14);
  if (v21)
  {
    _KTLErrorPrint("KTLBspSetApWakeInterval", "Timeout waiting for response.\n", v15, v16, v17, v18, v19, v20, v23);
  }

  if (v33)
  {
    AriHost::ExitTrx(v33);
  }

  v10 = *(v30 + 6);
  if (!v21)
  {
    v9 = *(v26 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return !v10 && v9;
}

void sub_297A4005C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspSetApWakeInterval_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceBspSetApWakeIntervalRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLPing(uint64_t a1, BOOL *a2)
{
  *a2 = 0;
  RestoreOSMode = getRestoreOSMode();
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v5;
  v48[3] = v5;
  v48[1] = v5;
  v48[0] = v5;
  AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(v48);
  v46 = 0;
  v47 = 0;
  AriSdk::MsgBase::getRawBytes();
  v12 = *(a1 + 8);
  if (!v12 && *(a1 + 16))
  {
    v25 = dispatch_semaphore_create(0);
    v26 = v25;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2000000000;
    v45 = 0;
    v27 = *(v46 + 2) - *v46;
    v28 = *(a1 + 16);
    object = v25;
    if (v25)
    {
      dispatch_retain(v25);
    }

    v29 = *(a1 + 20);
    if (AriHost::Send())
    {
      v24 = 0;
      v30 = object;
      if (!object)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v31 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (dispatch_semaphore_wait(v26, v31))
      {
        _KTLErrorPrint("KTLPing", "Timeout waiting for response.\n", v32, v33, v34, v35, v36, v37, v40);
        v24 = 0;
        v30 = object;
        if (!object)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = *(v43 + 24);
        v30 = object;
        if (!object)
        {
LABEL_22:
          _Block_object_dispose(&v42, 8);
          if (v26)
          {
            dispatch_release(v26);
          }

          goto LABEL_24;
        }
      }
    }

    dispatch_release(v30);
    goto LABEL_22;
  }

  v13 = *v46;
  v14 = v46[1] - *v46;
  v15 = *(a1 + 20);
  LODWORD(v42) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v6, v7, v8, v9, v10, v11, v14);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v13);
  }

  if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v42, 1, v15, 0), v42 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
  {
    v42 = 0;
    if (KTLUTACopyReceiveData(a1, &v42))
    {
      v24 = KTLPingParseAndRelease(v42, a2, RestoreOSMode);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    v24 = 0;
  }

LABEL_24:
  v38 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  MEMORY[0x29C27A120](v48);
  return v24 & 1;
}

void sub_297A403F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a21, 8);
    if (!v25)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a25);
      MEMORY[0x29C27A120](v26 - 128);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a21, 8);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v25);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a25);
  MEMORY[0x29C27A120](v26 - 128);
  _Unwind_Resume(a1);
}

void sub_297A4045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A120](v17 - 128);
  _Unwind_Resume(a1);
}

uint64_t __KTLPing_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLPingParseAndRelease(v6, *(a1 + 48), *(a1 + 64));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

uint64_t KTLPingParseAndRelease(unsigned int *a1, BOOL *a2, int a3)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[2] = v6;
  v19[3] = v6;
  v19[0] = v6;
  v19[1] = v6;
  v7 = (*(*a1 + 16))(a1);
  v8 = a1[2];
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v19, v7);
  if (AriSdk::MsgBase::getMergedGMID(v19) == 67600384)
  {
    v15 = "NACK Received\n";
LABEL_5:
    _KTLErrorPrint("KTLPingParseAndRelease", v15, v9, v10, v11, v12, v13, v14, *&v19[0]);
    v16 = 0;
    goto LABEL_6;
  }

  if (AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v19))
  {
    v15 = "Malformed response\n";
    goto LABEL_5;
  }

  v18 = (*v20 - 3) < 2;
  if (!a3)
  {
    v18 = *v20 == 4;
  }

  *a2 = v18;
  v16 = 1;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A1F0](v19);
  return v16;
}

void __copy_helper_block_e8_32r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLMonMemoryStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v44 = v3;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = -1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = -1431655766;
    v30 = 0;
    v31 = &v30;
    v32 = 0x4002000000;
    v33 = __Block_byref_object_copy__6;
    v34 = __Block_byref_object_dispose__6;
    memset(v35, 170, sizeof(v35));
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    v28 = MEMORY[0x29EDCA5F8];
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (ARI_CsiMonMemoryStatusReq_BLK())
    {
      v12 = 0;
      v13 = *(v37 + 6);
      v17 = v31[7];
      *a3 = *(v31 + 5);
      *(a3 + 16) = v17;
      v18 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = dispatch_time(0, 1000000 * *(a1 + 20));
      v26 = dispatch_semaphore_wait(v16, v19);
      if (v26)
      {
        _KTLErrorPrint("KTLMonMemoryStatus", "Timeout waiting for response.\n", v20, v21, v22, v23, v24, v25, v28);
      }

      if (v44)
      {
        AriHost::ExitTrx(v44);
      }

      v13 = *(v37 + 6);
      v27 = v31[7];
      *a3 = *(v31 + 5);
      *(a3 + 16) = v27;
      if (v26)
      {
        v12 = 0;
        v18 = object;
        if (!object)
        {
LABEL_25:
          if (v16)
          {
            dispatch_release(v16);
          }

          _Block_object_dispose(&v30, 8);
          _Block_object_dispose(&v36, 8);
          _Block_object_dispose(&v40, 8);
          return !v13 && v12;
        }
      }

      else
      {
        v12 = *(v41 + 6) == 0;
        v18 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v18);
    goto LABEL_25;
  }

  v40 = 0;
  LODWORD(v36) = v3;
  v45 = 0;
  v30 = 0;
  if (!ARI_CsiMonMemoryStatusReq_ENC() && (v7 = operator new(0x18uLL), v8 = v30, v7[2] = v45, *(v7 + 2) = v8, *v7 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v7)) && KTLUTACopyReceiveData(a1, &v40))
  {
    v9 = v40;
    (*(*v40 + 16))(v40);
    v10 = v9[2];
    v11 = ARI_CsiMonMemoryStatusRspCb_Extract();
    (*(*v9 + 8))(v9);
    v12 = v11 == 0;
    v13 = HIDWORD(v44);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  return !v13 && v12;
}

void sub_297A40A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    dispatch_release(v25);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLMonMemoryStatus_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMonMemoryStatusRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLCddGetDebugLog(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v44 = 0;
  v3 = *(a1 + 16);
  v43 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v33 = 0;
    LODWORD(v29) = v3;
    v45 = 0;
    v37 = 0;
    if (!ARI_CsiCddGetDebugLogReq_ENC() && (v8 = operator new(0x18uLL), v9 = v37, v8[2] = v45, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v33))
    {
      v10 = v33;
      (*(*v33 + 16))(v33);
      v11 = v10[2];
      v12 = ARI_CsiCddGetDebugLogRspCb_Extract();
      (*(*v10 + 8))(v10);
      v13 = v12 == 0;
      v14 = v44;
      v15 = HIDWORD(v44);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3002000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__5;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (!ARI_CsiCddGetDebugLogReq_BLK())
  {
    v19 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v18, v19))
    {
      *a3 = *(v30 + 6);
      v13 = *(v34 + 6) == 0;
      v14 = *(v38 + 10);
      v15 = *(v38 + 11);
      v26 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLCddGetDebugLog", "Timeout waiting for response.\n", v20, v21, v22, v23, v24, v25, v27);
  }

  v13 = 0;
  *a3 = *(v30 + 6);
  v14 = *(v38 + 10);
  v15 = *(v38 + 11);
  v26 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v26);
  }

LABEL_19:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
LABEL_24:
  *a2 = v15;
  return !v14 && v13;
}

void sub_297A40E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLCddGetDebugLog_block_invoke(void *a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(a1[5] + 8);
  *(*(a1[4] + 8) + 24) = ARI_CsiCddGetDebugLogRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  v8 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v8);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLSahGetCrashReport(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v44 = 0;
  v3 = *(a1 + 16);
  v43 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v33 = 0;
    LODWORD(v29) = v3;
    v45 = 0;
    v37 = 0;
    if (!ARI_CsiSahGetCrashReportReq_ENC() && (v8 = operator new(0x18uLL), v9 = v37, v8[2] = v45, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v33))
    {
      v10 = v33;
      (*(*v33 + 16))(v33);
      v11 = v10[2];
      v12 = ARI_CsiSahGetCrashReportRspCb_Extract();
      (*(*v10 + 8))(v10);
      v13 = v12 == 0;
      v14 = v44;
      v15 = HIDWORD(v44);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3002000000;
  v40 = __Block_byref_object_copy__9;
  v41 = __Block_byref_object_dispose__10;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (!ARI_CsiSahGetCrashReportReq_BLK())
  {
    v19 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v18, v19))
    {
      *a3 = *(v30 + 6);
      v13 = *(v34 + 6) == 0;
      v14 = *(v38 + 10);
      v15 = *(v38 + 11);
      v26 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLSahGetCrashReport", "Timeout waiting for response.\n", v20, v21, v22, v23, v24, v25, v27);
  }

  v13 = 0;
  *a3 = *(v30 + 6);
  v14 = *(v38 + 10);
  v15 = *(v38 + 11);
  v26 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v26);
  }

LABEL_19:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
LABEL_24:
  *a2 = v15;
  return !v14 && v13;
}

void sub_297A4125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSahGetCrashReport_block_invoke(void *a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(a1[5] + 8);
  *(*(a1[4] + 8) + 24) = ARI_CsiSahGetCrashReportRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  v8 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v8);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLCddGetParamDump(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v44 = 0;
  v3 = *(a1 + 16);
  v43 = v3;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (v7)
  {
    v33 = 0;
    LODWORD(v29) = v3;
    v45 = 0;
    v37 = 0;
    if (!ARI_CsiCddGetParamDumpReq_ENC() && (v8 = operator new(0x18uLL), v9 = v37, v8[2] = v45, *(v8 + 2) = v9, *v8 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v8)) && KTLUTACopyReceiveData(a1, &v33))
    {
      v10 = v33;
      (*(*v33 + 16))(v33);
      v11 = v10[2];
      v12 = ARI_CsiCddGetParamDumpRspCb_Extract();
      (*(*v10 + 8))(v10);
      v13 = v12 == 0;
      v14 = v44;
      v15 = HIDWORD(v44);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v13 = 0;
    }

    *a3 = 0;
    goto LABEL_24;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3002000000;
  v40 = __Block_byref_object_copy__14_0;
  v41 = __Block_byref_object_dispose__15_0;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (!ARI_CsiCddGetParamDumpReq_BLK())
  {
    v19 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (!dispatch_semaphore_wait(v18, v19))
    {
      *a3 = *(v30 + 6);
      v13 = *(v34 + 6) == 0;
      v14 = *(v38 + 10);
      v15 = *(v38 + 11);
      v26 = object;
      if (!object)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    _KTLErrorPrint("KTLCddGetParamDump", "Timeout waiting for response.\n", v20, v21, v22, v23, v24, v25, v27);
  }

  v13 = 0;
  *a3 = *(v30 + 6);
  v14 = *(v38 + 10);
  v15 = *(v38 + 11);
  v26 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v26);
  }

LABEL_19:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
LABEL_24:
  *a2 = v15;
  return !v14 && v13;
}

void sub_297A41654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLCddGetParamDump_block_invoke(void *a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(a1[5] + 8);
  *(*(a1[4] + 8) + 24) = ARI_CsiCddGetParamDumpRspCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  v8 = a1[7];
  *(*(a1[6] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v8);
  return *(*(a1[4] + 8) + 24);
}

BOOL KTLBspSwTrap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v29 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = -1;
    v10 = dispatch_semaphore_create(0);
    v11 = v10;
    v23[1] = MEMORY[0x29EDCA5F8];
    v23[2] = 1174405120;
    v23[3] = __KTLBspSwTrap_block_invoke;
    v23[4] = &__block_descriptor_tmp_19;
    v23[5] = &v25;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    if (ARI_CsiBspSwTrapReq_BLK())
    {
      goto LABEL_18;
    }

    v12 = dispatch_time(0, 1000000 * *(a1 + 20));
    v19 = dispatch_semaphore_wait(v11, v12);
    if (v19)
    {
      _KTLErrorPrint("KTLBspSwTrap", "Timeout waiting for response.\n", v13, v14, v15, v16, v17, v18, v22);
    }

    if (v29)
    {
      AriHost::ExitTrx(v29);
    }

    if (v19)
    {
LABEL_18:
      v20 = 0;
      v21 = object;
      if (!object)
      {
LABEL_20:
        if (v11)
        {
          dispatch_release(v11);
        }

        _Block_object_dispose(&v25, 8);
        return v20;
      }
    }

    else
    {
      v20 = *(v26 + 6) == 0;
      v21 = object;
      if (!object)
      {
        goto LABEL_20;
      }
    }

    dispatch_release(v21);
    goto LABEL_20;
  }

  v23[0] = 0;
  v30 = 0;
  v31 = v2;
  v25 = 0;
  if (ARI_CsiBspSwTrapReq_ENC())
  {
    return 0;
  }

  v4 = operator new(0x18uLL);
  v5 = v25;
  v4[2] = v30;
  *(v4 + 2) = v5;
  *v4 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v4) || !KTLUTACopyReceiveData(a1, v23))
  {
    return 0;
  }

  v6 = v23[0];
  (*(*v23[0] + 16))(v23[0]);
  v7 = v6[2];
  v8 = ARI_CsiBspSwTrapRspCb_Extract();
  (*(*v6 + 8))(v6);
  return v8 == 0;
}

void sub_297A419BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
    if (!v17)
    {
LABEL_3:
      _Block_object_dispose(&a17, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspSwTrap_block_invoke(uint64_t a1)
{
  v2 = ARI_CsiBspSwTrapRspCb_Extract();
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  dispatch_semaphore_signal(v3);
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLBspDebugJtagMode(uint64_t a1)
{
  v2 = *(a1 + 16);
  v33 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v25 = 0;
    v34 = 0;
    v35 = v2;
    v29 = 0;
    if (!ARI_CsiBspDebugJtagModeReq_ENC() && (v4 = operator new(0x18uLL), v5 = v29, v4[2] = v34, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v4)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v6 = v25;
      (*(*v25 + 16))(v25);
      v7 = v6[2];
      v8 = ARI_CsiBspDebugJtagModeRspCb_Extract();
      (*(*v6 + 8))(v6);
      v9 = v8 == 0;
      v10 = HIDWORD(v33);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    return !v10 && v9;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1431655766;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiBspDebugJtagModeReq_BLK())
  {
    v9 = 0;
    v10 = *(v30 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v12, v14);
  if (v21)
  {
    _KTLErrorPrint("KTLBspDebugJtagMode", "Timeout waiting for response.\n", v15, v16, v17, v18, v19, v20, v23);
  }

  if (v33)
  {
    AriHost::ExitTrx(v33);
  }

  v10 = *(v30 + 6);
  if (!v21)
  {
    v9 = *(v26 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return !v10 && v9;
}

void sub_297A41DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspDebugJtagMode_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspDebugJtagModeRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspSetNvItemsToState(uint64_t a1)
{
  v2 = *(a1 + 16);
  v33 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v25 = 0;
    v34 = 0;
    v35 = v2;
    v29 = 0;
    if (!ARI_CsiBspSetNvItemsToStateReq_ENC() && (v4 = operator new(0x18uLL), v5 = v29, v4[2] = v34, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v4)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v6 = v25;
      (*(*v25 + 16))(v25);
      v7 = v6[2];
      v8 = ARI_CsiBspSetNvItemsToStateRspCb_Extract();
      (*(*v6 + 8))(v6);
      v9 = v8 == 0;
      v10 = HIDWORD(v33);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    return !v10 && v9;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1431655766;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiBspSetNvItemsToStateReq_BLK())
  {
    v9 = 0;
    v10 = *(v30 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v12, v14);
  if (v21)
  {
    _KTLErrorPrint("KTLBspSetNvItemsToState", "Timeout waiting for response.\n", v15, v16, v17, v18, v19, v20, v23);
  }

  if (v33)
  {
    AriHost::ExitTrx(v33);
  }

  v10 = *(v30 + 6);
  if (!v21)
  {
    v9 = *(v26 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return !v10 && v9;
}

void sub_297A42118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspSetNvItemsToState_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspSetNvItemsToStateRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspShutdown(uint64_t a1)
{
  v2 = *(a1 + 16);
  v29 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (!v3)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = -1;
    v10 = dispatch_semaphore_create(0);
    v11 = v10;
    v23[1] = MEMORY[0x29EDCA5F8];
    v23[2] = 1174405120;
    v23[3] = __KTLBspShutdown_block_invoke;
    v23[4] = &__block_descriptor_tmp_28;
    v23[5] = &v25;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    if (ARI_CsiBspShutdownReq_BLK())
    {
      goto LABEL_18;
    }

    v12 = dispatch_time(0, 1000000 * *(a1 + 20));
    v19 = dispatch_semaphore_wait(v11, v12);
    if (v19)
    {
      _KTLErrorPrint("KTLBspShutdown", "Timeout waiting for response.\n", v13, v14, v15, v16, v17, v18, v22);
    }

    if (v29)
    {
      AriHost::ExitTrx(v29);
    }

    if (v19)
    {
LABEL_18:
      v20 = 0;
      v21 = object;
      if (!object)
      {
LABEL_20:
        if (v11)
        {
          dispatch_release(v11);
        }

        _Block_object_dispose(&v25, 8);
        return v20;
      }
    }

    else
    {
      v20 = *(v26 + 6) == 0;
      v21 = object;
      if (!object)
      {
        goto LABEL_20;
      }
    }

    dispatch_release(v21);
    goto LABEL_20;
  }

  v23[0] = 0;
  v30 = 0;
  v31 = v2;
  v25 = 0;
  if (ARI_CsiBspShutdownReq_ENC())
  {
    return 0;
  }

  v4 = operator new(0x18uLL);
  v5 = v25;
  v4[2] = v30;
  *(v4 + 2) = v5;
  *v4 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v4) || !KTLUTACopyReceiveData(a1, v23))
  {
    return 0;
  }

  v6 = v23[0];
  (*(*v23[0] + 16))(v23[0]);
  v7 = v6[2];
  v8 = ARI_CsiBspShutdownRspCb_Extract();
  (*(*v6 + 8))(v6);
  return v8 == 0;
}

void sub_297A42444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
    if (!v17)
    {
LABEL_3:
      _Block_object_dispose(&a17, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspShutdown_block_invoke(uint64_t a1)
{
  v2 = ARI_CsiBspShutdownRspCb_Extract();
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  dispatch_semaphore_signal(v3);
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLSysGetInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    _KTLErrorPrint("KTLSysGetInfo", "System Information Parameter is missing.\n", 0, a4, a5, a6, a7, a8, v30[0]);
    return 0;
  }

  v10 = *(a1 + 16);
  v36 = v10;
  if (*(a1 + 8))
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = -1;
    v17 = dispatch_semaphore_create(0);
    v18 = v17;
    v30[1] = MEMORY[0x29EDCA5F8];
    v30[2] = 1174405120;
    v30[3] = __KTLSysGetInfo_block_invoke;
    v30[4] = &__block_descriptor_tmp_30_0;
    v30[5] = &v32;
    v30[6] = a3;
    object = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    if (ARI_CsiSysGetInfoReqV2_BLK())
    {
      goto LABEL_21;
    }

    v19 = dispatch_time(0, 1000000 * *(a1 + 20));
    v26 = dispatch_semaphore_wait(v18, v19);
    if (v26)
    {
      _KTLErrorPrint("KTLSysGetInfo", "Timeout waiting for response.\n", v20, v21, v22, v23, v24, v25, v30[0]);
    }

    if (v36)
    {
      AriHost::ExitTrx(v36);
    }

    if (v26)
    {
LABEL_21:
      v27 = 0;
      v28 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = *(v33 + 6) == 0;
      v28 = object;
      if (!object)
      {
LABEL_23:
        if (v18)
        {
          dispatch_release(v18);
        }

        _Block_object_dispose(&v32, 8);
        if (v27)
        {
          return *(a3 + 516) == 0;
        }

        return 0;
      }
    }

    dispatch_release(v28);
    goto LABEL_23;
  }

  v30[0] = 0;
  v37 = 0;
  v38 = v10;
  v32 = 0;
  if (!ARI_CsiSysGetInfoReqV2_ENC())
  {
    v12 = operator new(0x18uLL);
    v13 = v32;
    v12[2] = v37;
    *(v12 + 2) = v13;
    *v12 = &unk_2A1E625B0;
    if (KTLUTASendAndReleaseData(a1, v12))
    {
      if (KTLUTACopyReceiveData(a1, v30))
      {
        v14 = v30[0];
        (*(*v30[0] + 16))(v30[0]);
        v15 = v14[2];
        v16 = ARI_CsiSysGetInfoRspCbV2_Extract();
        (*(*v14 + 8))(v14);
        if (!v16)
        {
          return *(a3 + 516) == 0;
        }
      }
    }
  }

  return 0;
}

void sub_297A42790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
    if (!v17)
    {
LABEL_3:
      _Block_object_dispose(&a17, 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  dispatch_release(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLSysGetInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiSysGetInfoRspCbV2_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLBspGetCalibrationStatus(uint64_t a1, _DWORD *a2)
{
  v41 = 0;
  v2 = *(a1 + 16);
  v40 = v2;
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = -1431655766;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = -1431655766;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = -1;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    v26 = MEMORY[0x29EDCA5F8];
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (ARI_CsiBspGetCalibrationStatusReq_BLK())
    {
      v11 = 0;
      v12 = *(v37 + 6);
      v13 = *(v33 + 6);
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v16, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLBspGetCalibrationStatus", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v26);
      }

      if (v40)
      {
        AriHost::ExitTrx(v40);
      }

      v12 = *(v37 + 6);
      v13 = *(v33 + 6);
      if (v25)
      {
        v11 = 0;
        v17 = object;
        if (!object)
        {
LABEL_25:
          if (v16)
          {
            dispatch_release(v16);
          }

          _Block_object_dispose(&v28, 8);
          _Block_object_dispose(&v32, 8);
          _Block_object_dispose(&v36, 8);
          goto LABEL_28;
        }
      }

      else
      {
        v11 = *(v29 + 6) == 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_25;
  }

  v32 = 0;
  LODWORD(v28) = v2;
  v42 = 0;
  v36 = 0;
  if (!ARI_CsiBspGetCalibrationStatusReq_ENC() && (v6 = operator new(0x18uLL), v7 = v36, v6[2] = v42, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v6)) && KTLUTACopyReceiveData(a1, &v32))
  {
    v8 = v32;
    (*(*v32 + 16))(v32);
    v9 = v8[2];
    v10 = ARI_CsiBspGetCalibrationStatusRspCb_Extract();
    (*(*v8 + 8))(v8);
    v11 = v10 == 0;
    v13 = v41;
    v12 = HIDWORD(v41);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

LABEL_28:
  *a2 = v13;
  return !v12 && v11;
}

void sub_297A42BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspGetCalibrationStatus_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspGetCalibrationStatusRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspStateGet(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 16);
  v40 = v3;
  v41 = -1;
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = -1431655766;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = -1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2000000000;
    v31 = -1431655766;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    v26 = MEMORY[0x29EDCA5F8];
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (ARI_CsiBspStateGetReq_BLK())
    {
      v12 = 0;
      v13 = *(v37 + 6);
      *a3 = *(v29 + 6);
      v17 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v16, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLBspStateGet", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v26);
      }

      if (v40)
      {
        AriHost::ExitTrx(v40);
      }

      v13 = *(v37 + 6);
      *a3 = *(v29 + 6);
      if (v25)
      {
        v12 = 0;
        v17 = object;
        if (!object)
        {
LABEL_25:
          if (v16)
          {
            dispatch_release(v16);
          }

          _Block_object_dispose(&v28, 8);
          _Block_object_dispose(&v32, 8);
          _Block_object_dispose(&v36, 8);
          return !v13 && v12;
        }
      }

      else
      {
        v12 = *(v33 + 6) == 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_25;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_25;
  }

  v32 = 0;
  LODWORD(v28) = v3;
  v42 = 0;
  v36 = 0;
  if (!ARI_CsiBspStateGetReq_ENC() && (v7 = operator new(0x18uLL), v8 = v36, v7[2] = v42, *(v7 + 2) = v8, *v7 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v7)) && KTLUTACopyReceiveData(a1, &v32))
  {
    v9 = v32;
    (*(*v32 + 16))(v32);
    v10 = v9[2];
    v11 = ARI_CsiBspStateGetRspCb_Extract();
    (*(*v9 + 8))(v9);
    v12 = v11 == 0;
    v13 = v41;
  }

  else
  {
    v12 = 0;
    v13 = -1;
  }

  return !v13 && v12;
}

void sub_297A42FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspStateGet_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspStateGetRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLBspStateSet(uint64_t a1)
{
  v2 = *(a1 + 16);
  v33 = v2;
  v34 = -1;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v25 = 0;
    v35 = 0;
    v36 = v2;
    v29 = 0;
    if (!ARI_CsiBspStateSetReq_ENC() && (v4 = operator new(0x18uLL), v5 = v29, v4[2] = v35, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v4)) && KTLUTACopyReceiveData(a1, &v25))
    {
      v6 = v25;
      (*(*v25 + 16))(v25);
      v7 = v6[2];
      v8 = ARI_CsiBspStateSetRspCb_Extract();
      (*(*v6 + 8))(v6);
      v9 = v8 == 0;
      v10 = v34;
    }

    else
    {
      v9 = 0;
      v10 = -1;
    }

    return !v10 && v9;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1431655766;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiBspStateSetReq_BLK())
  {
    v9 = 0;
    v10 = *(v30 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v12, v14);
  if (v21)
  {
    _KTLErrorPrint("KTLBspStateSet", "Timeout waiting for response.\n", v15, v16, v17, v18, v19, v20, v23);
  }

  if (v33)
  {
    AriHost::ExitTrx(v33);
  }

  v10 = *(v30 + 6);
  if (!v21)
  {
    v9 = *(v26 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return !v10 && v9;
}

void sub_297A43338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspStateSet_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspStateSetRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t KTLBspIceAtStringWrite(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  *(a2 + 3076) = *(a1 + 20);
  *(a2 + 3080) = 1;
  if (ARI_CsiIceAtExtReq_ENC())
  {
    return 0;
  }

  v5 = operator new(0x18uLL);
  v5[2] = 0;
  *(v5 + 2) = 0;
  *v5 = &unk_2A1E625B0;
  return KTLUTASendAndReleaseData(a1, v5);
}

BOOL KTLBspIceAtString()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v60 = *MEMORY[0x29EDCA608];
  v53 = 0;
  v7 = *(v0 + 16);
  v6 = *(v0 + 20);
  v3[769] = v6;
  v3[770] = 1;
  if (*(v0 + 8))
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    v48 = 0;
    memset(__b, 170, 0xC0CuLL);
    bzero(__src, 0xC0CuLL);
    v9 = dispatch_time(0, 1000000 * v6);
    LODWORD(v44) = v7;
    __dst = 0;
    if (ARI_CsiIceAtExtReq_ENC())
    {
      v10 = 0;
    }

    else
    {
      v17 = operator new(0x18uLL);
      v18 = __dst;
      v17[2] = 0;
      *(v17 + 2) = v18;
      *v17 = &unk_2A1E625B0;
      v10 = KTLUTASendAndReleaseData(v5, v17);
    }

    while (1)
    {
      if ((v10 & 1) == 0)
      {
LABEL_38:
        v15 = 0;
        goto LABEL_50;
      }

      if (KTLUTACopyReceiveData(v5, &v48))
      {
        v19 = v48;
        (*(*v48 + 16))(v48);
        v20 = v19[2];
        v21 = ARI_CsiIceAtExtRsp_Extract();
        (*(*v19 + 8))(v19);
        v10 = v21 == 0;
        if (!(v21 | v53))
        {
          v27 = LODWORD(__b[384]);
          if (LODWORD(__b[384]))
          {
            v28 = 0;
            do
            {
              if (!*(__b + v28))
              {
                _KTLDebugPrint("KTLBspIceAtString", "Embedded null found in AT response at buffer offset %u\n", v27, v22, v23, v24, v25, v26, v28);
                *(__b + v28) = 32;
                v27 = LODWORD(__b[384]);
              }

              ++v28;
            }

            while (v28 < v27);
          }

          else
          {
            v27 = 0;
          }

          fwrite(__b, 1uLL, v27, v2);
          fflush(v2);
          __dst = 0;
          p_dst = 0;
          v29 = LODWORD(__src[192]);
          if (LODWORD(__src[192]) <= 7)
          {
            memcpy(&__dst, __src, LODWORD(__src[192]));
          }

          else
          {
            __dst = *&v52[LODWORD(__src[192])];
            v29 = 8;
          }

          v30 = LODWORD(__b[384]);
          if (LODWORD(__b[384]) >= 8)
          {
            v31 = 8;
          }

          else
          {
            v31 = LODWORD(__b[384]);
          }

          memcpy(&__dst + v29, __b, v31);
          if (strnstr(__b, "\r\nOK\r\n", v30) || strnstr(__b, "\r\nERROR\r\n", LODWORD(__b[384])) || strnstr(&__dst, "\r\nOK\r\n", 0x10uLL) || strnstr(&__dst, "\r\nERROR\r\n", 0x10uLL))
          {
            v15 = 1;
            goto LABEL_50;
          }

          memcpy(__src, __b, 0xC0CuLL);
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      if (dispatch_time(0, 0) > v9)
      {
        goto LABEL_38;
      }
    }
  }

  __dst = 0;
  p_dst = &__dst;
  v58 = 0x2000000000;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -1;
  __b[0] = 0;
  __b[1] = __b;
  __b[2] = 0xC3802000000;
  __b[3] = __Block_byref_object_copy__40;
  __b[4] = __Block_byref_object_dispose__41;
  bzero(&__b[5], 0xC0CuLL);
  v11 = dispatch_semaphore_create(0);
  *&__src[4] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src[2] = v12;
  __src[3] = v12;
  __src[0] = v12;
  __src[1] = v12;
  AriSdk::ARI_CsiIceAtExtReq_SDK::ARI_CsiIceAtExtReq_SDK(__src);
  v13 = operator new(0xC0CuLL);
  memcpy(v13, v4, 0xC0CuLL);
  v14 = *&__src[4];
  *&__src[4] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  AriSdk::MsgBase::getRawBytes();
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (AriHost::StartStream())
  {
    v15 = 0;
    v53 = *(v49 + 6);
    v16 = v11;
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v32 = dispatch_time(0, 1000000 * *(v5 + 20));
  v39 = dispatch_semaphore_wait(v11, v32);
  if (v39)
  {
    _KTLErrorPrint("KTLBspIceAtString", "Timeout waiting for response.\n", v33, v34, v35, v36, v37, v38, v43);
  }

  v40 = *(p_dst + 6);
  if (v40)
  {
    AriHost::EndStream(v40);
  }

  v53 = *(v49 + 6);
  if (!v39)
  {
    v15 = *(v45 + 6) == 0;
    v16 = v11;
    if (!v11)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v15 = 0;
  v16 = v11;
  if (v11)
  {
LABEL_45:
    dispatch_release(v16);
  }

LABEL_46:
  MEMORY[0x29C279B90](__src);
  if (v11)
  {
    dispatch_release(v11);
  }

  _Block_object_dispose(__b, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&__dst, 8);
LABEL_50:
  if (v53)
  {
    result = 0;
  }

  else
  {
    result = v15;
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A43AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, NSObject *object, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a22);
  MEMORY[0x29C279B90](&a33);
  if (v33)
  {
    dispatch_release(v33);
  }

  _Block_object_dispose(&STACK[0xCD0], 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLBspIceAtString_block_invoke(uint64_t a1, AriMsg *a2, unsigned int a3)
{
  *&__b[771] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0xC0CuLL);
  v6 = *(*(a1 + 40) + 8);
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAtExtRsp_Extract();
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    goto LABEL_4;
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    result = 0;
LABEL_4:
    v8 = *MEMORY[0x29EDCA608];
    return result;
  }

  *(*(*(a1 + 48) + 8) + 24) = AriMsg::GetBufCtx(a2, a3);
  v14 = __b[768];
  if (__b[768])
  {
    v15 = 0;
    do
    {
      if (!*(__b + v15))
      {
        _KTLDebugPrint("KTLBspIceAtString_block_invoke", "Embedded null found in AT response at buffer offset %u\n", v14, v9, v10, v11, v12, v13, v15);
        *(__b + v15) = 32;
        v14 = __b[768];
      }

      ++v15;
    }

    while (v15 < v14);
  }

  else
  {
    v14 = 0;
  }

  fwrite(__b, 1uLL, v14, *(a1 + 64));
  fflush(*(a1 + 64));
  __dst[0] = 0;
  __dst[1] = 0;
  v16 = *(*(a1 + 56) + 8);
  v17 = (v16 + 40);
  v18 = *(v16 + 3112);
  if (v18 <= 7)
  {
    memcpy(__dst, v17, *(v16 + 3112));
  }

  else
  {
    __dst[0] = *&v17[v18 - 8];
    v18 = 8;
  }

  v19 = __b[768];
  if (__b[768] >= 8u)
  {
    v20 = 8;
  }

  else
  {
    v20 = __b[768];
  }

  memcpy(__dst + v18, __b, v20);
  if (strnstr(__b, "\r\nOK\r\n", v19))
  {
    goto LABEL_21;
  }

  if (!strnstr(__b, "\r\nERROR\r\n", __b[768]))
  {
    if (strnstr(__dst, "\r\nOK\r\n", 0x10uLL))
    {
      goto LABEL_21;
    }

    if (!strnstr(__dst, "\r\nERROR\r\n", 0x10uLL))
    {
      goto LABEL_22;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = -1;
LABEL_21:
  dispatch_semaphore_signal(*(a1 + 72));
LABEL_22:
  memcpy((*(*(a1 + 56) + 8) + 40), __b, 0xC0CuLL);
  result = *(*(*(a1 + 32) + 8) + 24);
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void __copy_helper_block_e8_32r40r48r56r72c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  v4 = *(a2 + 72);
  a1[9] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r72c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t KTLGetIMEIInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetIMEIInfo", "opt(%p) or respParam(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    v32 = 0;
    return v32 & 1;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[2] = v11;
  v57[3] = v11;
  v57[0] = v11;
  v57[1] = v11;
  AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(v57);
  v12 = operator new(4uLL);
  *v12 = a2;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v55 = 0;
  v56 = 0;
  AriSdk::MsgBase::getRawBytes();
  v20 = *(a1 + 8);
  if (v20 || !*(a1 + 16))
  {
    v21 = *v55;
    v22 = v55[1] - *v55;
    v23 = *(a1 + 20);
    LODWORD(v51) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v14, v15, v16, v17, v18, v19, v22);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v21);
    }

    if (*v20 && ((v30 = (*v20)(v20, v21, v22, &v51, 1, v23, 0), v51 == v22) ? (v31 = v30) : (v31 = 0), (v31 & 1) != 0))
    {
      v51 = 0;
      if (KTLUTACopyReceiveData(a1, &v51))
      {
        v32 = KTLGetIMEIInfoParseAndRelease(v51, a3);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v24, v25, v26, v27, v28, v29, v22);
      v32 = 0;
    }

    goto LABEL_29;
  }

  v33 = dispatch_semaphore_create(0);
  v34 = v33;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v35 = *(v55 + 2) - *v55;
  v36 = *(a1 + 16);
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v37 = *(a1 + 20);
  if (AriHost::Send())
  {
    v44 = "Failed to send the message of CsiMsCpsReadImeiReq.\n";
    goto LABEL_25;
  }

  v45 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v34, v45))
  {
    v44 = "Timeout waiting for response.\n";
LABEL_25:
    _KTLErrorPrint("KTLGetIMEIInfo", v44, v38, v39, v40, v41, v42, v43, v49);
    v32 = 0;
    v46 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v32 = *(v52 + 24);
  v46 = object;
  if (object)
  {
LABEL_26:
    dispatch_release(v46);
  }

LABEL_27:
  _Block_object_dispose(&v51, 8);
  if (v34)
  {
    dispatch_release(v34);
  }

LABEL_29:
  v47 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  MEMORY[0x29C279C70](v57);
  return v32 & 1;
}

void sub_297A441FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v25)
  {
    dispatch_release(v25);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C279C70](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C279C70](&a25);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetIMEIInfo_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetIMEIInfoParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetIMEIInfoParseAndRelease(unsigned int *a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v4;
  v24 = v4;
  v22[2] = v4;
  v22[3] = v4;
  v22[0] = v4;
  v22[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  v6 = a1[2];
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v22, v5);
  if (AriSdk::MsgBase::getMergedGMID(v22) == 67600384)
  {
    _KTLErrorPrint("KTLGetIMEIInfoParseAndRelease", "NACK Received\n", v7, v8, v9, v10, v11, v12, *&v22[0]);
  }

  v19 = AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::unpack(v22);
  if (v19)
  {
    _KTLErrorPrint("KTLGetIMEIInfoParseAndRelease", "Failed to unpack response.\n", v13, v14, v15, v16, v17, v18, *&v22[0]);
  }

  else
  {
    v20 = *(*(&v23 + 1) + 16);
    *a2 = **(&v23 + 1);
    *(a2 + 16) = v20;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279E70](v22);
  return v19 == 0;
}

BOOL KTLGetMEIDInfo(uint64_t a1, int a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v38 = v5;
  v39 = a2;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    v36[0] = 0;
    LODWORD(v32) = v5;
    v40 = 0;
    v41 = 0;
    if (!ARI_CsiMsCpsReadMeidReq_ENC() && (v7 = operator new(0x18uLL), v8 = v41, v7[2] = v40, *(v7 + 2) = v8, *v7 = &unk_2A1E625B0, KTLUTASendAndReleaseData(a1, v7)) && KTLUTACopyReceiveData(a1, v36))
    {
      v9 = v36[0];
      (*(*v36[0] + 16))(v36[0]);
      v10 = v9[2];
      v11 = ARI_CsiMsCpsReadMeidRspCb_Extract();
      (*(*v9 + 8))(v9);
      v12 = v11 == 0;
      v13 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v12 = 0;
      v20 = *MEMORY[0x29EDCA608];
    }

    return v12;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x4002000000;
  v44 = __Block_byref_object_copy__51;
  v45 = __Block_byref_object_dispose__52;
  memset(v46, 170, 24);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v37 = -1431655766;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -1;
  v14 = dispatch_semaphore_create(0);
  v15 = v14;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  if (!ARI_CsiMsCpsReadMeidReq_BLK())
  {
    v21 = dispatch_time(0, 1000000 * *(a1 + 20));
    v28 = dispatch_semaphore_wait(v15, v21);
    if (v28)
    {
      _KTLErrorPrint("KTLGetMEIDInfo", "Timeout waiting for response.\n", v22, v23, v24, v25, v26, v27, v30);
    }

    if (v38)
    {
      AriHost::ExitTrx(v38);
    }

    v29 = v42[7];
    *a3 = *(v42 + 5);
    *(a3 + 16) = v29;
    if (v28)
    {
      v12 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = *(v33 + 6) == 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v12 = 0;
  v16 = v42[7];
  *a3 = *(v42 + 5);
  *(a3 + 16) = v16;
  v17 = object;
  if (object)
  {
LABEL_14:
    dispatch_release(v17);
  }

LABEL_15:
  if (v15)
  {
    dispatch_release(v15);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v41, 8);
  v18 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_297A447EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__51(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t __KTLGetMEIDInfo_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiMsCpsReadMeidRspCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

unint64_t KTLBmmProvideBootTimeInfo(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  if (a2)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53[2] = v4;
    v53[3] = v4;
    v53[0] = v4;
    v53[1] = v4;
    AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::ARI_CsiBmmProvideBootTimeInfoReq_SDK(v53);
    v51 = 0;
    v52 = 0;
    AriSdk::MsgBase::getRawBytes();
    v11 = *(a1 + 8);
    if (v11 || !*(a1 + 16))
    {
      v12 = *v51;
      v13 = v51[1] - *v51;
      v14 = *(a1 + 20);
      LODWORD(v47) = 0;
      _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, v13);
      if ((_KTLDebugFlags & 2) != 0)
      {
        off_2A18991C8("Tx:", 0, v12);
      }

      if (!*v11 || ((v21 = (*v11)(v11, v12, v13, &v47, 1, v14, 0), v47 == v13) ? (v22 = v21) : (v22 = 0), (v22 & 1) == 0))
      {
        _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v15, v16, v17, v18, v19, v20, v13);
        goto LABEL_14;
      }

      v47 = 0;
      if (!KTLUTACopyReceiveData(a1, &v47) || !KTLBmmProvideBootTimeInfoParseAndRelease(v47, v2))
      {
LABEL_14:
        v2 = 0;
        v23 = v52;
        if (!v52)
        {
LABEL_17:
          MEMORY[0x29C27A250](v53);
          return v2;
        }

LABEL_15:
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        goto LABEL_17;
      }

LABEL_28:
      if (!*(v2 + 3600))
      {
        v2 = *(v2 + 3604) == 0;
        v23 = v52;
        if (!v52)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v25 = dispatch_semaphore_create(0);
    v26 = v25;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    v27 = *(v51 + 2) - *v51;
    v28 = *(a1 + 16);
    object = v25;
    if (v25)
    {
      dispatch_retain(v25);
    }

    v29 = *(a1 + 20);
    if (AriHost::Send())
    {
      _KTLErrorPrint("KTLBmmProvideBootTimeInfo", "Failed to send the message of CsiBmmProvideBootTimeInfoReq.\n", v30, v31, v32, v33, v34, v35, v45);
      v36 = 0;
      v37 = object;
      if (!object)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v38 = dispatch_time(0, 1000000 * *(a1 + 20));
    if (dispatch_semaphore_wait(v26, v38))
    {
      _KTLErrorPrint("KTLBmmProvideBootTimeInfo", "Timeout waiting for response.\n", v39, v40, v41, v42, v43, v44, v45);
      v36 = 0;
      v37 = object;
      if (!object)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v36 = *(v48 + 24);
      v37 = object;
      if (!object)
      {
LABEL_25:
        _Block_object_dispose(&v47, 8);
        if (v26)
        {
          dispatch_release(v26);
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_28;
      }
    }

LABEL_24:
    dispatch_release(v37);
    goto LABEL_25;
  }

  return v2;
}

void sub_297A44BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A250](&a25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v25);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A250](&a25);
  _Unwind_Resume(a1);
}

void sub_297A44C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A250](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLBmmProvideBootTimeInfo_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLBmmProvideBootTimeInfoParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLBmmProvideBootTimeInfoParseAndRelease(unsigned int *a1, void *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__src = v4;
  v23 = v4;
  v21[2] = v4;
  v21[3] = v4;
  v21[0] = v4;
  v21[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  v6 = a1[2];
  AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(v21, v5);
  if (AriSdk::MsgBase::getMergedGMID(v21) == 67600384)
  {
    _KTLErrorPrint("KTLBmmProvideBootTimeInfoParseAndRelease", "NACK Received\n", v7, v8, v9, v10, v11, v12, *&v21[0]);
  }

  v19 = AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::unpack(v21);
  if (v19)
  {
    _KTLErrorPrint("KTLBmmProvideBootTimeInfoParseAndRelease", "Failed to unpack response.\n", v13, v14, v15, v16, v17, v18, *&v21[0]);
  }

  else
  {
    memcpy(a2, __src[0], 0xE1CuLL);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A310](v21);
  return v19 == 0;
}

uint64_t KTLTriggerDelayedResponse(uint64_t a1, int a2)
{
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v4;
  v48[3] = v4;
  v48[0] = v4;
  v48[1] = v4;
  AriSdk::ARI_CsiDelayedOutstandingReq_SDK::ARI_CsiDelayedOutstandingReq_SDK(v48);
  v5 = operator new(4uLL);
  *v5 = a2;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v46 = 0;
  v47 = 0;
  AriSdk::MsgBase::getRawBytes();
  v13 = *(a1 + 8);
  if (v13 || !*(a1 + 16))
  {
    v14 = *v46;
    v15 = v46[1] - *v46;
    v16 = *(a1 + 20);
    LODWORD(v42) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v7, v8, v9, v10, v11, v12, v15);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v14);
    }

    if (*v13 && ((v23 = (*v13)(v13, v14, v15, &v42, 1, v16, 0), v42 == v15) ? (v24 = v23) : (v24 = 0), (v24 & 1) != 0))
    {
      v42 = 0;
      if (KTLUTACopyReceiveData(a1, &v42))
      {
        v25 = KTLTriggerDelayedResponseParseAndRelease(v42);
        v26 = v47;
        if (!v47)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v25 = 0;
        v26 = v47;
        if (!v47)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v17, v18, v19, v20, v21, v22, v15);
      v25 = 0;
      v26 = v47;
      if (!v47)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v27 = dispatch_semaphore_create(0);
  v28 = v27;
  v29 = *(a1 + 16);
  *(a1 + 20);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v30 = *(v46 + 2) - *v46;
  object = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  AriHost::Send();
  v31 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v28, v31))
  {
    _KTLErrorPrint("KTLTriggerDelayedResponse", "Timeout waiting for response.\n", v32, v33, v34, v35, v36, v37, v40);
    v25 = 0;
    v38 = object;
    if (!object)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v25 = *(v43 + 24);
  v38 = object;
  if (object)
  {
LABEL_21:
    dispatch_release(v38);
  }

LABEL_22:
  _Block_object_dispose(&v42, 8);
  if (v28)
  {
    dispatch_release(v28);
  }

  v26 = v47;
  if (v47)
  {
LABEL_25:
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }

LABEL_27:
  MEMORY[0x29C27A090](v48);
  return v25 & 1;
}

void sub_297A45158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v25)
  {
    dispatch_release(v25);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C27A090](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A090](&a25);
  _Unwind_Resume(a1);
}

uint64_t __KTLTriggerDelayedResponse_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLTriggerDelayedResponseParseAndRelease(v6);
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

uint64_t KTLTriggerDelayedResponseParseAndRelease(unsigned int *a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v2;
  v14[3] = v2;
  v14[0] = v2;
  v14[1] = v2;
  v3 = (*(*a1 + 16))(a1);
  v4 = a1[2];
  AriSdk::ARI_CsiDelayedOutstandingResp_SDK::ARI_CsiDelayedOutstandingResp_SDK(v14, v3);
  if (AriSdk::MsgBase::getMergedGMID(v14) == 67600384)
  {
    v11 = "NACK Received\n";
  }

  else
  {
    if (!AriSdk::ARI_CsiDelayedOutstandingResp_SDK::unpack(v14))
    {
      _KTLDebugPrint("KTLTriggerDelayedResponseParseAndRelease", "Delayed response received\n", v5, v6, v7, v8, v9, v10, *&v14[0]);
      v12 = 1;
      goto LABEL_6;
    }

    v11 = "Malformed response\n";
  }

  _KTLErrorPrint("KTLTriggerDelayedResponseParseAndRelease", v11, v5, v6, v7, v8, v9, v10, *&v14[0]);
  v12 = 0;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A100](v14);
  return v12;
}

uint64_t KTLIsBBSimStackMappingEnabled(uint64_t a1, BOOL *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2 & 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v5;
  v48[3] = v5;
  v48[0] = v5;
  v48[1] = v5;
  AriSdk::ARI_CsiMSimGetSimStackMappingStatusReq_SDK::ARI_CsiMSimGetSimStackMappingStatusReq_SDK(v48);
  v46 = 0;
  v47 = 0;
  AriSdk::MsgBase::getRawBytes();
  v12 = *(a1 + 8);
  if (v12 || !*(a1 + 16))
  {
    v13 = *v46;
    v14 = v46[1] - *v46;
    v15 = *(a1 + 20);
    LODWORD(v42) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v6, v7, v8, v9, v10, v11, v14);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v42, 1, v15, 0), v42 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v42 = 0;
      if (KTLUTACopyReceiveData(a1, &v42))
      {
        v2 = KTLIsBBSimStackMappingEnabledParseAndRelease(v42, a2);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
      v2 = 0;
    }

    goto LABEL_26;
  }

  v24 = dispatch_semaphore_create(0);
  v25 = v24;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v26 = *(v46 + 2) - *v46;
  v27 = *(a1 + 16);
  object = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v28 = *(a1 + 20);
  if (AriHost::Send())
  {
    v35 = "Failed to send message CsiMSimGetSimStackMappingStatusReq.\n";
    goto LABEL_22;
  }

  v36 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v25, v36))
  {
    v35 = "Timeout waiting for response.\n";
LABEL_22:
    _KTLErrorPrint("KTLIsBBSimStackMappingEnabled", v35, v29, v30, v31, v32, v33, v34, v40);
    v2 = 0;
    v37 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v2 = *(v43 + 24);
  v37 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v37);
  }

LABEL_24:
  _Block_object_dispose(&v42, 8);
  if (v25)
  {
    dispatch_release(v25);
  }

LABEL_26:
  v38 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  MEMORY[0x29C27A3A0](v48);
  return v2 & 1;
}

void sub_297A4568C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A3A0](&a25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v25);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A3A0](&a25);
  _Unwind_Resume(a1);
}

void sub_297A456F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A3A0](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLIsBBSimStackMappingEnabled_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLIsBBSimStackMappingEnabledParseAndRelease(v6, *(a1 + 40));
  dispatch_semaphore_signal(*(a1 + 48));
  return 0;
}

uint64_t KTLIsBBSimStackMappingEnabledParseAndRelease(ktl::KTLPacket *a1, BOOL *a2)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v4;
  v21[3] = v4;
  v21[0] = v4;
  v21[1] = v4;
  v5 = (*(*a1 + 16))(a1);
  v6 = *(a1 + 2);
  AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK(v21, v5);
  if (AriSdk::MsgBase::getMergedGMID(v21) == 67600384)
  {
    _KTLDebugPrint("KTLIsBBSimStackMappingEnabledParseAndRelease", "Not supported\n", v7, v8, v9, v10, v11, v12, *&v21[0]);
  }

  else
  {
    if (!AriSdk::ARI_CsiMSimGetSimStackMappingStatusRspCb_SDK::unpack(v21))
    {
      *a2 = *v22 != 0;
      v19 = 1;
      goto LABEL_6;
    }

    _KTLErrorPrint("KTLIsBBSimStackMappingEnabledParseAndRelease", "Failed to unpack response.\n", v13, v14, v15, v16, v17, v18, *&v21[0]);
  }

  v19 = 0;
LABEL_6:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A3F0](v21);
  return v19;
}

uint64_t KTLGetSimStackMapping(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v55 = -1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[2] = v5;
  v54[3] = v5;
  v54[0] = v5;
  v54[1] = v5;
  AriSdk::ARI_IBIMSimGetSimStackMappingReq_SDK::ARI_IBIMSimGetSimStackMappingReq_SDK(v54);
  v52 = 0;
  v53 = 0;
  AriSdk::MsgBase::getRawBytes();
  v12 = *(a1 + 8);
  if (!v12 && *(a1 + 16))
  {
    v28 = dispatch_semaphore_create(0);
    v29 = v28;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = -1;
    v30 = *(v52 + 2) - *v52;
    v31 = *(a1 + 16);
    object = v28;
    if (v28)
    {
      dispatch_retain(v28);
    }

    v32 = *(a1 + 20);
    if (AriHost::Send())
    {
      v39 = "Failed to send message IBIMSimGetSimStackMappingReq.\n";
    }

    else
    {
      v40 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v29, v40))
      {
        v25 = *(v45 + 6);
        v55 = v25;
        v24 = *(v49 + 24);
        v41 = object;
        if (!object)
        {
LABEL_29:
          _Block_object_dispose(&v44, 8);
          _Block_object_dispose(&v48, 8);
          if (v29)
          {
            dispatch_release(v29);
          }

          goto LABEL_15;
        }

LABEL_28:
        dispatch_release(v41);
        goto LABEL_29;
      }

      v39 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLGetSimStackMapping", v39, v33, v34, v35, v36, v37, v38, v42);
    v24 = 0;
    v25 = -1;
    v41 = object;
    if (!object)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v13 = *v52;
  v14 = v52[1] - *v52;
  v15 = *(a1 + 20);
  LODWORD(v48) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v6, v7, v8, v9, v10, v11, v14);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v13);
  }

  if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v48, 1, v15, 0), v48 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
  {
    v48 = 0;
    if (KTLUTACopyReceiveData(a1, &v48))
    {
      v24 = KTLGetSimStackMappingParseAndRelease(v48, &v55, a2);
      v25 = v55;
      goto LABEL_15;
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
  }

  v24 = 0;
  v25 = -1;
LABEL_15:
  v2 = v24 & (v25 == 0);
  v26 = v53;
  if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  MEMORY[0x29C27A290](v54);
  return v2;
}

void sub_297A45C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  if (v27)
  {
    dispatch_release(v27);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
    MEMORY[0x29C27A290](v28 - 144);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x29C27A290](v28 - 144);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimStackMapping_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetSimStackMappingParseAndRelease(v6, (*(*(a1 + 40) + 8) + 24), *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetSimStackMappingParseAndRelease(unsigned int *a1, _DWORD *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[3] = v6;
  v26 = v6;
  v25[1] = v6;
  v25[2] = v6;
  v25[0] = v6;
  v7 = (*(*a1 + 16))(a1);
  v8 = a1[2];
  AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::ARI_IBIMSimGetSimStackMappingRspCb_SDK(v25, v7);
  if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    _KTLErrorPrint("KTLGetSimStackMappingParseAndRelease", "NACK Received\n", v9, v10, v11, v12, v13, v14, *&v25[0]);
  }

  v21 = AriSdk::ARI_IBIMSimGetSimStackMappingRspCb_SDK::unpack(v25);
  if (v21)
  {
    _KTLErrorPrint("KTLGetSimStackMappingParseAndRelease", "Failed to unpack response.\n", v15, v16, v17, v18, v19, v20, *&v25[0]);
  }

  else
  {
    v22 = *(&v26 + 1);
    *a2 = *v26;
    v23 = *(v22 + 16);
    *a3 = *v22;
    *(a3 + 16) = v23;
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A340](v25);
  return v21 == 0;
}

void __copy_helper_block_e8_32r40r56c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  v4 = *(a2 + 56);
  a1[7] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t KTLGetSimTrayStatus(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3)
  {
    _KTLErrorPrint("KTLGetSimTrayStatus", "opt(%p) or respParam(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    v32 = 0;
    return v32 & 1;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[2] = v11;
  v57[3] = v11;
  v57[0] = v11;
  v57[1] = v11;
  AriSdk::ARI_IBISimTrayStatusReq_SDK::ARI_IBISimTrayStatusReq_SDK(v57);
  v12 = operator new(4uLL);
  *v12 = a2;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v55 = 0;
  v56 = 0;
  AriSdk::MsgBase::getRawBytes();
  v20 = *(a1 + 8);
  if (v20 || !*(a1 + 16))
  {
    v21 = *v55;
    v22 = v55[1] - *v55;
    v23 = *(a1 + 20);
    LODWORD(v51) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v14, v15, v16, v17, v18, v19, v22);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v21);
    }

    if (*v20 && ((v30 = (*v20)(v20, v21, v22, &v51, 1, v23, 0), v51 == v22) ? (v31 = v30) : (v31 = 0), (v31 & 1) != 0))
    {
      v51 = 0;
      if (KTLUTACopyReceiveData(a1, &v51))
      {
        v32 = KTLGetSimTrayStatusParseAndRelease(v51, a3);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v24, v25, v26, v27, v28, v29, v22);
      v32 = 0;
    }

    goto LABEL_29;
  }

  v33 = dispatch_semaphore_create(0);
  v34 = v33;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v35 = *(v55 + 2) - *v55;
  v36 = *(a1 + 16);
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v37 = *(a1 + 20);
  if (AriHost::Send())
  {
    v44 = "Failed to send the message of IBISimTrayStatusReq.\n";
    goto LABEL_25;
  }

  v45 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v34, v45))
  {
    v44 = "Timeout waiting for response.\n";
LABEL_25:
    _KTLErrorPrint("KTLGetSimTrayStatus", v44, v38, v39, v40, v41, v42, v43, v49);
    v32 = 0;
    v46 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v32 = *(v52 + 24);
  v46 = object;
  if (object)
  {
LABEL_26:
    dispatch_release(v46);
  }

LABEL_27:
  _Block_object_dispose(&v51, 8);
  if (v34)
  {
    dispatch_release(v34);
  }

LABEL_29:
  v47 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  MEMORY[0x29C279D00](v57);
  return v32 & 1;
}

void sub_297A46290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Block_object_dispose(&a19, 8);
  if (v25)
  {
    dispatch_release(v25);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
    MEMORY[0x29C279D00](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C279D00](&a25);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetSimTrayStatus_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetSimTrayStatusParseAndRelease(v6, *(a1 + 48));
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

BOOL KTLGetSimTrayStatusParseAndRelease(unsigned int *a1, _DWORD *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[3] = v4;
  v22 = v4;
  v21[1] = v4;
  v21[2] = v4;
  v21[0] = v4;
  v5 = (*(*a1 + 16))(a1);
  v6 = a1[2];
  AriSdk::ARI_IBISimTrayStatusRspCb_SDK::ARI_IBISimTrayStatusRspCb_SDK(v21, v5);
  if (AriSdk::MsgBase::getMergedGMID(v21) == 67600384)
  {
    _KTLErrorPrint("KTLGetSimTrayStatusParseAndRelease", "NACK Received\n", v7, v8, v9, v10, v11, v12, *&v21[0]);
  }

  v19 = AriSdk::ARI_IBISimTrayStatusRspCb_SDK::unpack(v21);
  if (v19)
  {
    _KTLErrorPrint("KTLGetSimTrayStatusParseAndRelease", "Failed to unpack response.\n", v13, v14, v15, v16, v17, v18, *&v21[0]);
  }

  else
  {
    *a2 = **(&v22 + 1);
  }

  (*(*a1 + 8))(a1);
  MEMORY[0x29C279EE0](v21);
  return v19 == 0;
}

uint64_t KTLGetCurrentBootState(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _KTLErrorPrint("KTLGetCurrentBootState", "opt(%p) or bootState(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    v35 = 0;
    return v35 & 1;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62[2] = v10;
  v62[3] = v10;
  v62[0] = v10;
  v62[1] = v10;
  AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(v62);
  v60 = 0;
  v61 = 0;
  AriSdk::MsgBase::getRawBytes();
  v17 = *(a1 + 8);
  if (!v17 && *(a1 + 16))
  {
    v37 = dispatch_semaphore_create(0);
    v38 = v37;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2000000000;
    v59 = 0;
    v39 = *(v60 + 2) - *v60;
    v40 = *(a1 + 16);
    object = v37;
    if (v37)
    {
      dispatch_retain(v37);
    }

    v41 = *(a1 + 20);
    if (AriHost::Send())
    {
      v48 = "Failed to send command\n";
    }

    else
    {
      v49 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v38, v49))
      {
        v35 = *(v57 + 24);
        v50 = object;
        if (!object)
        {
LABEL_26:
          _Block_object_dispose(&v56, 8);
          if (v38)
          {
            dispatch_release(v38);
          }

          goto LABEL_30;
        }

LABEL_25:
        dispatch_release(v50);
        goto LABEL_26;
      }

      v48 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLGetCurrentBootState", v48, v42, v43, v44, v45, v46, v47, v53);
    v35 = 0;
    v50 = object;
    if (!object)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v18 = *v60;
  v19 = v60[1] - *v60;
  v20 = *(a1 + 20);
  LODWORD(v56) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v11, v12, v13, v14, v15, v16, v19);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v18);
  }

  if (*v17 && ((v27 = (*v17)(v17, v18, v19, &v56, 1, v20, 0), v56 == v19) ? (v28 = v27) : (v28 = 0), (v28 & 1) != 0))
  {
    v56 = 0;
    if (KTLUTACopyReceiveData(a1, &v56))
    {
      if (KTLGetCurrentBootStateParseAndRelease(v56, a1, a2, v30, v31, v32, v33, v34))
      {
        v35 = 1;
        goto LABEL_30;
      }

      v36 = "Failed to parse response.\n";
    }

    else
    {
      v36 = "Failed to copy received data.\n";
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v21, v22, v23, v24, v25, v26, v19);
    v36 = "Failed to send raw data.\n";
  }

  _KTLErrorPrint("KTLGetCurrentBootState", v36, v29, v30, v31, v32, v33, v34, v54);
  v35 = 0;
LABEL_30:
  v51 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  MEMORY[0x29C27A120](v62);
  return v35 & 1;
}

void sub_297A46828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
      MEMORY[0x29C27A120](&a25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a19, 8);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v25);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a23);
  MEMORY[0x29C27A120](&a25);
  _Unwind_Resume(a1);
}

void sub_297A46890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A120](va1);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetCurrentBootState_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetCurrentBootStateParseAndRelease(v6, *(a1 + 40), *(a1 + 48), v8, v9, v10, v11, v12);
  dispatch_semaphore_signal(*(a1 + 56));
  return 0;
}

uint64_t KTLGetCurrentBootStateParseAndRelease(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    _KTLErrorPrint("KTLGetCurrentBootStateParseAndRelease", "pkt(%p) or opt(%p) or bootState(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[2] = v10;
  v23[3] = v10;
  v23[0] = v10;
  v23[1] = v10;
  v11 = (*(*a1 + 16))(a1);
  v12 = a1[2];
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v23, v11);
  if (AriSdk::MsgBase::getMergedGMID(v23) == 67600384)
  {
    v19 = "NACK Received\n";
  }

  else
  {
    if (!AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v23))
    {
      *a3 = *v24;
      v21 = 1;
      goto LABEL_10;
    }

    v19 = "Malformed response\n";
  }

  _KTLErrorPrint("KTLGetCurrentBootStateParseAndRelease", v19, v13, v14, v15, v16, v17, v18, v22);
  v21 = 0;
LABEL_10:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A1F0](v23);
  return v21;
}

uint64_t KTLGetFactGetTestReadyState(uint64_t a1, BOOL *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    _KTLErrorPrint("KTLGetFactGetTestReadyState", "opt(%p) or allReady(%p) or moduleStatus(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    v36 = 0;
    return v36 & 1;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v63[2] = v11;
  v63[3] = v11;
  v63[1] = v11;
  v63[0] = v11;
  AriSdk::ARI_CsiFactGetTestReadyStateReq_SDK::ARI_CsiFactGetTestReadyStateReq_SDK(v63);
  v61 = 0;
  v62 = 0;
  AriSdk::MsgBase::getRawBytes();
  v18 = *(a1 + 8);
  if (!v18 && *(a1 + 16))
  {
    v38 = dispatch_semaphore_create(0);
    v39 = v38;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = 0;
    v40 = *(v61 + 2) - *v61;
    v41 = *(a1 + 16);
    object = v38;
    if (v38)
    {
      dispatch_retain(v38);
    }

    v42 = *(a1 + 20);
    if (AriHost::Send())
    {
      v49 = "Failed to send command\n";
    }

    else
    {
      v50 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v39, v50))
      {
        v36 = *(v58 + 24);
        v51 = object;
        if (!object)
        {
LABEL_27:
          _Block_object_dispose(&v57, 8);
          if (v39)
          {
            dispatch_release(v39);
          }

          goto LABEL_31;
        }

LABEL_26:
        dispatch_release(v51);
        goto LABEL_27;
      }

      v49 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLGetFactGetTestReadyState", v49, v43, v44, v45, v46, v47, v48, v54);
    v36 = 0;
    v51 = object;
    if (!object)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v19 = *v61;
  v20 = v61[1] - *v61;
  v21 = *(a1 + 20);
  LODWORD(v57) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v12, v13, v14, v15, v16, v17, v20);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v19);
  }

  if (*v18 && ((v28 = (*v18)(v18, v19, v20, &v57, 1, v21, 0), v57 == v20) ? (v29 = v28) : (v29 = 0), (v29 & 1) != 0))
  {
    v57 = 0;
    if (KTLUTACopyReceiveData(a1, &v57))
    {
      if (KTLGetFactGetTestReadyStateParseAndRelease(v57, a1, a2, a3, v32, v33, v34, v35))
      {
        v36 = 1;
        goto LABEL_31;
      }

      v37 = "Failed to parse response.\n";
    }

    else
    {
      v37 = "Failed to copy received data.\n";
    }
  }

  else
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v22, v23, v24, v25, v26, v27, v20);
    v37 = "Failed to send raw data.\n";
  }

  _KTLErrorPrint("KTLGetFactGetTestReadyState", v37, v30, v31, v32, v33, v34, v35, v55);
  v36 = 0;
LABEL_31:
  v52 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  MEMORY[0x29C27A1C0](v63);
  return v36 & 1;
}

void sub_297A46E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (object)
  {
    dispatch_release(object);
    _Block_object_dispose(&a21, 8);
    if (!v25)
    {
LABEL_3:
      std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a25);
      MEMORY[0x29C27A1C0](v26 - 128);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    _Block_object_dispose(&a21, 8);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v25);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a25);
  MEMORY[0x29C27A1C0](v26 - 128);
  _Unwind_Resume(a1);
}

void sub_297A46E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x29C27A1C0](v17 - 128);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetFactGetTestReadyState_block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = operator new(0x30uLL);
  v7 = operator new[](a3);
  v6[2] = a3;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E62D20;
  v6[6] = a3;
  *(v6 + 4) = v7;
  *(v6 + 5) = 0;
  memcpy(v7, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = KTLGetFactGetTestReadyStateParseAndRelease(v6, *(a1 + 40), *(a1 + 48), *(a1 + 56), v8, v9, v10, v11);
  dispatch_semaphore_signal(*(a1 + 64));
  return 0;
}

uint64_t KTLGetFactGetTestReadyStateParseAndRelease(unsigned int *a1, uint64_t a2, BOOL *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    _KTLErrorPrint("KTLGetFactGetTestReadyStateParseAndRelease", "pkt(%p) or opt(%p) or allReady(%p) or moduleStatus(%p) is NULL\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[3] = v11;
  v26 = v11;
  v25[1] = v11;
  v25[2] = v11;
  v25[0] = v11;
  v12 = (*(*a1 + 16))(a1);
  v13 = a1[2];
  AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::ARI_CsiFactGetTestReadyStateRspCb_SDK(v25, v12);
  if (AriSdk::MsgBase::getMergedGMID(v25) == 67600384)
  {
    v20 = "NACK Received\n";
  }

  else
  {
    if (!AriSdk::ARI_CsiFactGetTestReadyStateRspCb_SDK::unpack(v25))
    {
      v23 = *(&v26 + 1);
      *a3 = *v26 != 0;
      *a4 = *v23;
      v22 = 1;
      goto LABEL_11;
    }

    v20 = "Malformed response\n";
  }

  _KTLErrorPrint("KTLGetFactGetTestReadyStateParseAndRelease", v20, v14, v15, v16, v17, v18, v19, v24);
  v22 = 0;
LABEL_11:
  (*(*a1 + 8))(a1);
  MEMORY[0x29C27A2C0](v25);
  return v22;
}

void __copy_helper_block_e8_32r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 64);
  *(a1 + 64) = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

double Bsp::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t Bsp::ARICommandDriver::GetCurrentBootState(Bsp::ARICommandDriver *this, AriSdk::ARI_CsiGetCurrentBootStateReq_SDK *a2, AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(this + 2);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(this + 2), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x48uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__94;
  v76 = __Block_byref_object_dispose__95;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(this + 2) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(this + 2) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 84312064);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetCurrentBootState", "Failed CsiGetCurrentBootStateRspCb\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}