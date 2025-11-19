@interface ASMDataPipe
- (ASMDataPipe)init;
- (ASMPeripheral)peripheral;
- (unsigned)getOneSduFrom:(id)a3 AtPosition:(unint64_t *)a4 TotalLen:(unint64_t)a5;
- (void)_activateWithPeripheral:(id)a3 completion:(id)a4;
- (void)_invalidate;
- (void)_notifySubscribersWithData:(id)a3;
- (void)_unsubscribeFromImagePackets;
- (void)activateWithPeripheral:(id)a3 completion:(id)a4;
- (void)flush:(id)a3;
- (void)handleDataRx:(id)a3 dataSize:(unint64_t)a4;
- (void)invalidate;
- (void)resetAll;
- (void)subscribeToDataType:(unsigned __int8)a3 forResourceCategory:(unsigned int)a4 delegate:(id)a5;
- (void)subscribeToImagePackets;
- (void)unsubscribeFromDataType:(unsigned __int8)a3 forResourceCategory:(unsigned int)a4 delegate:(id)a5;
- (void)updateReassemblyWith:(id *)a3;
@end

@implementation ASMDataPipe

- (ASMDataPipe)init
{
  v8.receiver = self;
  v8.super_class = ASMDataPipe;
  v2 = [(ASMDataPipe *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMDataPipe.queue", v3);
    v5 = *(v2 + 7);
    *(v2 + 7) = v4;

    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008508(v2 + 7);
    }

    v6 = v2;
  }

  return v2;
}

- (void)activateWithPeripheral:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001620;
  block[3] = &unk_100014378;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithPeripheral:(id)a3 completion:(id)a4
{
  obj = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v8 = objc_retainBlock(v6);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v8;

    objc_storeWeak(&self->_peripheral, obj);
    v10 = objc_alloc_init(NSMutableDictionary);
    reassemblyInstances = self->_reassemblyInstances;
    self->_reassemblyInstances = v10;

    [(ASMDataPipe *)self subscribeToImagePackets];
    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_10000854C();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000177C;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(ASMDataPipe *)self resetAll];
  if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_100008568();
  }

  self->_activateCalled = 0;
  objc_storeWeak(&self->_peripheral, 0);
  [(NSMutableDictionary *)self->_activeDelegatesMap removeAllObjects];
  activeDelegatesMap = self->_activeDelegatesMap;
  self->_activeDelegatesMap = 0;

  [(ASMDataPipe *)self _unsubscribeFromImagePackets];
}

- (void)subscribeToDataType:(unsigned __int8)a3 forResourceCategory:(unsigned int)a4 delegate:(id)a5
{
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018C4;
  block[3] = &unk_1000143C8;
  v13 = a4;
  v14 = a3;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)unsubscribeFromDataType:(unsigned __int8)a3 forResourceCategory:(unsigned int)a4 delegate:(id)a5
{
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B68;
  block[3] = &unk_1000143C8;
  v13 = a4;
  v14 = a3;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)updateReassemblyWith:(id *)a3
{
  v9 = [(ASMDataPipe *)self getKeyFrom:?];
  v5 = [(NSMutableDictionary *)self->_reassemblyInstances objectForKeyedSubscript:?];
  if (!v5)
  {
    v6 = [ASMSduReassemblyInstance alloc];
    var0 = a3->var0.var0;
    v8 = +[NSMutableData data];
    v5 = [(ASMSduReassemblyInstance *)v6 initWithType:var0 flags:*(&a3->var0.var0 + 1) buffer:v8 nextExpectedSegIdx:0];

    [(NSMutableDictionary *)self->_reassemblyInstances setObject:v5 forKey:v9];
  }

  if ([(ASMSduReassemblyInstance *)v5 processSegment:*(&a3->var0.var1.var0 + 1) & 0x7FFF])
  {
    [(ASMSduReassemblyInstance *)v5 appendToBuffer:*(&a3->var0 + 9)];
    if ((*(&a3->var0.var1.var0 + 1) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    if (dword_10001A198 <= 10 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008700(v5);
    }

    [(ASMDataPipe *)self _notifySubscribersWithData:v5];
    [(ASMDataPipe *)self flush:v5];
  }

  else if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_1000086BC(v5);
  }

  [(ASMSduReassemblyInstance *)v5 reset];
LABEL_13:
}

- (void)resetAll
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_reassemblyInstances;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_reassemblyInstances objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 reset];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_reassemblyInstances removeAllObjects];
}

