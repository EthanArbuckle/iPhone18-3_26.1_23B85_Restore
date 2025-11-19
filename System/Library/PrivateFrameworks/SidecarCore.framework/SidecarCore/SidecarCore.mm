void SidecarTransferLocked(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  os_unfair_lock_lock(a1 + 4);
  v3[2](v3);

  os_unfair_lock_unlock(a1 + 4);
}

void sub_26604D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SidecarTransferReceiverHandleMessage(void *a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = atomic_load(v3 + 10);
  if (v6 >= 1)
  {
    SidecarTransferMessageEnqueue(v3, v4);
    v7 = 0;
    goto LABEL_27;
  }

  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0x3032000000;
  v47[2] = __Block_byref_object_copy_;
  v47[3] = __Block_byref_object_dispose_;
  v48 = 0;
  v43 = 0;
  v44[0] = &v43;
  v44[1] = 0x3032000000;
  v44[2] = __Block_byref_object_copy_;
  v44[3] = __Block_byref_object_dispose_;
  v45 = 0;
  TransferID = SidecarMessageGetTransferID(v4);
  v40 = v3;
  v38 = v5;
  v9 = v5;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:TransferID];
  v39 = [v40[7] objectForKey:v10];
  if (!v39)
  {
    if (!v40[7])
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = v40[7];
      v40[7] = v11;

      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = v40[8];
      v40[8] = v13;
    }

    v39 = [[SidecarTransferGroup alloc] initWithMessage:v9];
    [v40[8] addObject:v10];
    [v40[7] setObject:v39 forKey:v10];
  }

  v15 = (v47[0] + 40);
  obj = *(v47[0] + 40);
  v16 = [(SidecarTransferGroup *)v39 handleMessage:v9 error:&obj];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    if ([(SidecarTransferGroup *)v39 isComplete])
    {
      v17 = v40;
      v18 = [v17[8] copy];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v18;
      v20 = 0;
      v21 = [v19 countByEnumeratingWithState:&v49 objects:buf count:16];
      if (v21)
      {
        v22 = *v50;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v49 + 1) + 8 * i);
            v25 = [v17[7] objectForKey:v24];
            if (![v25 isComplete])
            {

              goto LABEL_24;
            }

            if (!v20)
            {
              v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v19, "count")}];
            }

            [v20 addObject:v25];
            [v17[8] removeObject:v24];
            [v17[7] removeObjectForKey:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v49 objects:buf count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v27 = v44;
      goto LABEL_25;
    }
  }

  else if (!*(v47[0] + 40))
  {
    v26 = v9;
    v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-1010 userInfo:0];
    if (v20)
    {
      v32 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v33 = v32;
      if (v32)
      {
        v34 = v32;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [v20 domain];
          v36 = [v20 code];
          v37 = [v20 localizedDescription];
          *buf = 138543875;
          v54 = v35;
          v55 = 2048;
          v56 = v36;
          v57 = 2113;
          v58 = v37;
          _os_log_impl(&dword_26604C000, v34, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);
        }
      }
    }

    v27 = v47;
LABEL_25:
    v28 = *v27;
    v29 = *(v28 + 40);
    *(v28 + 40) = v20;
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __SidecarTransferReceiverHandleMessage_block_invoke;
  v41[3] = &unk_279BC2FD0;
  v41[4] = v40;
  v41[5] = &v43;
  v41[6] = &v46;
  v7 = MEMORY[0x266777D20](v41);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v46, 8);

  v5 = v38;
LABEL_27:

  v30 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_26604E258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void SidecarTransferMessageEnqueue(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  AssociatedObject = objc_getAssociatedObject(object, SidecarTransferMessageEnqueue);
  if (!AssociatedObject)
  {
    AssociatedObject = _SidecarAssociatedQueueAlloc(object, SidecarTransferMessageEnqueue);
  }

  v5 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
  *v5 = v3;
  v5[1] = 0;
  v6 = v5 + 1;
  *AssociatedObject[1] = v5;

  AssociatedObject[1] = v6;
}

void __SidecarTransferReceiverHandleMessage_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 type];
        v6 |= v10 == 4;
        v11 = *(a1 + 32);
        v12 = [v9 items];
        [v2 sidecarTransfer:v11 receivedItems:v12 messageType:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);

    if (v6)
    {
      v13 = *(*(*(a1 + 48) + 8) + 40);
LABEL_12:
      [v2 sidecarTransfer:*(a1 + 32) didComplete:{v13, v15}];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = *(*(*(a1 + 48) + 8) + 40);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

void sub_26604E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x266777D20](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t SidecarTransferSenderSliceData(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SidecarTransferSenderSliceData_block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = v1;
  v4[5] = &v5;
  SidecarTransferLocked(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_26604E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SidecarTransferSenderSetMessageData(void *a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SidecarTransferSenderSetMessageData_block_invoke;
  v5[3] = &unk_279BC3718;
  v5[4] = a1;
  v5[5] = a2;
  v3 = a2;
  v4 = a1;
  SidecarTransferLocked(v4, v5);
}

void SidecarTransferSendMessage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  SidecarMessageSetRequestID(v3, [(os_unfair_lock_s *)v4 requestID]);
  SidecarMessageSetTransferID(v3, [(os_unfair_lock_s *)v4 transferID]);
  SidecarMessageSetType(v3, [(os_unfair_lock_s *)v4 type]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SidecarTransferSendMessage_block_invoke;
  v5[3] = &unk_279BC3718;
  v5[4] = v4;
  v5[5] = v3;
  SidecarTransferLocked(v4, v5);
}

void __SidecarTransferSendMessage_block_invoke(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 < 1)
  {
    __SidecarTransferSendMessage(v3, v4);
  }

  else
  {
    SidecarTransferMessageEnqueue(v3, v4);
  }
}

void __SidecarTransferSendMessage(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ____SidecarTransferSendMessage_block_invoke;
  v6[3] = &unk_279BC32F0;
  v6[4] = v4;
  [v5 sendMessage:v3 completion:v6];
}

void __SidecarTransferSenderSetMessageData_block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 72);
  v2 = [v3 firstObject];
  if (v2)
  {
    SidecarMessageSetItemData(*(a1 + 40), *(*(a1 + 32) + 56), v2);
    [v3 removeObjectAtIndex:0];
  }
}

