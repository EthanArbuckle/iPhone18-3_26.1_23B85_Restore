@interface AWDMMCSGetRequestInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAuthHttpInfos:(id)infos;
- (void)addCancelError:(id)error;
- (void)addCompleteHttpInfos:(id)infos;
- (void)addContainerHttpInfos:(id)infos;
- (void)addError:(id)error;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAllItemsFailed:(BOOL)failed;
- (void)setHasAllItemsSuccessful:(BOOL)successful;
- (void)setHasCancelledErrorCode:(BOOL)code;
- (void)setHasItemCount:(BOOL)count;
- (void)setHasItemCountFailed:(BOOL)failed;
- (void)setHasItemCountSuccessful:(BOOL)successful;
- (void)setHasItemsNeedingChunks:(BOOL)chunks;
- (void)setHasLocalBytes:(BOOL)bytes;
- (void)setHasRequestErrorCode:(BOOL)code;
- (void)setHasResumedBytes:(BOOL)bytes;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDMMCSGetRequestInfo

- (void)dealloc
{
  [(AWDMMCSGetRequestInfo *)self setClientId:0];
  [(AWDMMCSGetRequestInfo *)self setCancelledErrorDomain:0];
  [(AWDMMCSGetRequestInfo *)self setRequestErrorDomain:0];
  [(AWDMMCSGetRequestInfo *)self setAuthHttpInfos:0];
  [(AWDMMCSGetRequestInfo *)self setContainerHttpInfos:0];
  [(AWDMMCSGetRequestInfo *)self setCompleteHttpInfos:0];
  [(AWDMMCSGetRequestInfo *)self setCancelErrors:0];
  [(AWDMMCSGetRequestInfo *)self setErrors:0];
  [(AWDMMCSGetRequestInfo *)self setCkContainerId:0];
  v3.receiver = self;
  v3.super_class = AWDMMCSGetRequestInfo;
  [(AWDMMCSGetRequestInfo *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCancelledErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRequestErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasItemCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasItemsNeedingChunks:(BOOL)chunks
{
  if (chunks)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLocalBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasResumedBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
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
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasItemCountSuccessful:(BOOL)successful
{
  if (successful)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAllItemsFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasItemCountFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSGetRequestInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSGetRequestInfo description](&v3, sel_description), -[AWDMMCSGetRequestInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v68 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timestamp), @"timestamp"}];
  }

  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
  }

  has = self->_has;
  if ((has & 8) != 0)
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

  if ((*&self->_has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cancelledErrorCode), @"cancelledErrorCode"}];
  }

  requestErrorDomain = self->_requestErrorDomain;
  if (requestErrorDomain)
  {
    [dictionary setObject:requestErrorDomain forKey:@"requestErrorDomain"];
  }

  v8 = self->_has;
  if ((v8 & 0x400) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_requestErrorCode), @"requestErrorCode"}];
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_76;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemCount), @"itemCount"}];
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_18:
    if ((v8 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_77;
  }

LABEL_76:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_itemsNeedingChunks), @"itemsNeedingChunks"}];
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_19:
    if ((v8 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_77:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_localBytes), @"localBytes"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_resumedBytes), @"resumedBytes"}];
  }

