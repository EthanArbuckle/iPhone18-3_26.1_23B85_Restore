@interface SpatialAudioProfileClientXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (void)fetchSpatialAudioProfileRecordForClient:(id)a3 WithCompletion:(id)a4;
- (void)xpcConnectionInvalidated;
@end

@implementation SpatialAudioProfileClientXPCConnection

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.SpatialAudioProfile"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  v9 = [(NSXPCConnection *)*p_xpcCnx cuValueForEntitlementNoCache:@"com.apple.developer.spatial-audio.profile-access"];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if ((v8 & 1) != 0 || v10)
  {
    result = 1;
    self->_entitled = 1;
  }

  else
  {
    if (dword_100008860 > 90)
    {
      goto LABEL_11;
    }

    if (dword_100008860 != -1 || _LogCategory_Initialize())
    {
      sub_100001C48(p_xpcCnx);
    }

    if (dword_100008860 <= 90 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001C98(p_xpcCnx);
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_11:
      if (a3)
      {
LABEL_12:
        v11 = NSErrorF();
        v12 = v11;
        result = 0;
        *a3 = v11;
        return result;
      }
    }

    return 0;
  }

  return result;
}

- (void)xpcConnectionInvalidated
{
  v4 = self->_spatialAudioProfileClient;
  spatialAudioProfileClient = self->_spatialAudioProfileClient;
  self->_spatialAudioProfileClient = 0;

  if (self->_spatialAudioProfileClient)
  {
    if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001CE8();
    }

    [(SpatialAudioProfileClient *)v4 invalidate];
  }
}

- (void)fetchSpatialAudioProfileRecordForClient:(id)a3 WithCompletion:(id)a4
{
  v7 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000015F8;
  v25 = sub_100001608;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100001610;
  v18[3] = &unk_1000041D0;
  v20 = &v21;
  v8 = a4;
  v19 = v8;
  v9 = objc_retainBlock(v18);
  if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
  {
    v14 = v7;
    LogPrintF();
  }

  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(SpatialAudioProfileClientXPCConnection *)self _entitledAndReturnError:&obj, v14];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    objc_storeStrong(&self->_spatialAudioProfileClient, a3);
    if ((_os_feature_enabled_impl() & 1) != 0 && v8)
    {
      v12 = objc_alloc_init(BTCloudServicesClient);
      [v12 setDispatchQueue:self->_dispatchQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000016EC;
      v15[3] = &unk_1000041F8;
      v16 = v8;
      [v12 fetchSoundProfileRecordWithCompletion:v15];
    }

    else
    {
      v13 = NSErrorF();
      v12 = v22[5];
      v22[5] = v13;
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v21, 8);
}

@end