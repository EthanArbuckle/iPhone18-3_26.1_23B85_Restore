@interface BTCloudServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (void)clientReportHMDeviceCloudRecordInfosUpdated:(id)a3;
- (void)cloudServicesClientActivate:(id)a3 completion:(id)a4;
- (void)createDeviceRecord:(id)a3 completion:(id)a4;
- (void)createDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)createMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)deleteDeviceRecord:(id)a3 completion:(id)a4;
- (void)deleteDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)deleteMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)deleteSoundProfileRecordWithCompletion:(id)a3;
- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)a3 completion:(id)a4;
- (void)fetchAllBTCloudDeviceSupportInformationWithCompletion:(id)a3;
- (void)fetchAllMagicSettingsRecordsWithCompletion:(id)a3;
- (void)fetchBTCloudDeviceSupportInformation:(id)a3 completion:(id)a4;
- (void)fetchCloudAccountInfoUpdatedWithCompletion:(id)a3;
- (void)fetchCloudPairingIdentifierForPeripheral:(id)a3 completion:(id)a4;
- (void)fetchDeviceRecord:(id)a3 completion:(id)a4;
- (void)fetchDeviceRecordsWithCompletion:(id)a3;
- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)a3 completion:(id)a4;
- (void)fetchMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)fetchSoundProfileRecordWithCompletion:(id)a3;
- (void)finishSoundProfileRecordSessionHandle:(id)a3 completion:(id)a4;
- (void)forceCloudPairingForIdentifiers:(id)a3 completion:(id)a4;
- (void)modifyAAProxCardsInfo:(id)a3 completion:(id)a4;
- (void)modifyDeviceRecord:(id)a3 completion:(id)a4;
- (void)modifyDeviceSupportInformationRecord:(id)a3 completion:(id)a4;
- (void)modifyHMDeviceCloudRecordInfo:(id)a3 completion:(id)a4;
- (void)modifyMagicSettingsRecord:(id)a3 completion:(id)a4;
- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)a3 completion:(id)a4;
- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)a3 completion:(id)a4;
- (void)startSoundProfileRecordFileHandleSessionWithCompletion:(id)a3;
@end

@implementation BTCloudServicesXPCConnection

- (void)cloudServicesClientActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v9 = +[CloudXPCService sharedInstance];
  v10 = [v9 deviceManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A5F60;
  v17[3] = &unk_1002B7120;
  v19 = &v20;
  v17[4] = v10;
  v11 = v8;
  v18 = v11;
  v12 = objc_retainBlock(v17);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v10;
    LogPrintF();
  }

  v13 = (v21 + 5);
  obj = v21[5];
  v14 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v13, obj);
  if (v14)
  {
    objc_storeStrong(&self->_client, a3);
    if (v11)
    {
      (*(v11 + 2))(v11, v21[5]);
    }
  }

  (v12[2])(v12);

  _Block_object_dispose(&v20, 8);
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v8 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices"];
  v9 = [v8 isEqual:&__kCFBooleanTrue];
  if (v9)
  {
    v3 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices.cloud"];
    if ([v3 isEqual:&__kCFBooleanTrue])
    {

LABEL_14:
      result = 1;
      self->_entitled = 1;
      return result;
    }
  }

  v10 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.bluetooth.internal"];
  v11 = [v10 isEqual:&__kCFBooleanTrue];

  if (v9)
  {

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_14;
    }
  }

  if (dword_1002F6ED8 <= 90 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F46E0(p_xpcCnx);
    if (a3)
    {
      goto LABEL_12;
    }
  }

  else if (a3)
  {
LABEL_12:
    v12 = BTErrorF();
    v13 = v12;
    result = 0;
    *a3 = v12;
    return result;
  }

  return 0;
}

- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003978;
  v27 = sub_100003868;
  v28 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A645C;
  v20[3] = &unk_1002B7120;
  v22 = &v23;
  v20[4] = v9;
  v10 = v7;
  v21 = v10;
  v11 = objc_retainBlock(v20);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v24 + 5);
  obj = v24[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A652C;
    v17[3] = &unk_1002BA448;
    v18 = v10;
    [v15 fetchAAProxCardsInfoWithAddress:v6 completion:v17];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v23, 8);
}

- (void)modifyAAProxCardsInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A680C;
  v18[3] = &unk_1002B7120;
  v20 = &v21;
  v18[4] = v9;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    [v15 updateAAProxCardsInfoWithProxCardsInfo:v6 completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v21, 8);
}

- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A6B1C;
  v18[3] = &unk_1002B7120;
  v20 = &v21;
  v18[4] = v9;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    [v15 removeAAProxCardsInfoWithBluetoothAddress:v6 completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v21, 8);
}