void __SidecarTransferSenderSliceData_block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 72) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 56) + 1;
    *(v2 + 56) = v3;
    if (v3 >= [*(*(a1 + 32) + 64) count])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      v14 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:v3];
      v4 = [v14 data];
      v5 = [v4 bytes];
      v6 = [v4 length];
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v6 >> 20) + 1];
      v8 = 0;
      v9 = v6;
      do
      {
        if (!v6 || v9)
        {
          if (v9 >= 0x100000)
          {
            v10 = 0x100000;
          }

          else
          {
            v10 = v9;
          }

          v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 + v8 length:v10 freeWhenDone:0];
          [v7 addObject:v11];
        }

        v8 += 0x100000;
        v9 -= 0x100000;
      }

      while (v8 <= v6);
      v12 = *(a1 + 32);
      v13 = *(v12 + 72);
      *(v12 + 72) = v7;
    }
  }
}

void __SidecarTransferDequeueMessages_block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 40));
  if (v1 <= 0)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 32);
      AssociatedObject = objc_getAssociatedObject(v4, SidecarTransferMessageEnqueue);
      if (AssociatedObject)
      {
        v6 = AssociatedObject;
        v7 = *AssociatedObject;
        if (!v7)
        {
          __break(1u);
          return;
        }

        v9 = *v7;
        v8 = v7[1];
        *v6 = v8;
        if (!v8)
        {
          v6[1] = v6;
        }

        free(v7);
        if (!*v6)
        {
          _SidecarAssociatedQueueDealloc(v4, SidecarTransferMessageEnqueue, v6);
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = [*(a1 + 32) _resumeMessage:v9];
        if (v10)
        {
          if (*(*(*(a1 + 40) + 8) + 40))
          {
            v11 = *(*(*(a1 + 40) + 8) + 40);
          }

          else
          {
            v11 = &__block_literal_global_82;
          }

          v12 = MEMORY[0x266777D20](v11);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __SidecarTransferDequeueMessages_block_invoke_3;
          v17[3] = &unk_279BC2FA8;
          v17[4] = v12;
          v17[5] = v10;
          v13 = MEMORY[0x266777D20](v17);
          v14 = *(*(a1 + 40) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
        }

        v16 = atomic_load((*(a1 + 32) + 40));
        v3 = v9;
        if (v16 < 1)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t __SidecarTransferDequeueMessages_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void SidecarRequestFinish(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = atomic_load(v3 + 14);
  if (v6 <= 2)
  {
    v7 = v6;
    atomic_compare_exchange_strong(v3 + 14, &v7, 3uLL);
    if (v7 == v6)
    {
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __SidecarRequestFinish_block_invoke;
      v11 = &unk_279BC3718;
      v12 = v4;
      v13 = v3;
      if (v4)
      {
        [v3 willChangeValueForKey:{@"error", v8, v9}];
        v10(&v8);
        [v3 didChangeValueForKey:@"error"];
      }

      else
      {
        __SidecarRequestFinish_block_invoke(&v8);
      }
    }
  }
}

void __SidecarRequestFinish_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v3 = [*(a1 + 32) code] == 3072;
  }

  else
  {
    v3 = 0;
  }

  v7.i64[0] = MEMORY[0x277D85DD0];
  v7.i64[1] = 3221225472;
  v8 = __SidecarRequestFinish_block_invoke_2;
  v9 = &unk_279BC3070;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v4;
  v12 = v3;
  v5 = v10;
  v6 = v5;
  if (v3)
  {
    [v5 willChangeValueForKey:@"cancelled"];
    v8(&v7);
    [v6 didChangeValueForKey:@"cancelled"];
  }

  else
  {
    __SidecarRequestFinish_block_invoke_2(&v7);
  }
}

void __SidecarRequestFinish_block_invoke_2(int8x16_t *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __SidecarRequestFinish_block_invoke_3;
  v3[3] = &unk_279BC3070;
  v1 = a1[2];
  v4 = vextq_s8(v1, v1, 8uLL);
  v5 = a1[3].i8[0];
  v2 = v1.i64[0];
  [v2 willChangeValueForKey:@"finished"];
  __SidecarRequestFinish_block_invoke_3(v3);
  [v2 didChangeValueForKey:@"finished"];
}

void __SidecarRequestFinish_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __SidecarRequestFinish_block_invoke_4;
    v5[3] = &unk_279BC3718;
    v5[4] = v3;
    v5[5] = v2;
    SidecarTransferLocked(v3, v5);
  }

  if (*(a1 + 48))
  {
    v4 = 5;
  }

  else if (*(a1 + 32))
  {
    v4 = 6;
  }

  else
  {
    v4 = 4;
  }

  SidecarRequestSetState(*(a1 + 40), v4);
  SidecarRequestDisconnectSession(*(a1 + 40));
}