- (void)subscribeToImagePackets
{
  if (self->_btSession || self->_btSessionAttaching)
  {
    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008780();
    }

    v3 = self;
    btSession = self->_btSession;
    if (BTAccessoryManagerGetDefault())
    {
      if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_10000879C();
      }

      return;
    }

    v5 = objc_retainBlock(v3->_activateCompletion);
    activateCompletion = v3->_activateCompletion;
    v3->_activateCompletion = 0;

    if (BTAccessoryManagerRegisterCustomMessageClient())
    {
      if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_1000087DC();
      }

      v7 = ASMErrorF();
      if (v5)
      {
        v5[2](v5, v7);
      }

      goto LABEL_29;
    }

    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_10000881C();
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else if (!v5)
    {
LABEL_29:

      return;
    }

    v5[2](v5, 0);
    goto LABEL_29;
  }

  if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_100008764();
  }

  v8 = self;
  dispatchQueue = v8->_dispatchQueue;
  if (BTSessionAttachWithQueue())
  {
    CFRelease(v8);
  }

  self->_btSessionAttaching = 1;
}

- (unsigned)getOneSduFrom:(id)a3 AtPosition:(unint64_t *)a4 TotalLen:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (*a4 + 9 > a5)
  {
    if (dword_10001A198 <= 90)
    {
      if (dword_10001A198 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v19 = *a4;
      }

      goto LABEL_12;
    }

LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v31 = 0;
  v10 = [v8 bytes];
  v11 = *a4;
  v12 = &v10[*a4];
  v13 = *v12;
  v30[8] = v12[8];
  *v30 = v13;
  v14 = v11 + 9;
  *a4 = v11 + 9;
  v15 = *&v30[7];
  if (*&v30[7] >= 0xA0EuLL)
  {
    if (dword_10001A198 > 90 || dword_10001A198 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  if (v14 + *&v30[7] > a5)
  {
    if (dword_10001A198 > 90)
    {
      goto LABEL_24;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      v22 = *a4;
    }

LABEL_12:
    LogPrintF();
    goto LABEL_24;
  }

  v16 = [v9 subdataWithRange:{v14, *&v30[7]}];
  v31 = v16;
  *a4 += *&v30[7];
  if (dword_10001A198 <= 10 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    v17 = "Left";
    if ((v30[1] & 1) == 0)
    {
      v17 = "Right";
    }

    if ((v30[0] - 1) > 3u)
    {
      v18 = "Unknown";
    }

    else
    {
      v18 = off_100014400[(v30[0] - 1)];
    }

    v28 = *&v30[5] & 0x7FFF;
    v29 = *&v30[5] >> 15;
    v26 = v17;
    v27 = v18;
    v24 = v14;
    v25 = v15;
    v23 = a5;
    LogPrintF();
  }

  [(ASMDataPipe *)self updateReassemblyWith:v30, v23, v24, v25, v26, v27, v28, v29];
  v20 = *a4 < a5;

LABEL_25:
  return v20;
}

- (void)handleDataRx:(id)a3 dataSize:(unint64_t)a4
{
  v7 = 0;
    ;
  }
}

- (ASMPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

- (void)_notifySubscribersWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);
  v7 = [WeakRetained currentResourceCategory];

  if (v7 == 1)
  {
    v8 = self->_activeDelegatesMap;
    if (v8)
    {
      v9 = v8;
      v10 = [NSNumber numberWithUnsignedChar:v5];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * v16);
            if (objc_opt_respondsToSelector())
            {
              v18 = [v4 copy];
              [v17 reassembledDataReceived:v18];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)flush:(id)a3
{
  if (self->_debugOutputPath)
  {
    v4 = [a3 buffer];
    debugOutputPath = self->_debugOutputPath;
    v9 = 0;
    v6 = [v4 writeToFile:debugOutputPath options:1 error:&v9];
    v7 = v9;
    if (v6)
    {
      if (dword_10001A198 > 30 || dword_10001A198 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v8 = self->_debugOutputPath;
    }

    else if (dword_10001A198 > 90 || dword_10001A198 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    LogPrintF();
LABEL_12:
  }
}

- (void)_unsubscribeFromImagePackets
{
  if (self->_btSession)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    BTSessionDetachWithQueue();
    self->_btSession = 0;
    self->_btSessionAttaching = 0;
    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

@end