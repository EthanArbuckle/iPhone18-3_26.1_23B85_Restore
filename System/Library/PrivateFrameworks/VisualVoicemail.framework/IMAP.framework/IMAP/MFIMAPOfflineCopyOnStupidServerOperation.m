@interface MFIMAPOfflineCopyOnStupidServerOperation
- (BOOL)getMessageId:(id *)a3 andInternalDate:(id *)a4 forDestinationUid:(unsigned int)a5;
- (id)_deserializeOpSpecificValuesFromData:(id)a3 cursor:(unint64_t *)a4;
- (unsigned)approximateSize;
- (void)dealloc;
- (void)expungeTemporaryUid:(unsigned int)a3;
- (void)serializeIntoData:(id)a3;
- (void)setMessageId:(id)a3 andInternalDate:(id)a4 forMessageWithSourceUid:(unsigned int)a5;
@end

@implementation MFIMAPOfflineCopyOnStupidServerOperation

- (void)serializeIntoData:(id)a3
{
  v5.receiver = self;
  v5.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  v4 = a3;
  [(MFIMAPOperation *)&v5 serializeIntoData:v4];
  _serializeStringArrayToData(self->messageIds, v4);
  _serializeUidArrayToData(self->internalDates, v4);
}

- (id)_deserializeOpSpecificValuesFromData:(id)a3 cursor:(unint64_t *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  v7 = [(MFIMAPOperation *)&v21 _deserializeOpSpecificValuesFromData:v6 cursor:a4];
  if (v7)
  {
    v8 = _createStringArrayFromData(v6, a4);
    v9 = [v8 count];
    if (v9)
    {
      *(v7 + 12) = CFArrayCreateMutable(0, v9, MEMORY[0x277CBF128]);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            CFArrayAppendValue(*(v7 + 12), *(*(&v17 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v12);
      }
    }

    *(v7 + 13) = _createUidArrayFromData(v6, a4);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  messageIds = self->messageIds;
  if (messageIds)
  {
    CFRelease(messageIds);
  }

  internalDates = self->internalDates;
  if (internalDates)
  {
    CFRelease(internalDates);
  }

  v5.receiver = self;
  v5.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  [(MFIMAPOperation *)&v5 dealloc];
}

- (BOOL)getMessageId:(id *)a3 andInternalDate:(id *)a4 forDestinationUid:(unsigned int)a5
{
  dstUids = self->super._opSpecific.copy.dstUids;
  if (dstUids)
  {
    Count = CFArrayGetCount(dstUids);
    if (Count < 1 || (v18.length = Count, v18.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->super._opSpecific.copy.dstUids, v18, a5), FirstIndexOfValue == -1))
    {
      LOBYTE(dstUids) = 0;
    }

    else
    {
      v12 = FirstIndexOfValue;
      if (a3)
      {
        messageIds = self->messageIds;
        if (messageIds)
        {
          if (v12 < CFArrayGetCount(messageIds))
          {
            v14 = CFArrayGetValueAtIndex(self->messageIds, v12);
            *a3 = v14;
            if (![v14 length])
            {
              *a3 = &stru_288159858;
            }
          }
        }
      }

      if (a4)
      {
        internalDates = self->internalDates;
        if (internalDates)
        {
          if (v12 < CFArrayGetCount(internalDates))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(self->internalDates, v12);
            if (ValueAtIndex)
            {
              *a4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:ValueAtIndex];
            }
          }
        }
      }

      LOBYTE(dstUids) = 1;
    }
  }

  return dstUids;
}