void __SidecarRequestFinish_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 104);
  v3 = (v2 + 104);
  if (v4)
  {
    __assert_rtn("SidecarRequestFinish_block_invoke_4", "SidecarRequest.m", 243, "self->_error == nil");
  }

  v5 = *(a1 + 40);

  objc_storeStrong(v3, v5);
}

atomic_ullong *SidecarRequestSetState(void *a1, int64_t a2)
{
  result = a1;
  v4 = atomic_exchange(result + 14, a2);
  if (v4 <= a2 && (v4 != a2 ? (v5 = v4 < 5) : (v5 = 1), v5))
  {
    v6 = v4 != a2;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SidecarRequestDisconnectSession(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__131;
  v9 = __Block_byref_object_dispose__132;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SidecarRequestDisconnectSession_block_invoke;
  v4[3] = &unk_279BC3020;
  v4[4] = v1;
  v4[5] = &v5;
  SidecarTransferLocked(v1, v4);
  v2 = v6[5];
  v3 = [(os_unfair_lock_s *)v1 error];
  [v2 closeWithError:v3 completion:&__block_literal_global_133];

  _Block_object_dispose(&v5, 8);
}

void sub_26604FB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__131(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SidecarRequestDisconnectSession_block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 40));
  objc_storeStrong((*(a1 + 32) + 48), *(*(*(a1 + 40) + 8) + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __SidecarRequestDisconnectSession_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v4)
    {
      log = v4;
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      v4 = log;
      if (v5)
      {
        v6 = [v2 domain];
        v7 = [v2 code];
        v8 = [v2 localizedDescription];
        *buf = 138543875;
        v11 = v6;
        v12 = 2048;
        v13 = v7;
        v14 = 2113;
        v15 = v8;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v4 = log;
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __SidecarRequestEnsureTransferReceiver_block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 88));
  if (!*(*(a1[6] + 8) + 40))
  {
    v2 = [[SidecarTransferReceiver alloc] initWithSession:a1[5] requestID:a1[7]];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(a1[6] + 8) + 40) setDelegate:a1[4]];
    v5 = *(*(a1[6] + 8) + 40);
    v6 = (a1[4] + 88);

    objc_storeStrong(v6, v5);
  }
}

void sub_266050474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SidecarRequestTransferEnqueue(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  AssociatedObject = objc_getAssociatedObject(object, SidecarRequestTransferEnqueue);
  if (!AssociatedObject)
  {
    AssociatedObject = _SidecarAssociatedQueueAlloc(object, SidecarRequestTransferEnqueue);
  }

  v5 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
  *v5 = v3;
  v5[1] = 0;
  v6 = v5 + 1;
  *AssociatedObject[1] = v5;

  AssociatedObject[1] = v6;
}

void SidecarRequestSendMessage(void *a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SidecarRequestSendMessage_block_invoke;
  v6[3] = &unk_279BC3810;
  v6[4] = a1;
  v6[5] = 0;
  v5 = a1;
  [a2 sendMessage:a3 completion:v6];
}

void __SidecarRequestSendMessage_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v3;
  if (v6)
  {
    if (v5)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v10 = v9;
      if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v6 domain];
        v12 = [v6 code];
        v13 = [v6 localizedDescription];
        v14 = 138543875;
        v15 = v11;
        v16 = 2048;
        v17 = v12;
        v18 = 2113;
        v19 = v13;
        _os_log_impl(&dword_26604C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", &v14, 0x20u);
      }
    }

    else
    {
      _SidecarCoreLogObjCAPIError(v5, v4, v6);
    }

    SidecarRequestFinish(*(a1 + 32), v6);
  }

  else
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_266050A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SidecarRequestTransferCompleted_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v8 = v2;
    v3 = SidecarMapTableRemoveObject(v2, [*(a1 + 40) transferID]);
    v4 = *(a1 + 40);

    if (v3 == v4)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
      if (![v8[2] count])
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 96);
        *(v5 + 96) = 0;
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_266050D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SidecarRequestCreateSendTransfer_block_invoke(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 96);
  if (!v2)
  {
    v2 = [[SidecarMapTable alloc] initWithKeyMask:0x7FFFFFFFLL weakObjects:0];
    objc_storeStrong((a1[4] + 96), v2);
  }

  v3 = a1[5];
  v11[0] = 0;
  v11[1] = 0;
  [v3 getUUIDBytes:v11];
  v4 = bswap32(v11[0]);
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = SidecarMapTableAddObject(v2, v5);

  v7 = [[SidecarTransferSender alloc] initWithSession:a1[6] requestID:v4 transferID:v6];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(a1[7] + 8) + 40) setDelegate:a1[4]];
  SidecarMapTableReplaceObject(v2, v6, *(*(a1[7] + 8) + 40));

  v10 = *MEMORY[0x277D85DE8];
}

void sub_266051174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2660512EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_266051498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26605195C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_266051C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_266051E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SidecarCoreBundle()
{
  if (__SidecarCoreInit != -1)
  {
    dispatch_once(&__SidecarCoreInit, &__block_literal_global_87);
  }

  v1 = __SidecarCoreBundle;

  return v1;
}