- (void)createDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F477C();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A6EAC;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A6F4C;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 addDeviceWithRecord:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)modifyDeviceRecord:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F47BC();
  }

  [(BTCloudServicesXPCConnection *)self createDeviceRecord:v7 completion:v6];
}

- (void)deleteDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F47FC();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A7378;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A7418;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 removeDeviceWithBluetoothAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchDeviceRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F483C();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A77A8;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A7848;
    v16[3] = &unk_1002BA470;
    v16[4] = self;
    v17 = v7;
    [v14 fetchDeviceWithAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchDeviceRecordsWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F48C0();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003978;
  v21 = sub_100003868;
  v22 = 0;
  v5 = +[CloudXPCService sharedInstance];
  v6 = [v5 deviceManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A7C20;
  v16[3] = &unk_1002B6ED8;
  v16[4] = v6;
  v16[5] = &v17;
  v7 = objc_retainBlock(v16);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v12 = v6;
    LogPrintF();
  }

  v8 = (v18 + 5);
  obj = v18[5];
  v9 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v12];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A7CC0;
    v13[3] = &unk_1002BA498;
    v13[4] = self;
    v14 = v4;
    [v11 fetchDeviceRecordsWithCompletion:v13];
  }

  (v7[2])(v7);

  _Block_object_dispose(&v17, 8);
}

- (void)createDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4920();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A80E0;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A8180;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 addDeviceSupportInformationWithRecord:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)deleteDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F493C();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A8510;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A85B0;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 removeDeviceSupportInformationWithBluetoothAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchBTCloudDeviceSupportInformation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F497C();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A8940;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A89E0;
    v16[3] = &unk_1002BA4C0;
    v16[4] = self;
    v17 = v7;
    [v14 fetchDeviceSupportInformationRecordWithAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchAllBTCloudDeviceSupportInformationWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F49FC();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003978;
  v21 = sub_100003868;
  v22 = 0;
  v5 = +[CloudXPCService sharedInstance];
  v6 = [v5 deviceManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A8D8C;
  v16[3] = &unk_1002B6ED8;
  v16[4] = v6;
  v16[5] = &v17;
  v7 = objc_retainBlock(v16);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v12 = v6;
    LogPrintF();
  }

  v8 = (v18 + 5);
  obj = v18[5];
  v9 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v12];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A8E2C;
    v13[3] = &unk_1002BA498;
    v13[4] = self;
    v14 = v4;
    [v11 fetchDeviceSupportInformationRecordsWithCompletion:v13];
  }

  (v7[2])(v7);

  _Block_object_dispose(&v17, 8);
}

- (void)modifyDeviceSupportInformationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4A58();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A91F8;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A9298;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 updateDeviceSupportInformationWithDevice:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)createMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4A98();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A9628;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A96C8;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 addDeviceMagicSettingsWithRecord:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)deleteMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4AD8();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A9A58;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A9AF8;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 removeDeviceMagicSettingsWithBluetoothAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4B18();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A9E88;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A9F28;
    v16[3] = &unk_1002BA4E8;
    v16[4] = self;
    v17 = v7;
    [v14 fetchMagicSettingsRecordWithAddress:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchAllMagicSettingsRecordsWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4B98();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003978;
  v21 = sub_100003868;
  v22 = 0;
  v5 = +[CloudXPCService sharedInstance];
  v6 = [v5 deviceManager];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AA2D4;
  v16[3] = &unk_1002B6ED8;
  v16[4] = v6;
  v16[5] = &v17;
  v7 = objc_retainBlock(v16);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v12 = v6;
    LogPrintF();
  }

  v8 = (v18 + 5);
  obj = v18[5];
  v9 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v12];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AA374;
    v13[3] = &unk_1002BA498;
    v13[4] = self;
    v14 = v4;
    [v11 fetchMagicPairingSettingsRecordsWithCompletion:v13];
  }

  (v7[2])(v7);

  _Block_object_dispose(&v17, 8);
}

- (void)modifyMagicSettingsRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4BF4();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AA740;
  v19[3] = &unk_1002B6ED8;
  v19[4] = v9;
  v19[5] = &v20;
  v10 = objc_retainBlock(v19);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v9;
    LogPrintF();
  }

  v11 = (v21 + 5);
  obj = v21[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    v13 = +[CloudXPCService sharedInstance];
    v14 = [v13 deviceManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AA7E0;
    v16[3] = &unk_1002B69C0;
    v16[4] = self;
    v17 = v7;
    [v14 updateDeviceMagicSettingsWithMagicPairingSettings:v6 completion:v16];
  }

  (v10[2])(v10);

  _Block_object_dispose(&v20, 8);
}

