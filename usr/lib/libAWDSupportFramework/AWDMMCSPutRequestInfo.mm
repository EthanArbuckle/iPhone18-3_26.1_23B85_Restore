@interface AWDMMCSPutRequestInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAuthHttpInfos:(id)infos;
- (void)addCancelError:(id)error;
- (void)addChunkingInfos:(id)infos;
- (void)addCompleteHttpInfos:(id)infos;
- (void)addContainerHttpInfos:(id)infos;
- (void)addError:(id)error;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAllItemsFailed:(BOOL)failed;
- (void)setHasAllItemsSuccessful:(BOOL)successful;
- (void)setHasCancelledErrorCode:(BOOL)code;
- (void)setHasChunksUploaded:(BOOL)uploaded;
- (void)setHasItemCount:(BOOL)count;
- (void)setHasItemCountFailed:(BOOL)failed;
- (void)setHasItemCountSuccessful:(BOOL)successful;
- (void)setHasItemsAlreadyPresentCount:(BOOL)count;
- (void)setHasItemsNotPresentCount:(BOOL)count;
- (void)setHasItemsPartiallyPresentCount:(BOOL)count;
- (void)setHasRequestErrorCode:(BOOL)code;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDMMCSPutRequestInfo

- (void)dealloc
{
  [(AWDMMCSPutRequestInfo *)self setClientId:0];
  [(AWDMMCSPutRequestInfo *)self setCancelledErrorDomain:0];
  [(AWDMMCSPutRequestInfo *)self setRequestErrorDomain:0];
  [(AWDMMCSPutRequestInfo *)self setChunkingInfos:0];
  [(AWDMMCSPutRequestInfo *)self setAuthHttpInfos:0];
  [(AWDMMCSPutRequestInfo *)self setContainerHttpInfos:0];
  [(AWDMMCSPutRequestInfo *)self setCompleteHttpInfos:0];
  [(AWDMMCSPutRequestInfo *)self setCancelErrors:0];
  [(AWDMMCSPutRequestInfo *)self setErrors:0];
  [(AWDMMCSPutRequestInfo *)self setCkContainerId:0];
  v3.receiver = self;
  v3.super_class = AWDMMCSPutRequestInfo;
  [(AWDMMCSPutRequestInfo *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasCancelledErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRequestErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasItemCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasItemsAlreadyPresentCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasItemsPartiallyPresentCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasItemsNotPresentCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasChunksUploaded:(BOOL)uploaded
{
  if (uploaded)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addChunkingInfos:(id)infos
{
  chunkingInfos = self->_chunkingInfos;
  if (!chunkingInfos)
  {
    chunkingInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_chunkingInfos = chunkingInfos;
  }

  [(NSMutableArray *)chunkingInfos addObject:infos];
}

- (void)addAuthHttpInfos:(id)infos
{
  authHttpInfos = self->_authHttpInfos;
  if (!authHttpInfos)
  {
    authHttpInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_authHttpInfos = authHttpInfos;
  }

  [(NSMutableArray *)authHttpInfos addObject:infos];
}

- (void)addContainerHttpInfos:(id)infos
{
  containerHttpInfos = self->_containerHttpInfos;
  if (!containerHttpInfos)
  {
    containerHttpInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_containerHttpInfos = containerHttpInfos;
  }

  [(NSMutableArray *)containerHttpInfos addObject:infos];
}

- (void)addCompleteHttpInfos:(id)infos
{
  completeHttpInfos = self->_completeHttpInfos;
  if (!completeHttpInfos)
  {
    completeHttpInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_completeHttpInfos = completeHttpInfos;
  }

  [(NSMutableArray *)completeHttpInfos addObject:infos];
}

- (void)addCancelError:(id)error
{
  cancelErrors = self->_cancelErrors;
  if (!cancelErrors)
  {
    cancelErrors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_cancelErrors = cancelErrors;
  }

  [(NSMutableArray *)cancelErrors addObject:error];
}

- (void)addError:(id)error
{
  errors = self->_errors;
  if (!errors)
  {
    errors = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_errors = errors;
  }

  [(NSMutableArray *)errors addObject:error];
}

- (void)setHasAllItemsSuccessful:(BOOL)successful
{
  if (successful)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasItemCountSuccessful:(BOOL)successful
{
  if (successful)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAllItemsFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasItemCountFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSPutRequestInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSPutRequestInfo description](&v3, sel_description), -[AWDMMCSPutRequestInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v79 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timestamp), @"timestamp"}];
  }

  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_startTime), @"startTime"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_duration), @"duration"}];
  }

  cancelledErrorDomain = self->_cancelledErrorDomain;
  if (cancelledErrorDomain)
  {
    [dictionary setObject:cancelledErrorDomain forKey:@"cancelledErrorDomain"];
  }

  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cancelledErrorCode), @"cancelledErrorCode"}];
  }

  requestErrorDomain = self->_requestErrorDomain;
  if (requestErrorDomain)
  {
    [dictionary setObject:requestErrorDomain forKey:@"requestErrorDomain"];
  }

  v8 = self->_has;
  if ((v8 & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_requestErrorCode), @"requestErrorCode"}];
    v8 = self->_has;
    if ((v8 & 0x20) == 0)
    {
LABEL_17:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_86;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemCount), @"itemCount"}];
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_18:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_87;
  }