void __SidecarCoreInit_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = __SidecarCoreBundle;
  __SidecarCoreBundle = v0;

  v2 = os_log_create("com.apple.sidecar", "core");
  atomic_store(v2, &__SidecarCoreLogSubsystem);
  v3 = v2;
  [MEMORY[0x277CCA9B8] setUserInfoValueProviderForDomain:@"SidecarErrorDomain" provider:&__block_literal_global_976];
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("com.apple.SidecarCore", v6);
  v5 = __sidecarQueue;
  __sidecarQueue = v4;
}

id SidecarQueue()
{
  if (__SidecarCoreInit != -1)
  {
    dispatch_once(&__SidecarCoreInit, &__block_literal_global_87);
  }

  v1 = __sidecarQueue;

  return v1;
}

NSObject *SidecarCoreLogSubsystem(os_log_type_t type)
{
  v1 = atomic_load(&__SidecarCoreLogSubsystem);
  if (v1)
  {
    if (os_log_type_enabled(v1, type))
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SidecarRelayConnection()
{
  v0 = SidecarRelayConnection_connection;
  if (!SidecarRelayConnection_connection)
  {
    v1 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sidecar-relay" options:0];
    v2 = SidecarRelayConnection_connection;
    SidecarRelayConnection_connection = v1;

    v3 = SidecarRelayConnection_connection;
    v4 = SidecarQueue();
    [v3 _setQueue:v4];

    [SidecarRelayConnection_connection setInvalidationHandler:&__block_literal_global_191];
    [SidecarRelayConnection_connection setInterruptionHandler:&__block_literal_global_4];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2877C37C0];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    [v5 setClasses:v10 forSelector:sel_relayDevicesForServiceIdentifier_completion_ argumentIndex:0 ofReply:1];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    [v5 setClasses:v16 forSelector:sel_relayFetchRemoteDisplaySendingDeviceStatesWithCompletion_ argumentIndex:0 ofReply:1];

    [SidecarRelayConnection_connection setRemoteObjectInterface:v5];
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2877C1CE8];
    [SidecarRelayConnection_connection setExportedInterface:v17];

    v18 = +[SidecarCoreProxy defaultProxy];
    [SidecarRelayConnection_connection setExportedObject:v18];

    [SidecarRelayConnection_connection resume];
    v0 = SidecarRelayConnection_connection;
  }

  return v0;
}

void __SidecarRelayConnection_block_invoke_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = @"com.apple.sidecar-relay";
    _os_log_impl(&dword_26604C000, v1, OS_LOG_TYPE_INFO, "%{public}@: connection interrupted", &v7, 0xCu);
  }

  v2 = +[SidecarProviderProxy defaultProxy];
  v3 = [v2 delegate];

  if (v3)
  {
    SidecarRegisterServiceProvider(v3);
  }

  v4 = +[SidecarCoreProxy defaultProxy];
  v5 = [v4 presenterDelegate];

  if (v5)
  {
    [v5 sidecarServicePresenterTerminate];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __SidecarRelayConnection_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v1 = v0;
  if (v0 && os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = @"com.apple.sidecar-relay";
    _os_log_impl(&dword_26604C000, v1, OS_LOG_TYPE_ERROR, "%{public}@: connection invalid", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void _SidecarCoreLogAPIError(const void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  memset(&v11, 0, sizeof(v11));
  dladdr(a1, &v11);
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    dli_sname = v11.dli_sname;
    v8 = [v3 domain];
    v9 = [v3 code];
    v10 = [v3 localizedDescription];
    *buf = 136446979;
    v13 = dli_sname;
    v14 = 2114;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2113;
    v19 = v10;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@ (%ld) %{private}@", buf, 0x2Au);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void _SidecarCoreLogObjCAPIError(void *a1, const char *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 description];
    v11 = NSStringFromSelector(a2);
    v12 = [v6 domain];
    v13 = [v6 code];
    v14 = [v6 localizedDescription];
    v15 = 138544387;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2113;
    v24 = v14;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@]: %{public}@ (%ld) %{private}@", &v15, 0x34u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id SidecarRelayProxyAsync(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SidecarRelayConnection();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SidecarRelayProxyAsync_block_invoke;
  v7[3] = &unk_279BC3110;
  v7[4] = v3;
  v7[5] = a1;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v7];

  return v5;
}

void __SidecarRelayProxyAsync_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  SidecarCoreLogAPIError(*(a1 + 40), v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void SidecarCoreLogAPIError(const void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (a1)
    {
      _SidecarCoreLogAPIError(a1, v3);
    }

    else
    {
      v6 = v3;
      v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v8 = v7;
      if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 domain];
        v10 = [v6 code];
        v11 = [v6 localizedDescription];
        v12 = 138543875;
        v13 = v9;
        v14 = 2048;
        v15 = v10;
        v16 = 2113;
        v17 = v11;
        _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", &v12, 0x20u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

id SidecarRelayProxySync(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__202;
  v12 = __Block_byref_object_dispose__203;
  v13 = 0;
  v4 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SidecarRelayProxySync_block_invoke;
  block[3] = &unk_279BC3138;
  block[5] = &v8;
  block[6] = a1;
  block[4] = v3;
  dispatch_sync(v4, block);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_266053024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__202(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SidecarRelayProxySync_block_invoke(void *a1)
{
  v2 = SidecarRelayConnection();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SidecarRelayProxySync_block_invoke_2;
  v7[3] = &unk_279BC3110;
  v3 = a1[6];
  v7[4] = a1[4];
  v7[5] = v3;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __SidecarRelayProxySync_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  SidecarCoreLogAPIError(*(a1 + 40), v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

id SidecarDiagnose(uint64_t a1)
{
  SidecarRegisterStateNotification();
  if (atomic_load(&SidecarDeviceState))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __SidecarDiagnose_block_invoke;
    v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v14[4] = a1;
    v3 = [v14 copy];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__202;
    v12 = __Block_byref_object_dispose__203;
    v13 = 0;
    v4 = SidecarRelayProxySync(SidecarDiagnose, v3);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __SidecarDiagnose_block_invoke_2;
    v7[3] = &unk_279BC3180;
    v7[4] = v3;
    v7[5] = &v8;
    [v4 relayDiagnose:v7];

    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

void sub_2660532F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SidecarDiagnose_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && !*v4)
  {
    v3 = v3;
    **(a1 + 32) = v3;
  }
}

void __SidecarDiagnose_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v10 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:&v10];
    v6 = v10;
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  (*(*(a1 + 32) + 16))();
}

unint64_t SidecarGetProcessUniqueID()
{
  v8 = *MEMORY[0x277D85DE8];
  result = atomic_load(&SidecarGetProcessUniqueID_uniqueId);
  if (!result)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    v2 = getpid();
    v3 = proc_pidinfo(v2, 17, 1uLL, &v4, 56);
    result = 0;
    if (v3 == 56)
    {
      result = v5;
      atomic_store(v5, &SidecarGetProcessUniqueID_uniqueId);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void SidecarRegisterServiceProvider(void *a1)
{
  v1 = a1;
  v2 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SidecarRegisterServiceProvider_block_invoke;
  block[3] = &unk_279BC3670;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __SidecarRegisterServiceProvider_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SidecarProviderProxy defaultProxy];
  [v2 setDelegate:v1];

  v3 = +[SidecarProviderProxy defaultProxy];
  v4 = +[SidecarCoreProxy defaultProxy];
  [v4 setDelegate:v3];

  v5 = SidecarRelayProxyAsync(SidecarRegisterServiceProvider, 0);
  [v5 relayRegisterServiceProvider:&__block_literal_global_28];
}

void __SidecarRegisterServiceProvider_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    _SidecarCoreLogAPIError(SidecarRegisterServiceProvider, a2);
  }
}

void SidecarServiceProviderReady(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = SidecarQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __SidecarServiceProviderReady_block_invoke;
    block[3] = &unk_279BC3670;
    block[4] = v1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v2 = v3;
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26604C000, v2, OS_LOG_TYPE_ERROR, "SidecarServiceProviderReady called with nil uuid.", buf, 2u);
    }
  }
}

