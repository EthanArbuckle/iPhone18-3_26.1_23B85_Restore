@interface TSPCryptoReadChannel
- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4;
- (void)close;
- (void)dealloc;
- (void)readWithQueue:(id)a3 handler:(id)a4;
@end

@implementation TSPCryptoReadChannel

- (TSPCryptoReadChannel)initWithReadChannel:(id)a3 decryptionKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = TSPCryptoReadChannel;
  v9 = [(TSPCryptoReadChannel *)&v32 init];
  if (v9)
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel initWithReadChannel:decryptionKey:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:39 description:{@"invalid nil value for '%s'", "readChannel"}];
    }

    objc_storeStrong(&v9->_readChannel, a3);
    if (!v8)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel initWithReadChannel:decryptionKey:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:42 description:{@"invalid nil value for '%s'", "decryptionKey"}];
    }

    objc_storeStrong(&v9->_decryptionKey, a4);
    v16 = dispatch_queue_create("TSPCryptoReadChannel.Read", 0);
    readChannelQueue = v9->_readChannelQueue;
    v9->_readChannelQueue = v16;

    v18 = [v8 passphrase];
    v19 = [v18 cStringUsingEncoding:4];

    if (!v19)
    {
      v20 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel initWithReadChannel:decryptionKey:]"];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v20 handleFailureInFunction:v21 file:v22 lineNumber:49 description:@"Invalid passphrase"];
    }

    v23 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    v9->_iv = v23;
    if (!v23)
    {
      v24 = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel initWithReadChannel:decryptionKey:]"];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v24 handleFailureInFunction:v25 file:v26 lineNumber:59 description:@"Failed to allocate space for IV"];
    }

    v27 = malloc_type_malloc(0x200000uLL, 0x100004077774924uLL);
    v9->_buffer = v27;
    if (!v27)
    {
      v28 = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel initWithReadChannel:decryptionKey:]"];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v28 handleFailureInFunction:v29 file:v30 lineNumber:62 description:@"Failed to allocate space for decryption buffer"];
    }

    if (!v9->_readChannel || !v19 || !v9->_decryptionKey || !v9->_iv || !v9->_buffer)
    {

      v9 = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  [(TSPCryptoReadChannel *)self close];
  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  iv = self->_iv;
  if (iv)
  {
    free(iv);
    self->_iv = 0;
  }

  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  v6.receiver = self;
  v6.super_class = TSPCryptoReadChannel;
  [(TSPCryptoReadChannel *)&v6 dealloc];
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)readWithQueue:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  readChannel = self->_readChannel;
  if (!readChannel)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:96 description:@"Read channel is already closed"];

    readChannel = self->_readChannel;
  }

  readChannelQueue = self->_readChannelQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke;
  v15[3] = &unk_279D47468;
  v13 = v6;
  v16 = v13;
  v14 = v7;
  v17 = self;
  v18 = v14;
  [(TSUStreamReadChannel *)readChannel readWithQueue:readChannelQueue handler:v15];
}

