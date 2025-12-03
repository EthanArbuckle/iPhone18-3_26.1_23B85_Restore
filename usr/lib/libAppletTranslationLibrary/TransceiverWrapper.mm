@interface TransceiverWrapper
+ (id)withTransceiver:(id)transceiver;
- (BOOL)applyScript:(id)script ignoreSW:(BOOL)w error:(id *)error;
- (TransceiverWrapper)initWithTransceiver:(id)transceiver;
- (id)transceive:(id)transceive error:(id *)error;
- (id)transceiveAndCheckSW:(id)w inArray:(id)array keepingSW:(BOOL)sW error:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length error:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array error:(id *)error;
- (void)dumpAPDUs:(id)us;
@end

@implementation TransceiverWrapper

- (TransceiverWrapper)initWithTransceiver:(id)transceiver
{
  transceiverCopy = transceiver;
  v9.receiver = self;
  v9.super_class = TransceiverWrapper;
  v6 = [(TransceiverWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transceiver, transceiver);
    v7->_circbuff = CircularBufferInit(v7->_circBuffStorage, 0x1000uLL);
    v7->_isMultiOS = objc_opt_respondsToSelector() & 1;
  }

  return v7;
}

+ (id)withTransceiver:(id)transceiver
{
  transceiverCopy = transceiver;
  v4 = [[TransceiverWrapper alloc] initWithTransceiver:transceiverCopy];

  return v4;
}

- (id)transceive:(id)transceive error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  transceiveCopy = transceive;
  v13 = 62;
  v14 = &v13;
  v15 = 1;
  bytes = [transceiveCopy bytes];
  if ([transceiveCopy length] <= 0x300)
  {
    v7 = [transceiveCopy length];
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
    [(SETransceiver *)transceiver transceive:transceiveCopy toOS:0 error:error];
  }

  else
  {
    [(SETransceiver *)transceiver transceive:transceiveCopy error:error];
  }
  v9 = ;
  v10 = v9;
  if (v9)
  {
    v13 = 60;
    v14 = &v13;
    v15 = 1;
    bytes = [v9 bytes];
    v17 = [v10 length];
    CircularBufferAddScattered(&self->_circbuff->var0, &v14, 2);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)dumpAPDUs:(id)us
{
  usCopy = us;
  circbuff = self->_circbuff;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TransceiverWrapper_dumpAPDUs___block_invoke;
  v7[3] = &unk_278875210;
  v8 = usCopy;
  v6 = usCopy;
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

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length error:(id *)error
{
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v8 = [(TransceiverWrapper *)self transceiveAndCheckSW:v7 inArray:&unk_2843C73D0 keepingSW:0 error:error];

  return v8;
}

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array error:(id *)error
{
  v10 = MEMORY[0x277CBEA90];
  arrayCopy = array;
  v12 = [v10 dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v13 = [(TransceiverWrapper *)self transceiveAndCheckSW:v12 inArray:arrayCopy keepingSW:0 error:error];

  return v13;
}

- (id)transceiveAndCheckSW:(id)w inArray:(id)array keepingSW:(BOOL)sW error:(id *)error
{
  sWCopy = sW;
  v51[1] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v11 = [(TransceiverWrapper *)self transceive:w error:error];
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
    if (!error)
    {
      goto LABEL_22;
    }

    v19 = *error;
    v20 = MEMORY[0x277CCA9B8];
    if (*error)
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
  v14 = [arrayCopy containsObject:v13];

  if (v14)
  {
    if (sWCopy)
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
  if (error)
  {
    v28 = *error;
    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    if (*error)
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
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];
  }

LABEL_22:

  v36 = 0;
LABEL_23:

  v40 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)applyScript:(id)script ignoreSW:(BOOL)w error:(id *)error
{
  wCopy = w;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  scriptCopy = script;
  v9 = [scriptCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(scriptCopy);
        }

        v13 = [MEMORY[0x277CBEA90] dataWithHexString:{*(*(&v19 + 1) + 8 * i), v19}];
        if (wCopy)
        {
          v14 = [(TransceiverWrapper *)self transceive:v13 error:0];
        }

        else
        {
          v15 = [(TransceiverWrapper *)self transceiveAndCheckSW:v13 error:error];

          if (!v15)
          {
            v16 = 0;
            goto LABEL_13;
          }
        }
      }

      v10 = [scriptCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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