void __SidecarServiceProviderReady_block_invoke(uint64_t a1)
{
  v2 = SidecarRelayProxyAsync(SidecarRegisterServiceProvider, 0);
  [v2 relayServiceProviderReady:*(a1 + 32)];
}

void SidecarOptOutOfReconnect(void *a1)
{
  v1 = a1;
  v2 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SidecarOptOutOfReconnect_block_invoke;
  block[3] = &unk_279BC32A0;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __SidecarOptOutOfReconnect_block_invoke(uint64_t a1)
{
  v2 = SidecarRelayProxyAsync(SidecarRegisterServiceProvider, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __SidecarOptOutOfReconnect_block_invoke_2;
  v3[3] = &unk_279BC3278;
  v4 = *(a1 + 32);
  [v2 relayOptOutOfReconnect:v3];
}

__CFString *SidecarSessionStateAsNSString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279BC31A0[a1];
  }
}

id SidecarMessageCreateMutable()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];

  return v0;
}

id SidecarMessageGetDefaults(void *a1)
{
  v1 = [a1 objectForKey:&unk_2877BFC20];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

uint64_t SidecarMessageSetDefaults(void *a1, const char *a2)
{
  if (a2)
  {
    return [a1 setObject:a2 forKey:&unk_2877BFC20];
  }

  else
  {
    return [a1 removeObjectForKey:&unk_2877BFC20];
  }
}

id SidecarMessageGetItemData(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKey:&unk_2877BFC38];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v5 = [v3 objectForKeyedSubscript:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void SidecarMessageSetItemData(void *a1, uint64_t a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  v6 = [v8 objectForKey:&unk_2877BFC38];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 setObject:v6 forKey:&unk_2877BFC38];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void SidecarMessageSetItemMetaData(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v3 = a2;
  v4 = [v3 count];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v23[0] = &unk_2877BFC50;
        v11 = MEMORY[0x277CCABB0];
        v12 = [v10 data];
        v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
        v23[1] = &unk_2877BFC68;
        v24[0] = v13;
        v14 = [v10 type];
        v24[1] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

        [v5 addObject:v15];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  [v17 setObject:v5 forKey:&unk_2877BFC80];
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t SidecarMessageGetType(void *a1)
{
  v1 = [a1 objectForKey:&unk_2877BFC98];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
    if ((v2 - 1) >= 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void SidecarMessageSetType(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  [v4 setObject:v5 forKey:&unk_2877BFC98];
}

void *SidecarMessageGetServiceName(void *a1)
{
  v1 = [a1 objectForKey:&unk_2877BFCB0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

uint64_t SidecarMessageGetRequestID(void *a1)
{
  v1 = [a1 objectForKey:&unk_2877BFCC8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SidecarMessageSetRequestID(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  [v4 setObject:v5 forKey:&unk_2877BFCC8];
}

uint64_t SidecarMessageGetTransferID(void *a1)
{
  v1 = [a1 objectForKey:&unk_2877BFCE0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SidecarMessageSetTransferID(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  [v4 setObject:v5 forKey:&unk_2877BFCE0];
}

SidecarMapTable *SidecarMapTableCreateStrong()
{
  v0 = [[SidecarMapTable alloc] initWithKeyMask:0x7FFFFFFFLL weakObjects:0];

  return v0;
}

SidecarMapTable *SidecarMapTableCreateWeak()
{
  v0 = [[SidecarMapTable alloc] initWithKeyMask:0x7FFFFFFFLL weakObjects:1];

  return v0;
}

uint64_t SidecarMapTableAddObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  Handle = SidecarMapTableGetHandle(v3, v4);
  if (!Handle)
  {
    v6 = v3;
    do
    {
      v7 = arc4random();
      Handle = v7 & 0x7FFFFFFF;
      if ((v7 & 0x7FFFFFFF) == 0)
      {
        break;
      }

      v8 = SidecarMapTableGetObject(v6, Handle);
    }

    while (v8);

    SidecarMapTableReplaceObject(v6, Handle, v4);
  }

  return Handle;
}

uint64_t SidecarMapTableGetHandle(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 24) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SidecarMapTableGetObject(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void SidecarMapTableReplaceObject(void *a1, uint64_t a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  v6 = SidecarMapTableRemoveObject(v8, a2);
  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v8[3] setObject:v7 forKey:v5];
    [v8[2] setObject:v5 forKey:v7];
  }
}

id SidecarMapTableRemoveObject(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = SidecarMapTableGetObject(v3, a2);
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v3[3] removeObjectForKey:v4];
    [v3[2] removeObjectForKey:v5];
  }

  return v4;
}

uint64_t SidecarMapTableRemoveAllObjects(void *a1)
{
  v1 = a1[3];
  v2 = a1;
  [v1 removeAllObjects];
  v3 = v2[2];

  return [v3 removeAllObjects];
}

void SidecarMapTableIterateObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, v3[2]);
  value = 0;
  key = 0;
  while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    v5 = [key integerValue];
    if (value)
    {
      v4[2](v4, v5);
    }
  }

  NSEndMapTableEnumeration(&enumerator);
}

void sub_266056150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__493(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SidecarDevicesForService(void *a1)
{
  v1 = a1;
  v2 = SidecarRelayProxySync(SidecarDevicesForService, 0);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__493;
  v11 = __Block_byref_object_dispose__494;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SidecarDevicesForService_block_invoke;
  v6[3] = &unk_279BC31D0;
  v6[4] = &v7;
  [v2 relayDevicesForServiceIdentifier:v1 completion:v6];
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_266056458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SidecarDevicesForService_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v10)
    {
      log = v10;
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v10 = log;
      if (v11)
      {
        v12 = [v6 domain];
        v13 = [v6 code];
        v14 = [v6 localizedDescription];
        *buf = 138543875;
        v17 = v12;
        v18 = 2048;
        v19 = v13;
        v20 = 2113;
        v21 = v14;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v10 = log;
      }
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x277D85DE8];
}

void __SidecarDeviceGeneration_block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SidecarDevicesChangedNotification" object:0];
}

id SidecarLocalizedString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = SidecarCoreBundle();
  v11 = [v10 localizedStringForKey:v9 value:0 table:0];

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:&a9];

  return v12;
}

id SidecarLocalizedWirelessString(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (SidecarLocalizedWirelessString_onceToken != -1)
  {
    dispatch_once(&SidecarLocalizedWirelessString_onceToken, &__block_literal_global_621);
  }

  if (SidecarLocalizedWirelessString_usesWAPI)
  {
    v10 = [v9 stringByAppendingString:@"_WLAN"];
  }

  else
  {
    v10 = v9;
  }

  v18 = v10;
  v19 = SidecarLocalizedString(v10, v11, v12, v13, v14, v15, v16, v17, &a9);

  return v19;
}

uint64_t __SidecarLocalizedWirelessString_block_invoke()
{
  result = MGGetBoolAnswer();
  SidecarLocalizedWirelessString_usesWAPI = result;
  return result;
}

void validateXPCCoder(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 raise:v5 format:{@"%@ only supports coding for XPC", v10}];
  }
}