void __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 1;
  if (v8)
  {
    v9 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_2;
    block[3] = &unk_279D46A08;
    v93 = *(a1 + 48);
    v92 = v8;
    dispatch_async(v9, block);
    *(v95 + 24) = 0;

    goto LABEL_53;
  }

  v10 = *(*(a1 + 40) + 32);
  if (v10)
  {
    concat = dispatch_data_create_concat(v10, v7);

    v7 = concat;
  }

  v12 = v7;
  size = dispatch_data_get_size(v7);
  if (size >= 0x14)
  {
    v14 = 20;
  }

  else
  {
    v14 = size;
  }

  v15 = size - v14;
  subrange = dispatch_data_create_subrange(v12, size - v14, v14);
  v17 = *(a1 + 40);
  v18 = *(v17 + 32);
  *(v17 + 32) = subrange;

  v7 = dispatch_data_create_subrange(v12, 0, v15);
  v19 = dispatch_data_get_size(v7);
  if (a2 && !v19)
  {
    v20 = *(*(a1 + 40) + 56);
    if (v20)
    {
      OutputLength = CCCryptorGetOutputLength(v20, 0, 1);
      v22 = OutputLength;
      if (!OutputLength)
      {
LABEL_32:
        if (*(*(a1 + 40) + 72) != 16)
        {
          v47 = [MEMORY[0x277D6C290] currentHandler];
          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
          [v47 handleFailureInFunction:v48 file:v49 lineNumber:154 description:{@"Failed to read and discard the initial random block; only read %zu bytes", *(*(a1 + 40) + 72)}];
        }

        v50 = *(a1 + 32);
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_3;
        v88[3] = &unk_279D46A08;
        v51 = *(a1 + 48);
        v89 = v22;
        v90 = v51;
        v52 = v22;
        dispatch_async(v50, v88);

        goto LABEL_53;
      }

      v23 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (v23)
      {
        dataOutMoved = 0;
        v24 = CCCryptorFinal(*(*(a1 + 40) + 56), v23, v22, &dataOutMoved);
        if (v24)
        {
          v25 = [MEMORY[0x277D6C290] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
          [v25 handleFailureInFunction:v26 file:v27 lineNumber:138 description:{@"Finalizing decryption failed: CCCryptorFinal status %i", v24}];
        }

        if (dataOutMoved)
        {
          v22 = dispatch_data_create(v23, dataOutMoved, 0, 0);
        }

        else
        {
          v22 = 0;
        }

        free(v23);
        goto LABEL_32;
      }

      v40 = [MEMORY[0x277D6C290] currentHandler];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
      [v40 handleFailureInFunction:v41 file:v42 lineNumber:133 description:@"Failed to allocate buffer for finalizing decryption"];
    }

    v22 = 0;
    goto LABEL_32;
  }

  dataOutMoved = 0;
  p_dataOutMoved = &dataOutMoved;
  v86 = 0x2020000000;
  v87 = 0;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_4;
  applier[3] = &unk_279D47418;
  applier[4] = *(a1 + 40);
  applier[5] = &v94;
  applier[6] = &dataOutMoved;
  dispatch_data_apply(v7, applier);
  if (*(v95 + 24) == 1)
  {
    v28 = *(a1 + 40);
    v29 = *(v28 + 72);
    v30 = p_dataOutMoved;
    v31 = 16 - v29 >= p_dataOutMoved[3] ? p_dataOutMoved[3] : 16 - v29;
    *(v28 + 72) = v31 + v29;
    v32 = v30[3];
    if (v32 != v31)
    {
      if (a2)
      {
        v79 = 0;
        v33 = CCCryptorGetOutputLength(*(*(a1 + 40) + 56), 0, 1);
        v34 = v33;
        if (v33)
        {
          v35 = malloc_type_malloc(v33, 0x100004077774924uLL);
          if (!v35)
          {
            v37 = [MEMORY[0x277D6C290] currentHandler];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
            [v37 handleFailureInFunction:v38 file:v39 lineNumber:240 description:@"Failed to allocate buffer for finalizing decryption"];
            v35 = 0;
            goto LABEL_37;
          }

          v36 = CCCryptorFinal(*(*(a1 + 40) + 56), v35, v34, &v79);
          if (v36)
          {
            v37 = [MEMORY[0x277D6C290] currentHandler];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
            [v37 handleFailureInFunction:v38 file:v39 lineNumber:244 description:{@"Finalizing decryption failed: CCCryptorFinal status %i", v36}];
LABEL_37:
          }
        }

        else
        {
          v35 = 0;
        }

        v53 = *(a1 + 40);
        v54 = *(v53 + 72);
        if (16 - v54 >= v79)
        {
          v55 = v79;
        }

        else
        {
          v55 = 16 - v54;
        }

        *(v53 + 72) = v55 + v54;
        v56 = *(a1 + 40);
        if (*(v56 + 72) != 16)
        {
          v57 = [MEMORY[0x277D6C290] currentHandler];
          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke"];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
          [v57 handleFailureInFunction:v58 file:v59 lineNumber:249 description:{@"Failed to read and discard the initial random block; only read %zu bytes", *(*(a1 + 40) + 72)}];

          v56 = *(a1 + 40);
        }

        v60 = dispatch_data_create((*(v56 + 64) + v31), p_dataOutMoved[3] - v31, 0, 0);
        v61 = *(a1 + 32);
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_6;
        v74[3] = &unk_279D47440;
        v76 = *(a1 + 48);
        v77 = v79;
        v78 = v55;
        v62 = v60;
        v75 = v62;
        dispatch_async(v61, v74);
        if (v79 != v55)
        {
          v63 = dispatch_data_create(&v35[v55], v79 - v55, 0, 0);
          v64 = *(a1 + 32);
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_7;
          v71[3] = &unk_279D46A08;
          v65 = *(a1 + 48);
          v72 = v63;
          v73 = v65;
          v66 = v63;
          dispatch_async(v64, v71);
        }

        if (v35)
        {
          free(v35);
        }

        v67 = *(*(a1 + 40) + 56);
        if (v67)
        {
          CCCryptorRelease(v67);
          *(*(a1 + 40) + 56) = 0;
        }

        goto LABEL_50;
      }

      v43 = dispatch_data_create((*(*(a1 + 40) + 64) + v31), v32 - v31, 0, 0);
      v44 = *(a1 + 32);
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_5;
      v80[3] = &unk_279D46A08;
      v45 = *(a1 + 48);
      v81 = v43;
      v82 = v45;
      v46 = v43;
      dispatch_async(v44, v80);
    }
  }

LABEL_50:
  if ((v95[3] & 1) == 0)
  {
    v68 = *(a1 + 32);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_8;
    v69[3] = &unk_279D46BB8;
    v70 = *(a1 + 48);
    dispatch_async(v68, v69);
  }

  _Block_object_dispose(&dataOutMoved, 8);
LABEL_53:
  _Block_object_dispose(&v94, 8);
}