- (void)fetchCloudAccountInfoUpdatedWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4C34();
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100003978;
  v20 = sub_100003868;
  v21 = 0;
  v5 = +[CloudXPCService sharedInstance];
  v6 = [v5 deviceManager];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AAB68;
  v15[3] = &unk_1002B6ED8;
  v15[4] = v6;
  v15[5] = &v16;
  v7 = objc_retainBlock(v15);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v13 = v6;
    LogPrintF();
  }

  v8 = (v17 + 5);
  obj = v17[5];
  v9 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v13];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v12 = [v11 cloudAccountInfo];

    if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4[2](v4, v12, 0);
  }

  (v7[2])(v7);

  _Block_object_dispose(&v16, 8);
}

- (void)fetchCloudPairingIdentifierForPeripheral:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4C50();
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100003978;
  v28 = sub_100003868;
  v29 = 0;
  v8 = +[CBIDSManager sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AAF14;
  v21[3] = &unk_1002B7120;
  v23 = &v24;
  v21[4] = v8;
  v9 = v7;
  v22 = v9;
  v10 = objc_retainBlock(v21);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v15 = v8;
    LogPrintF();
  }

  v11 = v25;
  obj = v25[5];
  v12 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v15];
  objc_storeStrong(v11 + 5, obj);
  if (v12)
  {
    if (v8 && ([v8 isReady] & 1) != 0)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000AAFE4;
      v16[3] = &unk_1002BA538;
      v16[4] = self;
      v18 = v9;
      v17 = v6;
      v19 = &v24;
      [v8 fetchCloudPairingIdentifierForPeripheral:v17 withCompletion:v16];
    }

    else
    {
      v13 = BTErrorF();
      v14 = v25[5];
      v25[5] = v13;
    }
  }

  (v10[2])(v10);

  _Block_object_dispose(&v24, 8);
}

- (void)forceCloudPairingForIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BTCloudServicesXPCConnection *)self signingIdentity];
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4CD4(v8);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v9 = +[CBIDSManager sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AB4C4;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    if (v9 && [v9 isReady] && objc_msgSend(v6, "count"))
    {
      [v9 sendRePairRequest:v6 forBundleID:v8];
      (*(v10 + 2))(v10, 0);
    }

    else
    {
      v14 = BTErrorF();
      v15 = v22[5];
      v22[5] = v14;
    }
  }

  (v11[2])(v11);

  _Block_object_dispose(&v21, 8);
}

- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003978;
  v27 = sub_100003868;
  v28 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AB834;
  v20[3] = &unk_1002B7120;
  v22 = &v23;
  v20[4] = v9;
  v10 = v7;
  v21 = v10;
  v11 = objc_retainBlock(v20);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v24 + 5);
  obj = v24[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000AB904;
    v17[3] = &unk_1002BA560;
    v17[4] = self;
    v18 = v10;
    [v15 fetchHMDeviceCloudRecordWithAddress:v6 completion:v17];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v23, 8);
}

- (void)modifyHMDeviceCloudRecordInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000ABC7C;
  v18[3] = &unk_1002B7120;
  v20 = &v21;
  v18[4] = v9;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    [v15 updateHMDeviceCloudRecordInfoWithRecordInfo:v6 completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v21, 8);
}

- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v8 = +[CloudXPCService sharedInstance];
  v9 = [v8 deviceManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000ABF8C;
  v18[3] = &unk_1002B7120;
  v20 = &v21;
  v18[4] = v9;
  v10 = v7;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    v16 = v9;
    LogPrintF();
  }

  v12 = (v22 + 5);
  obj = v22[5];
  v13 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    v14 = +[CloudXPCService sharedInstance];
    v15 = [v14 deviceManager];
    [v15 removeHMDeviceCloudRecordWithBluetoothAddress:v6 completion:v10];
  }

  (v11[2])(v11);

  _Block_object_dispose(&v21, 8);
}

- (void)startSoundProfileRecordFileHandleSessionWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4D7C();
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003978;
  v26 = sub_100003868;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AC358;
  v19[3] = &unk_1002B74D0;
  v21 = &v22;
  v5 = v4;
  v20 = v5;
  v6 = objc_retainBlock(v19);
  v7 = (v23 + 5);
  obj = v23[5];
  v8 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    v9 = +[CloudXPCService sharedInstance];
    v10 = [v9 deviceManager];

    if (v10)
    {
      v11 = [v10 createSoundProfileRecordStagingURL];
      v12 = +[NSFileManager defaultManager];
      v13 = [v11 path];
      [v12 createFileAtPath:v13 contents:0 attributes:0];

      v14 = (v23 + 5);
      v17 = v23[5];
      v15 = [NSFileHandle fileHandleForWritingToURL:v11 error:&v17];
      objc_storeStrong(v14, v17);
      if (v15)
      {
        if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        (*(v5 + 2))(v5, v15, 0);
      }
    }

    else
    {
      v16 = BTErrorF();
      v11 = v23[5];
      v23[5] = v16;
    }
  }

  (v6[2])(v6);

  _Block_object_dispose(&v22, 8);
}

- (void)finishSoundProfileRecordSessionHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100003978;
  v33 = sub_100003868;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000AC800;
  v26[3] = &unk_1002B74D0;
  v28 = &v29;
  v7 = a4;
  v27 = v7;
  v8 = objc_retainBlock(v26);
  v9 = v30;
  obj = v30[5];
  v10 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9 + 5, obj);
  if (v10)
  {
    if (fcntl([v6 fileDescriptor], 50, v35) == -1)
    {
      v18 = BTErrorF();
      v11 = v30[5];
      v30[5] = v18;
    }

    else
    {
      v11 = [NSString stringWithUTF8String:v35];
      v12 = [NSURL fileURLWithPath:v11];
      if ([v11 length])
      {
        if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = +[CloudXPCService sharedInstance];
        v14 = [v13 deviceManager];

        if (v14)
        {
          v15 = self->_dispatchQueue;
          v16 = +[CloudXPCService sharedInstance];
          [v16 beginTransaction:@"createSoundProfileRecordURL"];

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000AC8C8;
          v23[3] = &unk_1002B69C0;
          v23[4] = v15;
          v24 = v7;
          [v14 addSoundProfileRecordWithURL:v12 completion:v23];
          v17 = v30;
          v22 = 0;
          [v6 closeAndReturnError:&v22];
          objc_storeStrong(v17 + 5, v22);
        }

        else
        {
          v21 = BTErrorF();
          v15 = v30[5];
          v30[5] = v21;
        }
      }

      else
      {
        v19 = BTErrorF();
        v20 = v30[5];
        v30[5] = v19;
      }
    }
  }

  (v8[2])(v8);

  _Block_object_dispose(&v29, 8);
}

- (void)fetchSoundProfileRecordWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4D98();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003978;
  v25 = sub_100003868;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000ACC94;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  v5 = v4;
  v19 = v5;
  v6 = objc_retainBlock(v18);
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (v5)
    {
      v9 = +[CloudXPCService sharedInstance];
      v10 = [v9 deviceManager];

      if (v10)
      {
        v11 = self->_dispatchQueue;
        v12 = +[CloudXPCService sharedInstance];
        [v12 beginTransaction:@"fetchSoundProfileRecord"];

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000ACD60;
        v15[3] = &unk_1002BA5B0;
        v15[4] = v11;
        v16 = v5;
        [v10 fetchSoundProfileRecordWithCompletion:v15];
      }

      else
      {
        v14 = BTErrorF();
        v11 = v22[5];
        v22[5] = v14;
      }
    }

    else
    {
      v13 = BTErrorF();
      v10 = v22[5];
      v22[5] = v13;
    }
  }

  (v6[2])(v6);

  _Block_object_dispose(&v21, 8);
}

- (void)deleteSoundProfileRecordWithCompletion:(id)a3
{
  v4 = a3;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4DB4();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003978;
  v24 = sub_100003868;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000AD19C;
  v17[3] = &unk_1002B74D0;
  v19 = &v20;
  v5 = v4;
  v18 = v5;
  v6 = objc_retainBlock(v17);
  v7 = (v21 + 5);
  obj = v21[5];
  v8 = [(BTCloudServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v7, obj);
  if (v8)
  {
    if (v5)
    {
      v9 = +[CloudXPCService sharedInstance];
      v10 = [v9 deviceManager];

      if (v10)
      {
        v11 = self->_dispatchQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000AD264;
        v14[3] = &unk_1002B69C0;
        v14[4] = v11;
        v15 = v5;
        [v10 removeSoundProfileRecordWithCompletion:v14];
      }

      else
      {
        v13 = BTErrorF();
        v11 = v21[5];
        v21[5] = v13;
      }
    }

    else
    {
      v12 = BTErrorF();
      v10 = v21[5];
      v21[5] = v12;
    }
  }

  (v6[2])(v6);

  _Block_object_dispose(&v20, 8);
}

- (void)clientReportHMDeviceCloudRecordInfosUpdated:(id)a3
{
  v5 = a3;
  if (([(AACloudServicesClient *)self->_client internalFlags]& 1) != 0)
  {
    if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v4 hmDeviceCloudRecordInfosUpdated:v5];
  }
}

@end