double decodeDouble(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 allowsKeyedCoding])
  {
    [v4 decodeDoubleForKey:v3];
    v6 = v5;
  }

  else
  {
    v8 = 0.0;
    [v4 decodeValueOfObjCType:"d" at:&v8 size:8];

    v6 = v8;
  }

  return v6;
}

void encodeDouble(void *a1, void *a2, double a3)
{
  v5 = a2;
  v7 = a3;
  v6 = a1;
  if ([v6 allowsKeyedCoding])
  {
    [v6 encodeDouble:v5 forKey:a3];
  }

  else
  {
    [v6 encodeValueOfObjCType:"d" at:&v7];
  }
}

uint64_t decodeInteger(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeIntegerForKey:v3];
  }

  else
  {
    v7 = 0;
    [v4 decodeValueOfObjCType:"q" at:&v7 size:8];

    v5 = v7;
  }

  return v5;
}

void encodeInteger(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = a3;
  v6 = a1;
  if ([v6 allowsKeyedCoding])
  {
    [v6 encodeInteger:a3 forKey:v5];
  }

  else
  {
    [v6 encodeValueOfObjCType:"q" at:&v7];
  }
}

id decodeObject(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ([v6 allowsKeyedCoding])
  {
    v7 = [v6 decodeObjectOfClass:a3 forKey:v5];
  }

  else
  {
    v8 = [v6 decodeObject];

    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;
    v6 = v8;
  }

  return v7;
}