LABEL_86:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemsAlreadyPresentCount), @"itemsAlreadyPresentCount"}];
  v8 = self->_has;
  if ((v8 & 0x400) == 0)
  {
LABEL_19:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_87:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemsPartiallyPresentCount), @"itemsPartiallyPresentCount"}];
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_20:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_88:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemsNotPresentCount), @"itemsNotPresentCount"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_21:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_chunksUploaded), @"chunksUploaded"}];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_chunkingInfos count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_chunkingInfos, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    chunkingInfos = self->_chunkingInfos;
    v11 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v70;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v70 != v13)
          {
            objc_enumerationMutation(chunkingInfos);
          }

          [v9 addObject:{objc_msgSend(*(*(&v69 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v12 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"chunkingInfos"];
  }

  if ([(NSMutableArray *)self->_authHttpInfos count])
  {
    v15 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_authHttpInfos, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    authHttpInfos = self->_authHttpInfos;
    v17 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v66;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(authHttpInfos);
          }

          [v15 addObject:{objc_msgSend(*(*(&v65 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v18 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"authHttpInfos"];
  }

  if ([(NSMutableArray *)self->_containerHttpInfos count])
  {
    v21 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_containerHttpInfos, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    containerHttpInfos = self->_containerHttpInfos;
    v23 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v62;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(containerHttpInfos);
          }

          [v21 addObject:{objc_msgSend(*(*(&v61 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v24 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"containerHttpInfos"];
  }

  if ([(NSMutableArray *)self->_completeHttpInfos count])
  {
    v27 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_completeHttpInfos, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    completeHttpInfos = self->_completeHttpInfos;
    v29 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v57 objects:v75 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(completeHttpInfos);
          }

          [v27 addObject:{objc_msgSend(*(*(&v57 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v30 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v57 objects:v75 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"completeHttpInfos"];
  }

  if ([(NSMutableArray *)self->_cancelErrors count])
  {
    v33 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_cancelErrors, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    cancelErrors = self->_cancelErrors;
    v35 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v53 objects:v74 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v54;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v54 != v37)
          {
            objc_enumerationMutation(cancelErrors);
          }

          [v33 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v36 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v53 objects:v74 count:16];
      }

      while (v36);
    }

    [dictionary setObject:v33 forKey:@"cancelError"];
  }

  if ([(NSMutableArray *)self->_errors count])
  {
    v39 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_errors, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    errors = self->_errors;
    v41 = [(NSMutableArray *)errors countByEnumeratingWithState:&v49 objects:v73 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v50;
      do
      {
        for (ii = 0; ii != v42; ++ii)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(errors);
          }

          [v39 addObject:{objc_msgSend(*(*(&v49 + 1) + 8 * ii), "dictionaryRepresentation")}];
        }

        v42 = [(NSMutableArray *)errors countByEnumeratingWithState:&v49 objects:v73 count:16];
      }

      while (v42);
    }

    [dictionary setObject:v39 forKey:@"error"];
  }

  v45 = self->_has;
  if ((v45 & 0x2000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allItemsSuccessful), @"allItemsSuccessful"}];
    v45 = self->_has;
    if ((v45 & 0x80) == 0)
    {
LABEL_78:
      if ((v45 & 0x1000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_92;
    }
  }

  else if ((v45 & 0x80) == 0)
  {
    goto LABEL_78;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemCountSuccessful), @"itemCountSuccessful"}];
  v45 = self->_has;
  if ((v45 & 0x1000) == 0)
  {
LABEL_79:
    if ((v45 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_92:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allItemsFailed), @"allItemsFailed"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_80:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemCountFailed), @"itemCountFailed"}];
  }

LABEL_81:
  ckContainerId = self->_ckContainerId;
  if (ckContainerId)
  {
    [dictionary setObject:ckContainerId forKey:@"ckContainerId"];
  }

  v47 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v88 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startTime = self->_startTime;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteInt64Field();
  }

  if (self->_cancelledErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    cancelledErrorCode = self->_cancelledErrorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_requestErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 0x800) != 0)
  {
    requestErrorCode = self->_requestErrorCode;
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
    if ((v9 & 0x20) == 0)
    {
LABEL_17:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_74;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  itemCount = self->_itemCount;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_18:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_75;
  }

LABEL_74:
  itemsAlreadyPresentCount = self->_itemsAlreadyPresentCount;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_76;
  }

LABEL_75:
  itemsPartiallyPresentCount = self->_itemsPartiallyPresentCount;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_20:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_76:
  itemsNotPresentCount = self->_itemsNotPresentCount;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_21:
    chunksUploaded = self->_chunksUploaded;
    PBDataWriterWriteInt32Field();
  }

