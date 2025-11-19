@interface TransceiverWrapper
+ (id)withTransceiver:(id)a3;
- (BOOL)applyScript:(id)a3 ignoreSW:(BOOL)a4 error:(id *)a5;
- (TransceiverWrapper)initWithTransceiver:(id)a3;
- (id)transceive:(id)a3 error:(id *)a4;
- (id)transceiveAndCheckSW:(id)a3 inArray:(id)a4 keepingSW:(BOOL)a5 error:(id *)a6;
- (id)transceiveBytesAndCheckSW:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (id)transceiveBytesAndCheckSW:(const char *)a3 length:(unint64_t)a4 inArray:(id)a5 error:(id *)a6;
- (void)dumpAPDUs:(id)a3;
@end

@implementation TransceiverWrapper

- (TransceiverWrapper)initWithTransceiver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransceiverWrapper;
  v6 = [(TransceiverWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transceiver, a3);
    v7->_circbuff = CircularBufferInit(v7->_circBuffStorage, 0x1000uLL);
    v7->_isMultiOS = objc_opt_respondsToSelector() & 1;
  }

  return v7;
}

+ (id)withTransceiver:(id)a3
{
  v3 = a3;
  v4 = [[TransceiverWrapper alloc] initWithTransceiver:v3];

  return v4;
}

- (id)transceive:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13 = 62;
  v14 = &v13;
  v15 = 1;
  v16 = [v6 bytes];
  if ([v6 length] <= 0x300)
  {
    v7 = [v6 length];
  }

  else
  {
    v7 = 768;
  }

  v17 = v7;
  CircularBufferAddScattered(&self->_circbuff->var0, &v14, 2);
  transceiver = self->_transceiver;
  if (self->_isMultiOS)
  {
    [(SETransceiver *)transceiver transceive:v6 toOS:0 error:a4];
  }

  else
  {
    [(SETransceiver *)transceiver transceive:v6 error:a4];
  }
  v9 = ;
  v10 = v9;
  if (v9)
  {
    v13 = 60;
    v14 = &v13;
    v15 = 1;
    v16 = [v9 bytes];
    v17 = [v10 length];
    CircularBufferAddScattered(&self->_circbuff->var0, &v14, 2);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)dumpAPDUs:(id)a3
{
  v4 = a3;
  circbuff = self->_circbuff;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TransceiverWrapper_dumpAPDUs___block_invoke;
  v7[3] = &unk_278875210;
  v8 = v4;
  v6 = v4;
  CircularBufferDump(&circbuff->var0, v7);
}

uint64_t __32__TransceiverWrapper_dumpAPDUs___block_invoke(uint64_t result, int a2, char *a3)
{
  if (a2)
  {
    v3 = *a3;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)transceiveBytesAndCheckSW:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v8 = [(TransceiverWrapper *)self transceiveAndCheckSW:v7 inArray:&unk_2843C73D0 keepingSW:0 error:a5];

  return v8;
}

- (id)transceiveBytesAndCheckSW:(const char *)a3 length:(unint64_t)a4 inArray:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEA90];
  v11 = a5;
  v12 = [v10 dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v13 = [(TransceiverWrapper *)self transceiveAndCheckSW:v12 inArray:v11 keepingSW:0 error:a6];

  return v13;
}

- (id)transceiveAndCheckSW:(id)a3 inArray:(id)a4 keepingSW:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v51[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = [(TransceiverWrapper *)self transceive:a3 error:a6];
  v12 = v11;
  if (!v11)
  {
    v16 = ATLLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_ERROR, "nil response", buf, 2u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"nil response"];
    v18 = v17;
    if (!a6)
    {
      goto LABEL_22;
    }

    v19 = *a6;
    v20 = MEMORY[0x277CCA9B8];
    if (*a6)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v48[0] = *MEMORY[0x277CCA450];
      v48[1] = v21;
      v49[0] = v17;
      v49[1] = v19;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v49;
      v24 = v48;
      v25 = 2;
    }

    else
    {
      v50 = *MEMORY[0x277CCA450];
      v51[0] = v17;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v51;
      v24 = &v50;
      v25 = 1;
    }

    v37 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    v38 = v20;
    v39 = 4;
    goto LABEL_21;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:GetSW(v11)];
  v14 = [v10 containsObject:v13];

  if (v14)
  {
    if (v7)
    {
      v15 = v12;
    }

    else
    {
      v15 = [v12 subdataWithRange:{0, objc_msgSend(v12, "length") - 2}];
    }

    v36 = v15;
    goto LABEL_23;
  }

  v26 = ATLLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v47 = v12;
    _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "Unexpected SW %@", buf, 0xCu);
  }

  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected SW %@", v12];
  v18 = v27;
  if (a6)
  {
    v28 = *a6;
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*a6)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA450];
      v42[1] = v31;
      v43[0] = v27;
      v43[1] = v28;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v43;
      v34 = v42;
      v35 = 2;
    }

    else
    {
      v44 = *MEMORY[0x277CCA450];
      v45 = v27;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v45;
      v34 = &v44;
      v35 = 1;
    }

    v37 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    v38 = v29;
    v39 = 5;
LABEL_21:
    *a6 = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];
  }

LABEL_22:

  v36 = 0;
LABEL_23:

  v40 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)applyScript:(id)a3 ignoreSW:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CBEA90] dataWithHexString:{*(*(&v19 + 1) + 8 * i), v19}];
        if (v6)
        {
          v14 = [(TransceiverWrapper *)self transceive:v13 error:0];
        }

        else
        {
          v15 = [(TransceiverWrapper *)self transceiveAndCheckSW:v13 error:a5];

          if (!v15)
          {
            v16 = 0;
            goto LABEL_13;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end