void encodeObject(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = a1;
  if ([v6 allowsKeyedCoding])
  {
    [v6 encodeObject:v5 forKey:v7];
  }

  else
  {
    [v6 encodeObject:v5];
  }
}

id SidecarSessionWithHandle(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = SidecarSessionGetFromRemoteMapTable(a1);
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__711;
    v9 = __Block_byref_object_dispose__712;
    v10 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __SidecarSessionGetFromLocalMapTable_block_invoke;
    v4[3] = &unk_279BC3430;
    v4[4] = &v5;
    v4[5] = a1;
    SidecarSessionWithMapTable(SidecarMapTableCreateWeak, &__SidecarSessionLocalMapTable, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v2;
}

void sub_266059538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SidecarSessionGetFromRemoteMapTable(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__711;
  v8 = __Block_byref_object_dispose__712;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __SidecarSessionGetFromRemoteMapTable_block_invoke;
  v3[3] = &unk_279BC3430;
  v3[4] = &v4;
  v3[5] = a1;
  SidecarSessionWithMapTable(SidecarMapTableCreateStrong, &__SidecarSessionRemoteMapTable, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_266059650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__711(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SidecarSessionGetFromLocalMapTable_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SidecarMapTableGetObject(a2, *(a1 + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void SidecarSessionWithMapTable(void (*a1)(void), uint64_t *a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(&SidecarSessionWithMapTable_lock);
  if (!*a2)
  {
    *a2 = a1();
  }

  v5[2]();
  os_unfair_lock_unlock(&SidecarSessionWithMapTable_lock);
}

uint64_t __SidecarSessionGetFromRemoteMapTable_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SidecarMapTableGetObject(a2, *(a1 + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

id sessionCompletion(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __sessionCompletion_block_invoke;
  v10[3] = &unk_279BC36F0;
  v11 = v5;
  v12 = a2;
  v10[4] = a1;
  v6 = v5;
  v7 = a1;
  v8 = MEMORY[0x266777D20](v10);

  return v8;
}

void __sessionCompletion_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = v3;
    if (v5)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      if (v10)
      {
        log = v10;
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        v10 = log;
        if (v11)
        {
          v12 = [v6 domain];
          v13 = [v6 code];
          v14 = [v6 localizedDescription];
          *buf = 138543875;
          v20 = v12;
          v21 = 2048;
          v22 = v13;
          v23 = 2113;
          v24 = v14;
          _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

          v10 = log;
        }
      }
    }

    else
    {
      _SidecarCoreLogObjCAPIError(v5, v4, v6);
    }
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __sessionCompletion_block_invoke_2;
    block[3] = &unk_279BC34C8;
    v18 = *(a1 + 40);
    v17 = v3;
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

atomic_ullong *SidecarSessionSetState(void *a1, int64_t a2)
{
  result = a1;
  v4 = atomic_exchange(result + 9, a2);
  if (v4 > a2)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 != a2;

    return v5;
  }

  return result;
}

void sub_26605B2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SidecarSessionAddToLocalMapTable_block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  do
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(*(*(a1 + 40) + 8) + 40);
    v11[0] = 0;
    v11[1] = 0;
    [v7 getUUIDBytes:v11];
    v8 = bswap32(v11[0]);
    v9 = SidecarMapTableGetObject(v3, v8);
  }

  while (v9);
  SidecarMapTableReplaceObject(v3, v8, *(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

id SidecarOPACKEncode(void *a1, void *a2)
{
  v3 = a1;
  if (_SidecarOPACKInit_once != -1)
  {
    dispatch_once(&_SidecarOPACKInit_once, &__block_literal_global_792);
  }

  v6 = 0;
  v4 = _SidecarOPACKEncode(v3, 0, &v6);
  if (a2 && v6)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
  }

  return v4;
}

id SidecarOPACKDecode(void *a1, void *a2)
{
  v3 = a1;
  if (_SidecarOPACKInit_once != -1)
  {
    dispatch_once(&_SidecarOPACKInit_once, &__block_literal_global_792);
  }

  v6 = 0;
  v4 = _SidecarOPACKDecode(v3, 0, &v6);
  if (a2 && v6)
  {
    *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
  }

  return v4;
}

void *_SidecarAssociatedQueueAlloc(void *a1, const void *a2)
{
  v3 = a1;
  v4 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  *v4 = 0;
  v4[1] = v4;
  objc_setAssociatedObject(v3, a2, v4, 0);

  return v4;
}

void _SidecarAssociatedQueueDealloc(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  if (*a3)
  {
    __break(1u);
  }

  else
  {
    object = v5;
    free(a3);
    objc_setAssociatedObject(object, a2, 0, 0);
  }
}

void SidecarRegisterStateNotification()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __SidecarRegisterStateNotification_block_invoke;
  v2[3] = &unk_279BC3518;
  v3 = 1;
  v2[5] = "com.apple.sidecar-relay.device-generation";
  v2[6] = &SidecarDeviceState;
  v2[4] = &__block_literal_global_492;
  v0 = qword_280059200[0];
  v1 = &__block_literal_global_492;
  if (v0 != -1)
  {
    dispatch_once(qword_280059200, v2);
  }
}

void __SidecarRegisterStateNotification_block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = getuid();
    asprintf((a1 + 40), "user.uid.%d.%s", v2, *(a1 + 40));
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = dispatch_get_global_queue(21, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __SidecarRegisterStateNotification_block_invoke_2;
  handler[3] = &unk_279BC34F0;
  handler[4] = *(a1 + 32);
  handler[5] = v4;
  notify_register_dispatch(v3, (v4 + 16), v5, handler);

  if (*(a1 + 56) == 1)
  {
    free(*(a1 + 40));
  }

  SidecarUpdateStateNotification(*(a1 + 48), 0);
}

void SidecarUpdateStateNotification(uint64_t a1, void *a2)
{
  v3 = a2;
  state64 = 0;
  notify_get_state(*(a1 + 16), &state64);
  v4 = atomic_exchange(a1, state64);
  if (v3 && v4 != state64)
  {
    v3[2](v3);
  }
}

double __SidecarTimeScale_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v5 = v0;
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&dword_26604C000, 0, OS_LOG_TYPE_ERROR, "%{mach.errno}d", buf, 8u);
    }
  }

  LODWORD(v1) = info.numer;
  LODWORD(v2) = info.denom;
  result = v1 / v2 * 0.000000001;
  SidecarTimeScale_scale = *&result;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double SidecarAbsoluteTime()
{
  v0 = mach_absolute_time();
  if (SidecarTimeScale_once != -1)
  {
    dispatch_once(&SidecarTimeScale_once, &__block_literal_global_808);
  }

  return *&SidecarTimeScale_scale * v0;
}

id filterTargetDevice(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__899;
  v16 = __Block_byref_object_dispose__900;
  v17 = 0;
  v7 = [v6 identifier];
  v8 = [v5 _devicesByForcingFetchFromRelay:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __filterTargetDevice_block_invoke;
  v11[3] = &unk_279BC35C0;
  v11[4] = v7;
  v11[5] = &v12;
  [v8 enumerateObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_26605C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SidecarRequest *makeRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v7 = [[SidecarRequest alloc] initWithService:v3 device:v5];

    goto LABEL_5;
  }

  v6 = [v3 devices];
  v5 = [v6 firstObject];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

uint64_t __Block_byref_object_copy__899(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __filterTargetDevice_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 identifier];
  *a4 = [v7 isEqual:*(a1 + 32)];

  if (*a4 == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __filterDevices_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t isSidecarInternal()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"com.apple.sidecar.internal"];

  return v1;
}

__CFString *SidecarDeviceVisualDetectabilityAsNSString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"UnrecognizedValue";
  }

  else
  {
    return off_279BC35E0[a1];
  }
}

void SidecarRegisterServicePresenter(void *a1)
{
  v1 = a1;
  v2 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SidecarRegisterServicePresenter_block_invoke;
  block[3] = &unk_279BC3670;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __SidecarRegisterServicePresenter_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SidecarCoreProxy defaultProxy];
  [v2 setPresenterDelegate:v1];

  v3 = SidecarRelayProxyAsync(SidecarRegisterServicePresenter, 0);
  [v3 relayRegisterServicePresenter:&__block_literal_global_1096];
}