LABEL_22:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  chunkingInfos = self->_chunkingInfos;
  v12 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v79;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v79 != v14)
        {
          objc_enumerationMutation(chunkingInfos);
        }

        v16 = *(*(&v78 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v13);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  authHttpInfos = self->_authHttpInfos;
  v18 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(authHttpInfos);
        }

        v22 = *(*(&v74 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v19);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  containerHttpInfos = self->_containerHttpInfos;
  v24 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v71;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v71 != v26)
        {
          objc_enumerationMutation(containerHttpInfos);
        }

        v28 = *(*(&v70 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v25);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  completeHttpInfos = self->_completeHttpInfos;
  v30 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v66 objects:v84 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(completeHttpInfos);
        }

        v34 = *(*(&v66 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v66 objects:v84 count:16];
    }

    while (v31);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  cancelErrors = self->_cancelErrors;
  v36 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v62 objects:v83 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(cancelErrors);
        }

        v40 = *(*(&v62 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v62 objects:v83 count:16];
    }

    while (v37);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  errors = self->_errors;
  v42 = [(NSMutableArray *)errors countByEnumeratingWithState:&v58 objects:v82 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(errors);
        }

        v46 = *(*(&v58 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v43 = [(NSMutableArray *)errors countByEnumeratingWithState:&v58 objects:v82 count:16];
    }

    while (v43);
  }

  v47 = self->_has;
  if ((v47 & 0x2000) != 0)
  {
    allItemsSuccessful = self->_allItemsSuccessful;
    PBDataWriterWriteBOOLField();
    v47 = self->_has;
    if ((v47 & 0x80) == 0)
    {
LABEL_66:
      if ((v47 & 0x1000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_80;
    }
  }

  else if ((v47 & 0x80) == 0)
  {
    goto LABEL_66;
  }

  itemCountSuccessful = self->_itemCountSuccessful;
  PBDataWriterWriteUint32Field();
  v47 = self->_has;
  if ((v47 & 0x1000) == 0)
  {
LABEL_67:
    if ((v47 & 0x40) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_80:
  allItemsFailed = self->_allItemsFailed;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_68:
    itemCountFailed = self->_itemCountFailed;
    PBDataWriterWriteUint32Field();
  }

LABEL_69:
  if (self->_ckContainerId)
  {
    PBDataWriterWriteStringField();
  }

  v49 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 82) |= 4u;
  }

  if (self->_clientId)
  {
    [to setClientId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_startTime;
    *(to + 82) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_duration;
    *(to + 82) |= 1u;
  }

  if (self->_cancelledErrorDomain)
  {
    [to setCancelledErrorDomain:?];
  }

  if ((*&self->_has & 8) != 0)
  {
    *(to + 12) = self->_cancelledErrorCode;
    *(to + 82) |= 8u;
  }

  if (self->_requestErrorDomain)
  {
    [to setRequestErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(to + 36) = self->_requestErrorCode;
    *(to + 82) |= 0x800u;
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_17:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  *(to + 30) = self->_itemCount;
  *(to + 82) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 33) = self->_itemsAlreadyPresentCount;
  *(to + 82) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_59:
    *(to + 34) = self->_itemsNotPresentCount;
    *(to + 82) |= 0x200u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_58:
  *(to + 35) = self->_itemsPartiallyPresentCount;
  *(to + 82) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_59;
  }

LABEL_20:
  if ((v6 & 0x10) != 0)
  {
LABEL_21:
    *(to + 18) = self->_chunksUploaded;
    *(to + 82) |= 0x10u;
  }

LABEL_22:
  if ([(AWDMMCSPutRequestInfo *)self chunkingInfosCount])
  {
    [to clearChunkingInfos];
    chunkingInfosCount = [(AWDMMCSPutRequestInfo *)self chunkingInfosCount];
    if (chunkingInfosCount)
    {
      v8 = chunkingInfosCount;
      for (i = 0; i != v8; ++i)
      {
        [to addChunkingInfos:{-[AWDMMCSPutRequestInfo chunkingInfosAtIndex:](self, "chunkingInfosAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMMCSPutRequestInfo *)self authHttpInfosCount])
  {
    [to clearAuthHttpInfos];
    authHttpInfosCount = [(AWDMMCSPutRequestInfo *)self authHttpInfosCount];
    if (authHttpInfosCount)
    {
      v11 = authHttpInfosCount;
      for (j = 0; j != v11; ++j)
      {
        [to addAuthHttpInfos:{-[AWDMMCSPutRequestInfo authHttpInfosAtIndex:](self, "authHttpInfosAtIndex:", j)}];
      }
    }
  }

  if ([(AWDMMCSPutRequestInfo *)self containerHttpInfosCount])
  {
    [to clearContainerHttpInfos];
    containerHttpInfosCount = [(AWDMMCSPutRequestInfo *)self containerHttpInfosCount];
    if (containerHttpInfosCount)
    {
      v14 = containerHttpInfosCount;
      for (k = 0; k != v14; ++k)
      {
        [to addContainerHttpInfos:{-[AWDMMCSPutRequestInfo containerHttpInfosAtIndex:](self, "containerHttpInfosAtIndex:", k)}];
      }
    }
  }

  if ([(AWDMMCSPutRequestInfo *)self completeHttpInfosCount])
  {
    [to clearCompleteHttpInfos];
    completeHttpInfosCount = [(AWDMMCSPutRequestInfo *)self completeHttpInfosCount];
    if (completeHttpInfosCount)
    {
      v17 = completeHttpInfosCount;
      for (m = 0; m != v17; ++m)
      {
        [to addCompleteHttpInfos:{-[AWDMMCSPutRequestInfo completeHttpInfosAtIndex:](self, "completeHttpInfosAtIndex:", m)}];
      }
    }
  }

  if ([(AWDMMCSPutRequestInfo *)self cancelErrorsCount])
  {
    [to clearCancelErrors];
    cancelErrorsCount = [(AWDMMCSPutRequestInfo *)self cancelErrorsCount];
    if (cancelErrorsCount)
    {
      v20 = cancelErrorsCount;
      for (n = 0; n != v20; ++n)
      {
        [to addCancelError:{-[AWDMMCSPutRequestInfo cancelErrorAtIndex:](self, "cancelErrorAtIndex:", n)}];
      }
    }
  }

  if ([(AWDMMCSPutRequestInfo *)self errorsCount])
  {
    [to clearErrors];
    errorsCount = [(AWDMMCSPutRequestInfo *)self errorsCount];
    if (errorsCount)
    {
      v23 = errorsCount;
      for (ii = 0; ii != v23; ++ii)
      {
        [to addError:{-[AWDMMCSPutRequestInfo errorAtIndex:](self, "errorAtIndex:", ii)}];
      }
    }
  }

  v25 = self->_has;
  if ((v25 & 0x2000) != 0)
  {
    *(to + 161) = self->_allItemsSuccessful;
    *(to + 82) |= 0x2000u;
    v25 = self->_has;
    if ((v25 & 0x80) == 0)
    {
LABEL_48:
      if ((v25 & 0x1000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_63;
    }
  }

  else if ((v25 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  *(to + 32) = self->_itemCountSuccessful;
  *(to + 82) |= 0x80u;
  v25 = self->_has;
  if ((v25 & 0x1000) == 0)
  {
LABEL_49:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_63:
  *(to + 160) = self->_allItemsFailed;
  *(to + 82) |= 0x1000u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_50:
    *(to + 31) = self->_itemCountFailed;
    *(to + 82) |= 0x40u;
  }

LABEL_51:
  if (self->_ckContainerId)
  {

    [to setCkContainerId:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v78 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 164) |= 4u;
  }

  *(v6 + 88) = [(NSString *)self->_clientId copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_startTime;
    *(v6 + 164) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_duration;
    *(v6 + 164) |= 1u;
  }

  *(v6 + 56) = [(NSString *)self->_cancelledErrorDomain copyWithZone:zone];
  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 48) = self->_cancelledErrorCode;
    *(v6 + 164) |= 8u;
  }

  *(v6 + 152) = [(NSString *)self->_requestErrorDomain copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x800) != 0)
  {
    *(v6 + 144) = self->_requestErrorCode;
    *(v6 + 164) |= 0x800u;
    v8 = self->_has;
    if ((v8 & 0x20) == 0)
    {
LABEL_11:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_66;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 120) = self->_itemCount;
  *(v6 + 164) |= 0x20u;
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_12:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 132) = self->_itemsAlreadyPresentCount;
  *(v6 + 164) |= 0x100u;
  v8 = self->_has;
  if ((v8 & 0x400) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 140) = self->_itemsPartiallyPresentCount;
  *(v6 + 164) |= 0x400u;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_68:
  *(v6 + 136) = self->_itemsNotPresentCount;
  *(v6 + 164) |= 0x200u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    *(v6 + 72) = self->_chunksUploaded;
    *(v6 + 164) |= 0x10u;
  }

LABEL_16:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  chunkingInfos = self->_chunkingInfos;
  v10 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v69;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v69 != v12)
        {
          objc_enumerationMutation(chunkingInfos);
        }

        v14 = [*(*(&v68 + 1) + 8 * i) copyWithZone:zone];
        [v6 addChunkingInfos:v14];
      }

      v11 = [(NSMutableArray *)chunkingInfos countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v11);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  authHttpInfos = self->_authHttpInfos;
  v16 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v65;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(authHttpInfos);
        }

        v20 = [*(*(&v64 + 1) + 8 * j) copyWithZone:zone];
        [v6 addAuthHttpInfos:v20];
      }

      v17 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v17);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  containerHttpInfos = self->_containerHttpInfos;
  v22 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v61;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v61 != v24)
        {
          objc_enumerationMutation(containerHttpInfos);
        }

        v26 = [*(*(&v60 + 1) + 8 * k) copyWithZone:zone];
        [v6 addContainerHttpInfos:v26];
      }

      v23 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v60 objects:v75 count:16];
    }

    while (v23);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  completeHttpInfos = self->_completeHttpInfos;
  v28 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v57;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v57 != v30)
        {
          objc_enumerationMutation(completeHttpInfos);
        }

        v32 = [*(*(&v56 + 1) + 8 * m) copyWithZone:zone];
        [v6 addCompleteHttpInfos:v32];
      }

      v29 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v29);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  cancelErrors = self->_cancelErrors;
  v34 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v53;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(cancelErrors);
        }

        v38 = [*(*(&v52 + 1) + 8 * n) copyWithZone:zone];
        [v6 addCancelError:v38];
      }

      v35 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v35);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  errors = self->_errors;
  v40 = [(NSMutableArray *)errors countByEnumeratingWithState:&v48 objects:v72 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v49;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(errors);
        }

        v44 = [*(*(&v48 + 1) + 8 * ii) copyWithZone:zone];
        [v6 addError:v44];
      }

      v41 = [(NSMutableArray *)errors countByEnumeratingWithState:&v48 objects:v72 count:16];
    }

    while (v41);
  }

  v45 = self->_has;
  if ((v45 & 0x2000) != 0)
  {
    *(v6 + 161) = self->_allItemsSuccessful;
    *(v6 + 164) |= 0x2000u;
    v45 = self->_has;
    if ((v45 & 0x80) == 0)
    {
LABEL_60:
      if ((v45 & 0x1000) == 0)
      {
        goto LABEL_61;
      }

LABEL_72:
      *(v6 + 160) = self->_allItemsFailed;
      *(v6 + 164) |= 0x1000u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if ((v45 & 0x80) == 0)
  {
    goto LABEL_60;
  }

  *(v6 + 128) = self->_itemCountSuccessful;
  *(v6 + 164) |= 0x80u;
  v45 = self->_has;
  if ((v45 & 0x1000) != 0)
  {
    goto LABEL_72;
  }

LABEL_61:
  if ((v45 & 0x40) != 0)
  {
LABEL_62:
    *(v6 + 124) = self->_itemCountFailed;
    *(v6 + 164) |= 0x40u;
  }

LABEL_63:

  *(v6 + 80) = [(NSString *)self->_ckContainerId copyWithZone:zone];
  v46 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 82);
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_100;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_100;
    }

    clientId = self->_clientId;
    if (clientId | *(equal + 11))
    {
      v5 = [(NSString *)clientId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 82);
    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_startTime != *(equal + 2))
      {
        goto LABEL_100;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_100;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_100;
      }
    }

    else if (v9)
    {
      goto LABEL_100;
    }

    cancelledErrorDomain = self->_cancelledErrorDomain;
    if (cancelledErrorDomain | *(equal + 7))
    {
      v5 = [(NSString *)cancelledErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v11 = *(equal + 82);
    if ((has & 8) != 0)
    {
      if ((v11 & 8) == 0 || self->_cancelledErrorCode != *(equal + 12))
      {
        goto LABEL_100;
      }
    }

    else if ((v11 & 8) != 0)
    {
      goto LABEL_100;
    }

    requestErrorDomain = self->_requestErrorDomain;
    if (requestErrorDomain | *(equal + 19))
    {
      v5 = [(NSString *)requestErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v13 = *(equal + 82);
    if ((has & 0x800) != 0)
    {
      if ((*(equal + 82) & 0x800) == 0 || self->_requestErrorCode != *(equal + 36))
      {
        goto LABEL_100;
      }
    }

    else if ((*(equal + 82) & 0x800) != 0)
    {
      goto LABEL_100;
    }

    if ((has & 0x20) != 0)
    {
      if ((v13 & 0x20) == 0 || self->_itemCount != *(equal + 30))
      {
        goto LABEL_100;
      }
    }

    else if ((v13 & 0x20) != 0)
    {
      goto LABEL_100;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(equal + 82) & 0x100) == 0 || self->_itemsAlreadyPresentCount != *(equal + 33))
      {
        goto LABEL_100;
      }
    }

    else if ((*(equal + 82) & 0x100) != 0)
    {
      goto LABEL_100;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(equal + 82) & 0x400) == 0 || self->_itemsPartiallyPresentCount != *(equal + 35))
      {
        goto LABEL_100;
      }
    }

    else if ((*(equal + 82) & 0x400) != 0)
    {
      goto LABEL_100;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(equal + 82) & 0x200) == 0 || self->_itemsNotPresentCount != *(equal + 34))
      {
        goto LABEL_100;
      }
    }

    else if ((*(equal + 82) & 0x200) != 0)
    {
      goto LABEL_100;
    }

    if ((has & 0x10) != 0)
    {
      if ((v13 & 0x10) == 0 || self->_chunksUploaded != *(equal + 18))
      {
        goto LABEL_100;
      }
    }

    else if ((v13 & 0x10) != 0)
    {
      goto LABEL_100;
    }

    chunkingInfos = self->_chunkingInfos;
    if (!(chunkingInfos | *(equal + 8)) || (v5 = [(NSMutableArray *)chunkingInfos isEqual:?]) != 0)
    {
      authHttpInfos = self->_authHttpInfos;
      if (!(authHttpInfos | *(equal + 4)) || (v5 = [(NSMutableArray *)authHttpInfos isEqual:?]) != 0)
      {
        containerHttpInfos = self->_containerHttpInfos;
        if (!(containerHttpInfos | *(equal + 13)) || (v5 = [(NSMutableArray *)containerHttpInfos isEqual:?]) != 0)
        {
          completeHttpInfos = self->_completeHttpInfos;
          if (!(completeHttpInfos | *(equal + 12)) || (v5 = [(NSMutableArray *)completeHttpInfos isEqual:?]) != 0)
          {
            cancelErrors = self->_cancelErrors;
            if (!(cancelErrors | *(equal + 5)) || (v5 = [(NSMutableArray *)cancelErrors isEqual:?]) != 0)
            {
              errors = self->_errors;
              if (!(errors | *(equal + 14)) || (v5 = [(NSMutableArray *)errors isEqual:?]) != 0)
              {
                v20 = self->_has;
                v21 = *(equal + 82);
                if ((v20 & 0x2000) != 0)
                {
                  if ((*(equal + 82) & 0x2000) == 0)
                  {
                    goto LABEL_100;
                  }

                  v22 = *(equal + 161);
                  if (self->_allItemsSuccessful)
                  {
                    if ((*(equal + 161) & 1) == 0)
                    {
                      goto LABEL_100;
                    }
                  }

                  else if (*(equal + 161))
                  {
                    goto LABEL_100;
                  }
                }

                else if ((*(equal + 82) & 0x2000) != 0)
                {
                  goto LABEL_100;
                }

                if ((v20 & 0x80) != 0)
                {
                  if ((v21 & 0x80) == 0 || self->_itemCountSuccessful != *(equal + 32))
                  {
                    goto LABEL_100;
                  }
                }

                else if ((v21 & 0x80) != 0)
                {
                  goto LABEL_100;
                }

                if ((*&self->_has & 0x1000) != 0)
                {
                  if ((*(equal + 82) & 0x1000) != 0)
                  {
                    v23 = *(equal + 160);
                    if (self->_allItemsFailed)
                    {
                      if ((*(equal + 160) & 1) == 0)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_86;
                    }

                    if ((*(equal + 160) & 1) == 0)
                    {
LABEL_86:
                      if ((v20 & 0x40) != 0)
                      {
                        if ((v21 & 0x40) == 0 || self->_itemCountFailed != *(equal + 31))
                        {
                          goto LABEL_100;
                        }
                      }

                      else if ((v21 & 0x40) != 0)
                      {
                        goto LABEL_100;
                      }

                      ckContainerId = self->_ckContainerId;
                      if (ckContainerId | *(equal + 10))
                      {

                        LOBYTE(v5) = [(NSString *)ckContainerId isEqual:?];
                      }

                      else
                      {
                        LOBYTE(v5) = 1;
                      }

                      return v5;
                    }
                  }
                }

                else if ((*(equal + 82) & 0x1000) == 0)
                {
                  goto LABEL_86;
                }

LABEL_100:
                LOBYTE(v5) = 0;
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v29 = 2654435761 * self->_timestamp;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(NSString *)self->_clientId hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v27 = 2654435761 * self->_startTime;
    if (has)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0;
    if (has)
    {
LABEL_6:
      v26 = 2654435761 * self->_duration;
      goto LABEL_9;
    }
  }

  v26 = 0;
LABEL_9:
  v25 = [(NSString *)self->_cancelledErrorDomain hash];
  if ((*&self->_has & 8) != 0)
  {
    v24 = 2654435761 * self->_cancelledErrorCode;
  }

  else
  {
    v24 = 0;
  }

  v23 = [(NSString *)self->_requestErrorDomain hash];
  v4 = self->_has;
  if ((v4 & 0x800) != 0)
  {
    v22 = 2654435761 * self->_requestErrorCode;
    if ((v4 & 0x20) != 0)
    {
LABEL_14:
      v21 = 2654435761 * self->_itemCount;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_14;
    }
  }

  v21 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v20 = 2654435761 * self->_itemsAlreadyPresentCount;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v20 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    v19 = 2654435761 * self->_itemsPartiallyPresentCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v5 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_22:
  v19 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v5 = 2654435761 * self->_itemsNotPresentCount;
  if ((v4 & 0x10) != 0)
  {
LABEL_18:
    v6 = 2654435761 * self->_chunksUploaded;
    goto LABEL_25;
  }

LABEL_24:
  v6 = 0;
LABEL_25:
  v7 = [(NSMutableArray *)self->_chunkingInfos hash];
  v8 = [(NSMutableArray *)self->_authHttpInfos hash];
  v9 = [(NSMutableArray *)self->_containerHttpInfos hash];
  v10 = [(NSMutableArray *)self->_completeHttpInfos hash];
  v11 = [(NSMutableArray *)self->_cancelErrors hash];
  v12 = [(NSMutableArray *)self->_errors hash];
  v13 = self->_has;
  if ((v13 & 0x2000) != 0)
  {
    v14 = 2654435761 * self->_allItemsSuccessful;
    if ((v13 & 0x80) != 0)
    {
LABEL_27:
      v15 = 2654435761 * self->_itemCountSuccessful;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      v16 = 0;
      if ((v13 & 0x40) != 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      v17 = 0;
      return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_ckContainerId hash];
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  v15 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v16 = 2654435761 * self->_allItemsFailed;
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  v17 = 2654435761 * self->_itemCountFailed;
  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_ckContainerId hash];
}

- (void)mergeFrom:(id)from
{
  v69 = *MEMORY[0x29EDCA608];
  if ((*(from + 82) & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
  }

  if (*(from + 11))
  {
    [(AWDMMCSPutRequestInfo *)self setClientId:?];
  }

  v5 = *(from + 82);
  if ((v5 & 2) != 0)
  {
    self->_startTime = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 82);
  }

  if (v5)
  {
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 7))
  {
    [(AWDMMCSPutRequestInfo *)self setCancelledErrorDomain:?];
  }

  if ((*(from + 82) & 8) != 0)
  {
    self->_cancelledErrorCode = *(from + 12);
    *&self->_has |= 8u;
  }

  if (*(from + 19))
  {
    [(AWDMMCSPutRequestInfo *)self setRequestErrorDomain:?];
  }

  v6 = *(from + 82);
  if ((v6 & 0x800) != 0)
  {
    self->_requestErrorCode = *(from + 36);
    *&self->_has |= 0x800u;
    v6 = *(from + 82);
    if ((v6 & 0x20) == 0)
    {
LABEL_17:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_74;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  self->_itemCount = *(from + 30);
  *&self->_has |= 0x20u;
  v6 = *(from + 82);
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_itemsAlreadyPresentCount = *(from + 33);
  *&self->_has |= 0x100u;
  v6 = *(from + 82);
  if ((v6 & 0x400) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_itemsPartiallyPresentCount = *(from + 35);
  *&self->_has |= 0x400u;
  v6 = *(from + 82);
  if ((v6 & 0x200) == 0)
  {
LABEL_20:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_76:
  self->_itemsNotPresentCount = *(from + 34);
  *&self->_has |= 0x200u;
  if ((*(from + 82) & 0x10) != 0)
  {
LABEL_21:
    self->_chunksUploaded = *(from + 18);
    *&self->_has |= 0x10u;
  }

LABEL_22:
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = *(from + 8);
  v8 = [v7 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDMMCSPutRequestInfo *)self addChunkingInfos:*(*(&v59 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v9);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = *(from + 4);
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v56;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDMMCSPutRequestInfo *)self addAuthHttpInfos:*(*(&v55 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v14);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = *(from + 13);
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v52;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AWDMMCSPutRequestInfo *)self addContainerHttpInfos:*(*(&v51 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v19);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = *(from + 12);
  v23 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(AWDMMCSPutRequestInfo *)self addCompleteHttpInfos:*(*(&v47 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v47 objects:v65 count:16];
    }

    while (v24);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = *(from + 5);
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(AWDMMCSPutRequestInfo *)self addCancelError:*(*(&v43 + 1) + 8 * n)];
      }

      v29 = [v27 countByEnumeratingWithState:&v43 objects:v64 count:16];
    }

    while (v29);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = *(from + 14);
  v33 = [v32 countByEnumeratingWithState:&v39 objects:v63 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v40;
    do
    {
      for (ii = 0; ii != v34; ++ii)
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(AWDMMCSPutRequestInfo *)self addError:*(*(&v39 + 1) + 8 * ii)];
      }

      v34 = [v32 countByEnumeratingWithState:&v39 objects:v63 count:16];
    }

    while (v34);
  }

  v37 = *(from + 82);
  if ((v37 & 0x2000) != 0)
  {
    self->_allItemsSuccessful = *(from + 161);
    *&self->_has |= 0x2000u;
    v37 = *(from + 82);
    if ((v37 & 0x80) == 0)
    {
LABEL_66:
      if ((v37 & 0x1000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_80;
    }
  }

  else if ((v37 & 0x80) == 0)
  {
    goto LABEL_66;
  }

  self->_itemCountSuccessful = *(from + 32);
  *&self->_has |= 0x80u;
  v37 = *(from + 82);
  if ((v37 & 0x1000) == 0)
  {
LABEL_67:
    if ((v37 & 0x40) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_80:
  self->_allItemsFailed = *(from + 160);
  *&self->_has |= 0x1000u;
  if ((*(from + 82) & 0x40) != 0)
  {
LABEL_68:
    self->_itemCountFailed = *(from + 31);
    *&self->_has |= 0x40u;
  }

LABEL_69:
  if (*(from + 10))
  {
    [(AWDMMCSPutRequestInfo *)self setCkContainerId:?];
  }

  v38 = *MEMORY[0x29EDCA608];
}

@end