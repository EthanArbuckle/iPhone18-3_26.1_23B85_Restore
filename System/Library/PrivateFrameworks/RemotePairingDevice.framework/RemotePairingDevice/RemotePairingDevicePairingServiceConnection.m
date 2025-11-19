@interface RemotePairingDevicePairingServiceConnection
- (BOOL)deletePairingRecordForHostWithIdentifier:(id)a3 error:(id *)a4;
- (id)trustedHostInfoAndReturnError:(id *)a3;
- (int64_t)getUSBConectedHostTrustStateWithError:(id *)a3;
- (void)deleteAllPairingRecordsWithInvokingCompletionHandlerOn:(id)a3 completion:(id)a4;
- (void)deletePairingRecordWithUuid:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)initiateWirelessPairingSessionWithQueue:(id)a3 completionHandler:(id)a4 customPinHandler:(id)a5;
@end

@implementation RemotePairingDevicePairingServiceConnection

- (BOOL)deletePairingRecordForHostWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = sub_26203965C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26203963C();
  v10 = self;
  RemotePairingDevicePairingServiceConnection.deletePairingRecord(forHostWithIdentifier:)(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (void)deletePairingRecordWithUuid:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = sub_26203965C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_26203963C();
  *(swift_allocObject() + 16) = v13;
  v14 = a4;
  v15 = self;
  RemotePairingDevicePairingServiceConnection.deletePairingRecord(uuid:queue:completion:)();

  (*(v9 + 8))(v12, v8);
}

- (void)deleteAllPairingRecordsWithInvokingCompletionHandlerOn:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  RemotePairingDevicePairingServiceConnection.deleteAllPairingRecords(invokingCompletionHandlerOn:completion:)();
}

- (id)trustedHostInfoAndReturnError:(id *)a3
{
  v3 = self;
  RemotePairingDevicePairingServiceConnection.trustedHostInfo()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95E0, &unk_26203E600);
  v4 = sub_26203A3AC();

  return v4;
}

- (int64_t)getUSBConectedHostTrustStateWithError:(id *)a3
{
  v3 = self;
  v4 = RemotePairingDevicePairingServiceConnection.getUSBConnectedHostState(with:)();

  return v4;
}

- (void)initiateWirelessPairingSessionWithQueue:(id)a3 completionHandler:(id)a4 customPinHandler:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_261F98B40;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = self;
  RemotePairingDevicePairingServiceConnection.initiateWirelessPairingSession(withQueue:completionHandler:customPinHandler:)(v12, sub_261F98B38, v10, v9, v11);
  sub_261F665E4(v9);
}

@end