void __SidecarRegisterServicePresenter_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    _SidecarCoreLogAPIError(SidecarRegisterServicePresenter, a2);
  }
}

void SidecarServicePresenterReady(uint64_t a1)
{
  v2 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __SidecarServicePresenterReady_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v2, block);
}

void __SidecarServicePresenterReady_block_invoke(uint64_t a1)
{
  v2 = SidecarRelayProxyAsync(SidecarServicePresenterReady, 0);
  [v2 relayServicePresenterReady:*(a1 + 32) completion:&__block_literal_global_3];
}

void __SidecarServicePresenterReady_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    _SidecarCoreLogAPIError(SidecarServicePresenterReady, a2);
  }
}

void SidecarCoreLogObjCAPIError(void *a1, const char *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (v5 && a2)
    {
      _SidecarCoreLogObjCAPIError(v5, a2, v6);
    }

    else
    {
      v9 = v6;
      v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v11 = v10;
      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = [v9 domain];
        v13 = [v9 code];
        v14 = [v9 localizedDescription];
        v15 = 138543875;
        v16 = v12;
        v17 = 2048;
        v18 = v13;
        v19 = 2113;
        v20 = v14;
        _os_log_impl(&dword_26604C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", &v15, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void streamCompletion(void *a1, const char *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    SidecarCoreLogObjCAPIError(v9, a2, v11);
    [v10 invalidate];
  }

  else if (v10)
  {
    v13 = v10;
    v14 = v9;
    v15 = SidecarSessionGetStreams(v14, 1);
    [v15 setObject:v13 forKey:*(v13 + 1)];
    objc_storeWeak(v13 + 4, v14);

    v16 = [v13 rapportStream];
    [v16 setStreamFlags:{objc_msgSend(v16, "streamFlags") | 4}];
  }

  v17 = [v9 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __streamCompletion_block_invoke;
  block[3] = &unk_279BC3860;
  block[5] = v10;
  block[6] = v12;
  block[4] = v11;
  dispatch_async(v17, block);
}

uint64_t __streamCompletion_block_invoke(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

id SidecarSessionGetStreams(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_getAssociatedObject(v3, SidecarSessionGetStreams);
  if (!v4 && a2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_setAssociatedObject(v3, SidecarSessionGetStreams, v4, 0x301);
  }

  return v4;
}

NSSize NSSizeFromString(NSString *aString)
{
  MEMORY[0x28211F8B0](aString);
  result.height = v2;
  result.width = v1;
  return result;
}