- (void)setMessageId:(id)a3 andInternalDate:(id)a4 forMessageWithSourceUid:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  srcUids = self->super._opSpecific.copy.srcUids;
  if (!srcUids)
  {
    goto LABEL_33;
  }

  Count = CFArrayGetCount(srcUids);
  if (Count < 1)
  {
    goto LABEL_33;
  }

  v12 = Count;
  v28.location = 0;
  v28.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->super._opSpecific.copy.srcUids, v28, a5);
  if (FirstIndexOfValue == -1)
  {
    goto LABEL_33;
  }

  v14 = FirstIndexOfValue;
  if (!v9)
  {
    internalDates = self->internalDates;
    if (!internalDates || v14 >= CFArrayGetCount(internalDates))
    {
LABEL_13:
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    newValues = 0;
    v19 = self->internalDates;
LABEL_12:
    v29.location = v14;
    v29.length = 1;
    CFArrayReplaceValues(v19, v29, &newValues, 1);
    goto LABEL_13;
  }

  [v9 timeIntervalSinceReferenceDate];
  v16 = v15;
  newValues = v15;
  Mutable = self->internalDates;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, v12, 0);
    self->internalDates = Mutable;
  }

  v18 = CFArrayGetCount(Mutable);
  if (v14 < v18)
  {
    v19 = self->internalDates;
    goto LABEL_12;
  }

  if (v18 + 1 < v14)
  {
    v21 = ~v18 + v14;
    do
    {
      CFArrayAppendValue(self->internalDates, 0);
      --v21;
    }

    while (v21);
  }

  CFArrayAppendValue(self->internalDates, v16);
  if (!v8)
  {
LABEL_24:

    messageIds = self->messageIds;
    if (!messageIds)
    {
      v8 = &stru_288159858;
      goto LABEL_33;
    }

    v8 = &stru_288159858;
    if (v14 < CFArrayGetCount(messageIds))
    {
      newValues = &stru_288159858;
      v24 = self->messageIds;
      goto LABEL_27;
    }

    goto LABEL_33;
  }

LABEL_19:
  if (![(__CFString *)v8 length])
  {
    goto LABEL_24;
  }

  newValues = v8;
  v22 = self->messageIds;
  if (!v22)
  {
    v22 = CFArrayCreateMutable(0, v12, MEMORY[0x277CBF128]);
    self->messageIds = v22;
  }

  v23 = CFArrayGetCount(v22);
  if (v14 < v23)
  {
    v24 = self->messageIds;
LABEL_27:
    v30.location = v14;
    v30.length = 1;
    CFArrayReplaceValues(v24, v30, &newValues, 1);
    goto LABEL_33;
  }

  if (v23 + 1 < v14)
  {
    v26 = ~v23 + v14;
    do
    {
      CFArrayAppendValue(self->messageIds, &stru_288159858);
      --v26;
    }

    while (v26);
  }

  CFArrayAppendValue(self->messageIds, v8);
LABEL_33:
}

- (void)expungeTemporaryUid:(unsigned int)a3
{
  dstUids = self->super._opSpecific.copy.dstUids;
  if (dstUids)
  {
    Count = CFArrayGetCount(dstUids);
    v15.location = 0;
    v15.length = Count;
    LastIndexOfValue = CFArrayGetLastIndexOfValue(self->super._opSpecific.copy.dstUids, v15, a3);
    if (LastIndexOfValue != -1)
    {
      v8 = LastIndexOfValue;
      CFArrayRemoveValueAtIndex(self->super._opSpecific.copy.dstUids, LastIndexOfValue);
      CFArrayRemoveValueAtIndex(self->super._opSpecific.copy.srcUids, v8);
      messageIds = self->messageIds;
      if (messageIds && v8 < CFArrayGetCount(messageIds))
      {
        CFArrayRemoveValueAtIndex(self->messageIds, v8);
      }

      internalDates = self->internalDates;
      if (internalDates && v8 < CFArrayGetCount(internalDates))
      {
        CFArrayRemoveValueAtIndex(self->internalDates, v8);
      }

      if (Count == 1)
      {
        v11 = self->super._opSpecific.copy.dstUids;
        if (v11)
        {
          CFRelease(v11);
          self->super._opSpecific.copy.dstUids = 0;
        }

        srcUids = self->super._opSpecific.copy.srcUids;
        if (srcUids)
        {
          CFRelease(srcUids);
          self->super._opSpecific.copy.srcUids = 0;
        }

        v13 = self->messageIds;
        if (v13)
        {
          CFRelease(v13);
          self->messageIds = 0;
        }

        v14 = self->internalDates;
        if (v14)
        {
          CFRelease(v14);
          self->internalDates = 0;
        }
      }
    }
  }
}

- (unsigned)approximateSize
{
  v6.receiver = self;
  v6.super_class = MFIMAPOfflineCopyOnStupidServerOperation;
  v3 = [(MFIMAPOperation *)&v6 approximateSize];
  if (v3)
  {
    messageIds = self->messageIds;
    if (messageIds)
    {
      v3 += CFArrayGetCount(messageIds);
    }
  }

  return v3;
}

@end