LABEL_21:
  if ([(NSMutableArray *)self->_authHttpInfos count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_authHttpInfos, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    authHttpInfos = self->_authHttpInfos;
    v11 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v60;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(authHttpInfos);
          }

          [v9 addObject:{objc_msgSend(*(*(&v59 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v12 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"authHttpInfos"];
  }

  if ([(NSMutableArray *)self->_containerHttpInfos count])
  {
    v15 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_containerHttpInfos, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    containerHttpInfos = self->_containerHttpInfos;
    v17 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v56;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(containerHttpInfos);
          }

          [v15 addObject:{objc_msgSend(*(*(&v55 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v18 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"containerHttpInfos"];
  }

  if ([(NSMutableArray *)self->_completeHttpInfos count])
  {
    v21 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_completeHttpInfos, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    completeHttpInfos = self->_completeHttpInfos;
    v23 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(completeHttpInfos);
          }

          [v21 addObject:{objc_msgSend(*(*(&v51 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v24 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"completeHttpInfos"];
  }

  if ([(NSMutableArray *)self->_cancelErrors count])
  {
    v27 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_cancelErrors, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    cancelErrors = self->_cancelErrors;
    v29 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v47 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(cancelErrors);
          }

          [v27 addObject:{objc_msgSend(*(*(&v47 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v30 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v47 objects:v64 count:16];
      }

      while (v30);
    }

    [dictionary setObject:v27 forKey:@"cancelError"];
  }

  if ([(NSMutableArray *)self->_errors count])
  {
    v33 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_errors, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    errors = self->_errors;
    v35 = [(NSMutableArray *)errors countByEnumeratingWithState:&v43 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v44;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(errors);
          }

          [v33 addObject:{objc_msgSend(*(*(&v43 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v36 = [(NSMutableArray *)errors countByEnumeratingWithState:&v43 objects:v63 count:16];
      }

      while (v36);
    }

    [dictionary setObject:v33 forKey:@"error"];
  }

  v39 = self->_has;
  if ((v39 & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allItemsSuccessful), @"allItemsSuccessful"}];
    v39 = self->_has;
    if ((v39 & 0x100) == 0)
    {
LABEL_68:
      if ((v39 & 0x800) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_81;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_68;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemCountSuccessful), @"itemCountSuccessful"}];
  v39 = self->_has;
  if ((v39 & 0x800) == 0)
  {
LABEL_69:
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_81:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_allItemsFailed), @"allItemsFailed"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_70:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemCountFailed), @"itemCountFailed"}];
  }

LABEL_71:
  ckContainerId = self->_ckContainerId;
  if (ckContainerId)
  {
    [dictionary setObject:ckContainerId forKey:@"ckContainerId"];
  }

  v41 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v76 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteInt64Field();
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
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

  if ((*&self->_has & 0x20) != 0)
  {
    cancelledErrorCode = self->_cancelledErrorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_requestErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 0x400) != 0)
  {
    requestErrorCode = self->_requestErrorCode;
    PBDataWriterWriteInt32Field();
    v9 = self->_has;
    if ((v9 & 0x40) == 0)
    {
LABEL_17:
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    }
  }

  else if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  itemCount = self->_itemCount;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_18:
    if ((v9 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  itemsNeedingChunks = self->_itemsNeedingChunks;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((v9 & 2) == 0)
  {
LABEL_19:
    if ((v9 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_67:
  localBytes = self->_localBytes;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_20:
    resumedBytes = self->_resumedBytes;
    PBDataWriterWriteInt64Field();
  }

LABEL_21:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  authHttpInfos = self->_authHttpInfos;
  v12 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v68;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v14)
        {
          objc_enumerationMutation(authHttpInfos);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v13);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  containerHttpInfos = self->_containerHttpInfos;
  v18 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v64;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(containerHttpInfos);
        }

        v22 = *(*(&v63 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v19);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  completeHttpInfos = self->_completeHttpInfos;
  v24 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(completeHttpInfos);
        }

        v28 = *(*(&v59 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v25);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  cancelErrors = self->_cancelErrors;
  v30 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v56;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(cancelErrors);
        }

        v34 = *(*(&v55 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v31);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  errors = self->_errors;
  v36 = [(NSMutableArray *)errors countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v52;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v52 != v38)
        {
          objc_enumerationMutation(errors);
        }

        v40 = *(*(&v51 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)errors countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v37);
  }

  v41 = self->_has;
  if ((v41 & 0x1000) != 0)
  {
    allItemsSuccessful = self->_allItemsSuccessful;
    PBDataWriterWriteBOOLField();
    v41 = self->_has;
    if ((v41 & 0x100) == 0)
    {
LABEL_58:
      if ((v41 & 0x800) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_58;
  }

  itemCountSuccessful = self->_itemCountSuccessful;
  PBDataWriterWriteUint32Field();
  v41 = self->_has;
  if ((v41 & 0x800) == 0)
  {
LABEL_59:
    if ((v41 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_71:
  allItemsFailed = self->_allItemsFailed;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_60:
    itemCountFailed = self->_itemCountFailed;
    PBDataWriterWriteUint32Field();
  }

LABEL_61:
  if (self->_ckContainerId)
  {
    PBDataWriterWriteStringField();
  }

  v43 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 5) = self->_timestamp;
    *(to + 78) |= 0x10u;
  }

  if (self->_clientId)
  {
    [to setClientId:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 4) = self->_startTime;
    *(to + 78) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_duration;
    *(to + 78) |= 1u;
  }

  if (self->_cancelledErrorDomain)
  {
    [to setCancelledErrorDomain:?];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(to + 16) = self->_cancelledErrorCode;
    *(to + 78) |= 0x20u;
  }

  if (self->_requestErrorDomain)
  {
    [to setRequestErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    *(to + 34) = self->_requestErrorCode;
    *(to + 78) |= 0x400u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_17:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  *(to + 30) = self->_itemCount;
  *(to + 78) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_18:
    if ((v6 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_53:
    *(to + 2) = self->_localBytes;
    *(to + 78) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_52:
  *(to + 33) = self->_itemsNeedingChunks;
  *(to + 78) |= 0x200u;
  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    goto LABEL_53;
  }

LABEL_19:
  if ((v6 & 4) != 0)
  {
LABEL_20:
    *(to + 3) = self->_resumedBytes;
    *(to + 78) |= 4u;
  }

LABEL_21:
  if ([(AWDMMCSGetRequestInfo *)self authHttpInfosCount])
  {
    [to clearAuthHttpInfos];
    authHttpInfosCount = [(AWDMMCSGetRequestInfo *)self authHttpInfosCount];
    if (authHttpInfosCount)
    {
      v8 = authHttpInfosCount;
      for (i = 0; i != v8; ++i)
      {
        [to addAuthHttpInfos:{-[AWDMMCSGetRequestInfo authHttpInfosAtIndex:](self, "authHttpInfosAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMMCSGetRequestInfo *)self containerHttpInfosCount])
  {
    [to clearContainerHttpInfos];
    containerHttpInfosCount = [(AWDMMCSGetRequestInfo *)self containerHttpInfosCount];
    if (containerHttpInfosCount)
    {
      v11 = containerHttpInfosCount;
      for (j = 0; j != v11; ++j)
      {
        [to addContainerHttpInfos:{-[AWDMMCSGetRequestInfo containerHttpInfosAtIndex:](self, "containerHttpInfosAtIndex:", j)}];
      }
    }
  }

  if ([(AWDMMCSGetRequestInfo *)self completeHttpInfosCount])
  {
    [to clearCompleteHttpInfos];
    completeHttpInfosCount = [(AWDMMCSGetRequestInfo *)self completeHttpInfosCount];
    if (completeHttpInfosCount)
    {
      v14 = completeHttpInfosCount;
      for (k = 0; k != v14; ++k)
      {
        [to addCompleteHttpInfos:{-[AWDMMCSGetRequestInfo completeHttpInfosAtIndex:](self, "completeHttpInfosAtIndex:", k)}];
      }
    }
  }

  if ([(AWDMMCSGetRequestInfo *)self cancelErrorsCount])
  {
    [to clearCancelErrors];
    cancelErrorsCount = [(AWDMMCSGetRequestInfo *)self cancelErrorsCount];
    if (cancelErrorsCount)
    {
      v17 = cancelErrorsCount;
      for (m = 0; m != v17; ++m)
      {
        [to addCancelError:{-[AWDMMCSGetRequestInfo cancelErrorAtIndex:](self, "cancelErrorAtIndex:", m)}];
      }
    }
  }

  if ([(AWDMMCSGetRequestInfo *)self errorsCount])
  {
    [to clearErrors];
    errorsCount = [(AWDMMCSGetRequestInfo *)self errorsCount];
    if (errorsCount)
    {
      v20 = errorsCount;
      for (n = 0; n != v20; ++n)
      {
        [to addError:{-[AWDMMCSGetRequestInfo errorAtIndex:](self, "errorAtIndex:", n)}];
      }
    }
  }

  v22 = self->_has;
  if ((v22 & 0x1000) != 0)
  {
    *(to + 153) = self->_allItemsSuccessful;
    *(to + 78) |= 0x1000u;
    v22 = self->_has;
    if ((v22 & 0x100) == 0)
    {
LABEL_43:
      if ((v22 & 0x800) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_43;
  }

  *(to + 32) = self->_itemCountSuccessful;
  *(to + 78) |= 0x100u;
  v22 = self->_has;
  if ((v22 & 0x800) == 0)
  {
LABEL_44:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_57:
  *(to + 152) = self->_allItemsFailed;
  *(to + 78) |= 0x800u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_45:
    *(to + 31) = self->_itemCountFailed;
    *(to + 78) |= 0x80u;
  }

LABEL_46:
  if (self->_ckContainerId)
  {

    [to setCkContainerId:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v67 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 156) |= 0x10u;
  }

  *(v6 + 88) = [(NSString *)self->_clientId copyWithZone:zone];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_startTime;
    *(v6 + 156) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_duration;
    *(v6 + 156) |= 1u;
  }

  *(v6 + 72) = [(NSString *)self->_cancelledErrorDomain copyWithZone:zone];
  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 64) = self->_cancelledErrorCode;
    *(v6 + 156) |= 0x20u;
  }

  *(v6 + 144) = [(NSString *)self->_requestErrorDomain copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x400) != 0)
  {
    *(v6 + 136) = self->_requestErrorCode;
    *(v6 + 156) |= 0x400u;
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_58;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 120) = self->_itemCount;
  *(v6 + 156) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_12:
    if ((v8 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 132) = self->_itemsNeedingChunks;
  *(v6 + 156) |= 0x200u;
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_13:
    if ((v8 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_59:
  *(v6 + 16) = self->_localBytes;
  *(v6 + 156) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    *(v6 + 24) = self->_resumedBytes;
    *(v6 + 156) |= 4u;
  }

LABEL_15:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  authHttpInfos = self->_authHttpInfos;
  v10 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(authHttpInfos);
        }

        v14 = [*(*(&v58 + 1) + 8 * i) copyWithZone:zone];
        [v6 addAuthHttpInfos:v14];
      }

      v11 = [(NSMutableArray *)authHttpInfos countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v11);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  containerHttpInfos = self->_containerHttpInfos;
  v16 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(containerHttpInfos);
        }

        v20 = [*(*(&v54 + 1) + 8 * j) copyWithZone:zone];
        [v6 addContainerHttpInfos:v20];
      }

      v17 = [(NSMutableArray *)containerHttpInfos countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v17);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  completeHttpInfos = self->_completeHttpInfos;
  v22 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v51;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(completeHttpInfos);
        }

        v26 = [*(*(&v50 + 1) + 8 * k) copyWithZone:zone];
        [v6 addCompleteHttpInfos:v26];
      }

      v23 = [(NSMutableArray *)completeHttpInfos countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v23);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  cancelErrors = self->_cancelErrors;
  v28 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v47;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(cancelErrors);
        }

        v32 = [*(*(&v46 + 1) + 8 * m) copyWithZone:zone];
        [v6 addCancelError:v32];
      }

      v29 = [(NSMutableArray *)cancelErrors countByEnumeratingWithState:&v46 objects:v63 count:16];
    }

    while (v29);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  errors = self->_errors;
  v34 = [(NSMutableArray *)errors countByEnumeratingWithState:&v42 objects:v62 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v43;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(errors);
        }

        v38 = [*(*(&v42 + 1) + 8 * n) copyWithZone:zone];
        [v6 addError:v38];
      }

      v35 = [(NSMutableArray *)errors countByEnumeratingWithState:&v42 objects:v62 count:16];
    }

    while (v35);
  }

  v39 = self->_has;
  if ((v39 & 0x1000) != 0)
  {
    *(v6 + 153) = self->_allItemsSuccessful;
    *(v6 + 156) |= 0x1000u;
    v39 = self->_has;
    if ((v39 & 0x100) == 0)
    {
LABEL_52:
      if ((v39 & 0x800) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      *(v6 + 152) = self->_allItemsFailed;
      *(v6 + 156) |= 0x800u;
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_52;
  }

  *(v6 + 128) = self->_itemCountSuccessful;
  *(v6 + 156) |= 0x100u;
  v39 = self->_has;
  if ((v39 & 0x800) != 0)
  {
    goto LABEL_63;
  }

LABEL_53:
  if ((v39 & 0x80) != 0)
  {
LABEL_54:
    *(v6 + 124) = self->_itemCountFailed;
    *(v6 + 156) |= 0x80u;
  }

LABEL_55:

  *(v6 + 80) = [(NSString *)self->_ckContainerId copyWithZone:zone];
  v40 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 78);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timestamp != *(equal + 5))
      {
        goto LABEL_93;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_93;
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

    v9 = *(equal + 78);
    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_startTime != *(equal + 4))
      {
        goto LABEL_93;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_93;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_93;
      }
    }

    else if (v9)
    {
      goto LABEL_93;
    }

    cancelledErrorDomain = self->_cancelledErrorDomain;
    if (cancelledErrorDomain | *(equal + 9))
    {
      v5 = [(NSString *)cancelledErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v11 = *(equal + 78);
    if ((has & 0x20) != 0)
    {
      if ((v11 & 0x20) == 0 || self->_cancelledErrorCode != *(equal + 16))
      {
        goto LABEL_93;
      }
    }

    else if ((v11 & 0x20) != 0)
    {
      goto LABEL_93;
    }

    requestErrorDomain = self->_requestErrorDomain;
    if (requestErrorDomain | *(equal + 18))
    {
      v5 = [(NSString *)requestErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v13 = *(equal + 78);
    if ((has & 0x400) != 0)
    {
      if ((*(equal + 78) & 0x400) == 0 || self->_requestErrorCode != *(equal + 34))
      {
        goto LABEL_93;
      }
    }

    else if ((*(equal + 78) & 0x400) != 0)
    {
      goto LABEL_93;
    }

    if ((has & 0x40) != 0)
    {
      if ((v13 & 0x40) == 0 || self->_itemCount != *(equal + 30))
      {
        goto LABEL_93;
      }
    }

    else if ((v13 & 0x40) != 0)
    {
      goto LABEL_93;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(equal + 78) & 0x200) == 0 || self->_itemsNeedingChunks != *(equal + 33))
      {
        goto LABEL_93;
      }
    }

    else if ((*(equal + 78) & 0x200) != 0)
    {
      goto LABEL_93;
    }

    if ((has & 2) != 0)
    {
      if ((v13 & 2) == 0 || self->_localBytes != *(equal + 2))
      {
        goto LABEL_93;
      }
    }

    else if ((v13 & 2) != 0)
    {
      goto LABEL_93;
    }

    if ((has & 4) != 0)
    {
      if ((v13 & 4) == 0 || self->_resumedBytes != *(equal + 3))
      {
        goto LABEL_93;
      }
    }

    else if ((v13 & 4) != 0)
    {
      goto LABEL_93;
    }

    authHttpInfos = self->_authHttpInfos;
    if (!(authHttpInfos | *(equal + 6)) || (v5 = [(NSMutableArray *)authHttpInfos isEqual:?]) != 0)
    {
      containerHttpInfos = self->_containerHttpInfos;
      if (!(containerHttpInfos | *(equal + 13)) || (v5 = [(NSMutableArray *)containerHttpInfos isEqual:?]) != 0)
      {
        completeHttpInfos = self->_completeHttpInfos;
        if (!(completeHttpInfos | *(equal + 12)) || (v5 = [(NSMutableArray *)completeHttpInfos isEqual:?]) != 0)
        {
          cancelErrors = self->_cancelErrors;
          if (!(cancelErrors | *(equal + 7)) || (v5 = [(NSMutableArray *)cancelErrors isEqual:?]) != 0)
          {
            errors = self->_errors;
            if (!(errors | *(equal + 14)) || (v5 = [(NSMutableArray *)errors isEqual:?]) != 0)
            {
              v19 = self->_has;
              v20 = *(equal + 78);
              if ((v19 & 0x1000) != 0)
              {
                if ((*(equal + 78) & 0x1000) == 0)
                {
                  goto LABEL_93;
                }

                v21 = *(equal + 153);
                if (self->_allItemsSuccessful)
                {
                  if ((*(equal + 153) & 1) == 0)
                  {
                    goto LABEL_93;
                  }
                }

                else if (*(equal + 153))
                {
                  goto LABEL_93;
                }
              }

              else if ((*(equal + 78) & 0x1000) != 0)
              {
                goto LABEL_93;
              }

              if ((*&self->_has & 0x100) != 0)
              {
                if ((*(equal + 78) & 0x100) == 0 || self->_itemCountSuccessful != *(equal + 32))
                {
                  goto LABEL_93;
                }
              }

              else if ((*(equal + 78) & 0x100) != 0)
              {
                goto LABEL_93;
              }

              if ((*&self->_has & 0x800) != 0)
              {
                if ((*(equal + 78) & 0x800) != 0)
                {
                  v22 = *(equal + 152);
                  if (self->_allItemsFailed)
                  {
                    if ((*(equal + 152) & 1) == 0)
                    {
                      goto LABEL_93;
                    }

                    goto LABEL_79;
                  }

                  if ((*(equal + 152) & 1) == 0)
                  {
LABEL_79:
                    if ((v19 & 0x80) != 0)
                    {
                      if ((v20 & 0x80) == 0 || self->_itemCountFailed != *(equal + 31))
                      {
                        goto LABEL_93;
                      }
                    }

                    else if ((v20 & 0x80) != 0)
                    {
                      goto LABEL_93;
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

              else if ((*(equal + 78) & 0x800) == 0)
              {
                goto LABEL_79;
              }

LABEL_93:
              LOBYTE(v5) = 0;
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
  if ((*&self->_has & 0x10) != 0)
  {
    v27 = 2654435761 * self->_timestamp;
  }

  else
  {
    v27 = 0;
  }

  v26 = [(NSString *)self->_clientId hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v25 = 2654435761 * self->_startTime;
    if (has)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    if (has)
    {
LABEL_6:
      v24 = 2654435761 * self->_duration;
      goto LABEL_9;
    }
  }

  v24 = 0;
LABEL_9:
  v23 = [(NSString *)self->_cancelledErrorDomain hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v22 = 2654435761 * self->_cancelledErrorCode;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_requestErrorDomain hash];
  v4 = self->_has;
  if ((v4 & 0x400) != 0)
  {
    v20 = 2654435761 * self->_requestErrorCode;
    if ((v4 & 0x40) != 0)
    {
LABEL_14:
      v19 = 2654435761 * self->_itemCount;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_14;
    }
  }

  v19 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    v5 = 2654435761 * self->_itemsNeedingChunks;
    if ((v4 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v6 = 0;
    if ((v4 & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_20:
  v5 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v6 = 2654435761 * self->_localBytes;
  if ((v4 & 4) != 0)
  {
LABEL_17:
    v7 = 2654435761 * self->_resumedBytes;
    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
LABEL_23:
  v8 = [(NSMutableArray *)self->_authHttpInfos hash];
  v9 = [(NSMutableArray *)self->_containerHttpInfos hash];
  v10 = [(NSMutableArray *)self->_completeHttpInfos hash];
  v11 = [(NSMutableArray *)self->_cancelErrors hash];
  v12 = [(NSMutableArray *)self->_errors hash];
  v13 = self->_has;
  if ((v13 & 0x1000) != 0)
  {
    v14 = 2654435761 * self->_allItemsSuccessful;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_25:
      v15 = 2654435761 * self->_itemCountSuccessful;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      v16 = 0;
      if ((v13 & 0x80) != 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      v17 = 0;
      return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_ckContainerId hash];
    }
  }

  else
  {
    v14 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_25;
    }
  }

  v15 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v16 = 2654435761 * self->_allItemsFailed;
  if ((v13 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v17 = 2654435761 * self->_itemCountFailed;
  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_ckContainerId hash];
}

- (void)mergeFrom:(id)from
{
  v59 = *MEMORY[0x29EDCA608];
  if ((*(from + 78) & 0x10) != 0)
  {
    self->_timestamp = *(from + 5);
    *&self->_has |= 0x10u;
  }

  if (*(from + 11))
  {
    [(AWDMMCSGetRequestInfo *)self setClientId:?];
  }

  v5 = *(from + 78);
  if ((v5 & 8) != 0)
  {
    self->_startTime = *(from + 4);
    *&self->_has |= 8u;
    v5 = *(from + 78);
  }

  if (v5)
  {
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 9))
  {
    [(AWDMMCSGetRequestInfo *)self setCancelledErrorDomain:?];
  }

  if ((*(from + 78) & 0x20) != 0)
  {
    self->_cancelledErrorCode = *(from + 16);
    *&self->_has |= 0x20u;
  }

  if (*(from + 18))
  {
    [(AWDMMCSGetRequestInfo *)self setRequestErrorDomain:?];
  }

  v6 = *(from + 78);
  if ((v6 & 0x400) != 0)
  {
    self->_requestErrorCode = *(from + 34);
    *&self->_has |= 0x400u;
    v6 = *(from + 78);
    if ((v6 & 0x40) == 0)
    {
LABEL_17:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  self->_itemCount = *(from + 30);
  *&self->_has |= 0x40u;
  v6 = *(from + 78);
  if ((v6 & 0x200) == 0)
  {
LABEL_18:
    if ((v6 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_itemsNeedingChunks = *(from + 33);
  *&self->_has |= 0x200u;
  v6 = *(from + 78);
  if ((v6 & 2) == 0)
  {
LABEL_19:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_67:
  self->_localBytes = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 78) & 4) != 0)
  {
LABEL_20:
    self->_resumedBytes = *(from + 3);
    *&self->_has |= 4u;
  }

LABEL_21:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = *(from + 6);
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDMMCSGetRequestInfo *)self addAuthHttpInfos:*(*(&v50 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = *(from + 13);
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDMMCSGetRequestInfo *)self addContainerHttpInfos:*(*(&v46 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v14);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = *(from + 12);
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AWDMMCSGetRequestInfo *)self addCompleteHttpInfos:*(*(&v42 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v19);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = *(from + 7);
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(AWDMMCSGetRequestInfo *)self addCancelError:*(*(&v38 + 1) + 8 * m)];
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v55 count:16];
    }

    while (v24);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = *(from + 14);
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(AWDMMCSGetRequestInfo *)self addError:*(*(&v34 + 1) + 8 * n)];
      }

      v29 = [v27 countByEnumeratingWithState:&v34 objects:v54 count:16];
    }

    while (v29);
  }

  v32 = *(from + 78);
  if ((v32 & 0x1000) != 0)
  {
    self->_allItemsSuccessful = *(from + 153);
    *&self->_has |= 0x1000u;
    v32 = *(from + 78);
    if ((v32 & 0x100) == 0)
    {
LABEL_58:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_71;
    }
  }

  else if ((*(from + 78) & 0x100) == 0)
  {
    goto LABEL_58;
  }

  self->_itemCountSuccessful = *(from + 32);
  *&self->_has |= 0x100u;
  v32 = *(from + 78);
  if ((v32 & 0x800) == 0)
  {
LABEL_59:
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_71:
  self->_allItemsFailed = *(from + 152);
  *&self->_has |= 0x800u;
  if ((*(from + 78) & 0x80) != 0)
  {
LABEL_60:
    self->_itemCountFailed = *(from + 31);
    *&self->_has |= 0x80u;
  }

LABEL_61:
  if (*(from + 10))
  {
    [(AWDMMCSGetRequestInfo *)self setCkContainerId:?];
  }

  v33 = *MEMORY[0x29EDCA608];
}

@end