uint64_t __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_4(void *a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v28 = a2;
  while (a5)
  {
    v8 = a1[4];
    if (!*(v8 + 56))
    {
      v11 = v8 + 40;
      v9 = *(v8 + 40);
      v10 = *(v11 + 8);
      v12 = 16 - v10 >= a5 ? a5 : 16 - v10;
      memcpy((v9 + v10), a4, v12);
      *(a1[4] + 48) += v12;
      a4 += v12;
      a5 -= v12;
      v13 = a1[4];
      if (*(v13 + 48) == 16)
      {
        v14 = CCCryptorCreate(1u, 0, 1u, [*(v13 + 24) keyData], objc_msgSend(*(a1[4] + 24), "keyLength"), *(a1[4] + 40), (a1[4] + 56));
        if (v14 || !*(a1[4] + 56))
        {
          v15 = [MEMORY[0x277D6C290] currentHandler];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke_4"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
          [v15 handleFailureInFunction:v16 file:v17 lineNumber:183 description:{@"CCCryptorCreate() failed: %d", v14}];

          *(*(a1[5] + 8) + 24) = 0;
        }
      }
    }

    if (*(*(a1[5] + 8) + 24) == 1)
    {
      if (a5)
      {
        v18 = a1[4];
        v19 = *(v18 + 56);
        if (v19)
        {
          dataOutMoved = 0;
          if (a5 >= 0x1FFFF0)
          {
            v20 = 2097136;
          }

          else
          {
            v20 = a5;
          }

          v21 = *(*(a1[6] + 8) + 24);
          v22 = CCCryptorUpdate(v19, a4, v20, (*(v18 + 64) + v21), 0x200000 - v21, &dataOutMoved);
          if (v22)
          {
            v23 = [MEMORY[0x277D6C290] currentHandler];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPCryptoReadChannel readWithQueue:handler:]_block_invoke_4"];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPCryptoReadChannel.mm"];
            [v23 handleFailureInFunction:v24 file:v25 lineNumber:198 description:{@"CCCryptorUpdate() failed: %d", v22}];

            *(*(a1[5] + 8) + 24) = 0;
          }

          a4 += v20;
          a5 -= v20;
          *(*(a1[6] + 8) + 24) += dataOutMoved;
        }
      }
    }
  }

  v26 = *(*(a1[5] + 8) + 24);

  return v26;
}

void __46__TSPCryptoReadChannel_readWithQueue_handler___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsp_errorWithCode:1];
  (*(v1 + 16))(v1, 1, 0);
}

@end