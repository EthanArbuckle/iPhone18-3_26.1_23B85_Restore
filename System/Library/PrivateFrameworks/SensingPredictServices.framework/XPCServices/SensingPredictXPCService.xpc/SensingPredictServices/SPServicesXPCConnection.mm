@interface SPServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (void)contextMonitorActivate:(id)a3 completion:(id)a4;
- (void)contextMonitorReportLocationChanged:(id)a3;
- (void)contextMonitorUpdate:(id)a3;
@end

@implementation SPServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.SensingPredict"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_100015F40 <= 90 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
  {
    sub_10000A010(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = NSErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (void)contextMonitorActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100004D70;
  v21 = sub_100004D80;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004D88;
  v14[3] = &unk_100010880;
  v16 = &v17;
  v8 = a4;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
  {
    v12 = v7;
    LogPrintF();
  }

  v10 = (v18 + 5);
  obj = v18[5];
  v11 = [(SPServicesXPCConnection *)self _entitledAndReturnError:&obj, v12];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    objc_storeStrong(&self->_contextMonitor, a3);
    objc_storeStrong(&self->_xpcService->_contextMonitor, a3);
    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }

    [(SPXPCService *)self->_xpcService _update];
  }

  (v9[2])(v9);

  _Block_object_dispose(&v17, 8);
}

- (void)contextMonitorUpdate:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100004D70;
  v19 = sub_100004D80;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000509C;
  v14[3] = &unk_1000108A8;
  v14[4] = &v15;
  v5 = objc_retainBlock(v14);
  v6 = (v16 + 5);
  obj = v16[5];
  v7 = [(SPServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
    {
      v10 = v4;
      LogPrintF();
    }

    v8 = [(SPContextMonitor *)self->_contextMonitor contextChangeFlags];
    v9 = [v4 contextChangeFlags];
    if (v8 != v9)
    {
      if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
      {
        v11 = v8;
        v12 = v9;
        LogPrintF();
      }

      [(SPContextMonitor *)self->_contextMonitor setContextChangeFlags:v9, v11, v12];
      [(SPXPCService *)self->_xpcService _update];
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)contextMonitorReportLocationChanged:(id)a3
{
  v9 = a3;
  v4 = self->_contextMonitor;
  if (v4)
  {
    if (dword_100015F40 <= 30 && (dword_100015F40 != -1 || _LogCategory_Initialize()))
    {
      v5 = [v9 locationCategory];
      if (v5 > 9)
      {
        v6 = @"?";
      }

      else
      {
        v6 = off_1000108E0[v5];
      }

      v8 = v6;
      LogPrintF();
    }

    v7 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v7 contextMonitorContextChanged:v9];
  }
}

@end