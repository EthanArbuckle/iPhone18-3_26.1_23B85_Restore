@interface BTIdentityDaemon
+ (id)sharedBTIdentityDaemon;
- (BOOL)diagnosticControl:(id)a3 completion:(id)a4;
- (BTIdentityDaemon)init;
- (void)_idsDevicesChanged:(id)a3;
- (void)_idsScheduleUpdateIdentities;
- (void)_idsUpdateIdentities;
- (void)activate;
- (void)invalidate;
@end

@implementation BTIdentityDaemon

+ (id)sharedBTIdentityDaemon
{
  if (qword_1002FA1D8 != -1)
  {
    sub_1001F72FC();
  }

  v3 = qword_1002FA1D0;

  return v3;
}

- (BTIdentityDaemon)init
{
  v8.receiver = self;
  v8.super_class = BTIdentityDaemon;
  v2 = [(BTIdentityDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTIdentityDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_cbDaemonNotifyToken = -1;
    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4A64;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4E74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_idsDevicesChanged:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C509C;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_idsScheduleUpdateIdentities
{
  v3 = self->_idsDeviceCoalescer;
  if (!v3)
  {
    v4 = objc_alloc_init(CUCoalescer);
    idsDeviceCoalescer = self->_idsDeviceCoalescer;
    self->_idsDeviceCoalescer = v4;

    [(CUCoalescer *)v4 setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)v4 setMinDelay:2.0];
    [(CUCoalescer *)v4 setMaxDelay:5.0];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000C525C;
    v9 = &unk_1002B6D18;
    v3 = v4;
    v10 = v3;
    v11 = self;
    [(CUCoalescer *)v3 setActionHandler:&v6];
  }

  [(CUCoalescer *)v3 trigger:v6];
}

- (void)_idsUpdateIdentities
{
  v2 = self;
  [(NSMutableDictionary *)self->_identityMap enumerateKeysAndObjectsUsingBlock:&stru_1002BADF0];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v2->_idsDevices;
  v53 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (!v53)
  {
    v48 = 0;
    v49 = 0;
    goto LABEL_56;
  }

  v48 = 0;
  v49 = 0;
  v51 = v2;
  v52 = *v61;
  do
  {
    v3 = 0;
    do
    {
      if (*v61 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v60 + 1) + 8 * v3);
      v5 = [v4 uniqueIDOverride];
      if (v5)
      {
        v6 = [(NSMutableDictionary *)v2->_identityMap objectForKeyedSubscript:v5];
        v7 = v6;
        if (!v6)
        {
          v7 = objc_alloc_init(CBDeviceIdentity);
          [v7 setIdentifier:v5];
          [v7 setIdsDeviceID:v5];
          identityMap = v2->_identityMap;
          if (!identityMap)
          {
            v9 = objc_alloc_init(NSMutableDictionary);
            v10 = v2->_identityMap;
            v2->_identityMap = v9;

            identityMap = v2->_identityMap;
          }

          [(NSMutableDictionary *)identityMap setObject:v7 forKeyedSubscript:v5];
        }

        [v7 setType:2];
        v11 = [v4 nsuuid];
        if (v11)
        {
          v12 = [v7 bluetoothIdentifier];
          v13 = v11;
          v14 = v12;
          v15 = v14;
          if (v13 == v14)
          {
          }

          else
          {
            if (!v14)
            {

              goto LABEL_19;
            }

            v16 = [v13 isEqual:v14];

            if ((v16 & 1) == 0)
            {
LABEL_19:
              [v7 setBluetoothIdentifier:v13];
              v54 = 1;
LABEL_20:
              v17 = [v4 modelIdentifier];
              if (v17)
              {
                v18 = [v7 model];
                v19 = v17;
                v20 = v18;
                v21 = v20;
                if (v19 == v20)
                {

                  goto LABEL_28;
                }

                if (v20)
                {
                  v22 = [v19 isEqual:v20];

                  if (v22)
                  {
                    goto LABEL_28;
                  }
                }

                else
                {
                }

                [v7 setModel:v19];
                v54 = 1;
              }

LABEL_28:
              v23 = [v4 name];
              if (v23)
              {
                v24 = [v7 name];
                v25 = v23;
                v26 = v24;
                v27 = v26;
                if (v25 != v26)
                {
                  if (v26)
                  {
                    v28 = [v25 isEqual:v26];

                    if (v28)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                  }

                  [v7 setName:v25];
                  if (v6)
                  {
LABEL_42:
                    v49 = (v49 + 1);
                    if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
                    {
                      sub_1001F7484();
                    }

                    goto LABEL_49;
                  }

LABEL_46:
                  v48 = (v48 + 1);
                  if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001F74C4();
                  }

LABEL_49:

                  v2 = v51;
                  goto LABEL_50;
                }

                if (!v6)
                {
                  goto LABEL_46;
                }
              }

              else
              {
LABEL_32:
                if (!v6)
                {
                  goto LABEL_46;
                }
              }

              if (v54)
              {
                goto LABEL_42;
              }

              if (dword_1002F7148 <= 10 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
              {
                sub_1001F7444();
              }

              goto LABEL_49;
            }
          }
        }

        v54 = 0;
        goto LABEL_20;
      }

LABEL_50:

      v3 = v3 + 1;
    }

    while (v53 != v3);
    v29 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    v53 = v29;
  }

  while (v29);
LABEL_56:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = [(NSMutableDictionary *)v2->_identityMap allKeys];
  v31 = [v30 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v57;
    do
    {
      v35 = 0;
      do
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v56 + 1) + 8 * v35);
        v37 = [(NSMutableDictionary *)v2->_identityMap objectForKeyedSubscript:v36];
        if (![v37 type])
        {
          [(NSMutableDictionary *)v2->_identityMap setObject:0 forKeyedSubscript:v36];
          v33 = (v33 + 1);
          if (dword_1002F7148 <= 20 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F7504();
          }
        }

        v35 = v35 + 1;
      }

      while (v32 != v35);
      v38 = [v30 countByEnumeratingWithState:&v56 objects:v64 count:16];
      v32 = v38;
    }

    while (v38);
  }

  else
  {
    v33 = 0;
  }

  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    if (v2->_cbDaemonUpdated)
    {
      v39 = "yes";
    }

    else
    {
      v39 = "no";
    }

    v46 = v49;
    v47 = v39;
    v44 = v48;
    v45 = v33;
    LogPrintF();
  }

  if (v48 || v33 || v49 || !v2->_cbDaemonUpdated)
  {
    v40 = objc_alloc_init(CBController);
    [v40 setDispatchQueue:v2->_dispatchQueue];
    v41 = [(NSMutableDictionary *)v2->_identityMap allValues];
    v42 = v41;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000C5954;
    v55[3] = &unk_1002B68A8;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = &__NSArray0__struct;
    }

    v55[4] = v40;
    v55[5] = v2;
    [v40 updateIdentities:v43 completion:{v55, v44, v45, v46, v47}];
  }
}

- (BOOL)diagnosticControl:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (!v8 || [v8 caseInsensitiveCompare:@"idsUp"] && objc_msgSend(v8, "caseInsensitiveCompare:", @"idsUpForce"))
  {
    v9 = 0;
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C4F64;
    block[3] = &unk_1002B6BB0;
    block[4] = v8;
    block[5] = self;
    v13 = v6;
    dispatch_async(dispatchQueue, block);

    v9 = 1;
  }

  return v9;
}

@end