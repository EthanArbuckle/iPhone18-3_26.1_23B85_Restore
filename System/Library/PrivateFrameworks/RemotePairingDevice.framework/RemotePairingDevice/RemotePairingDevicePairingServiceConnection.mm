@interface RemotePairingDevicePairingServiceConnection
- (BOOL)deletePairingRecordForHostWithIdentifier:(id)identifier error:(id *)error;
- (id)trustedHostInfoAndReturnError:(id *)error;
- (int64_t)getUSBConectedHostTrustStateWithError:(id *)error;
- (void)deleteAllPairingRecordsWithInvokingCompletionHandlerOn:(id)on completion:(id)completion;
- (void)deletePairingRecordWithUuid:(id)uuid queue:(id)queue completion:(id)completion;
- (void)initiateWirelessPairingSessionWithQueue:(id)queue completionHandler:(id)handler customPinHandler:(id)pinHandler;
@end

@implementation RemotePairingDevicePairingServiceConnection

- (BOOL)deletePairingRecordForHostWithIdentifier:(id)identifier error:(id *)error
{
  v5 = sub_26203965C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26203963C();
  selfCopy = self;
  RemotePairingDevicePairingServiceConnection.deletePairingRecord(forHostWithIdentifier:)(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (void)deletePairingRecordWithUuid:(id)uuid queue:(id)queue completion:(id)completion
{
  v8 = sub_26203965C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_26203963C();
  *(swift_allocObject() + 16) = v13;
  queueCopy = queue;
  selfCopy = self;
  RemotePairingDevicePairingServiceConnection.deletePairingRecord(uuid:queue:completion:)();

  (*(v9 + 8))(v12, v8);
}

- (void)deleteAllPairingRecordsWithInvokingCompletionHandlerOn:(id)on completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  onCopy = on;
  selfCopy = self;
  RemotePairingDevicePairingServiceConnection.deleteAllPairingRecords(invokingCompletionHandlerOn:completion:)();
}

- (id)trustedHostInfoAndReturnError:(id *)error
{
  selfCopy = self;
  RemotePairingDevicePairingServiceConnection.trustedHostInfo()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95E0, &unk_26203E600);
  v4 = sub_26203A3AC();

  return v4;
}

- (int64_t)getUSBConectedHostTrustStateWithError:(id *)error
{
  selfCopy = self;
  v4 = RemotePairingDevicePairingServiceConnection.getUSBConnectedHostState(with:)();

  return v4;
}

- (void)initiateWirelessPairingSessionWithQueue:(id)queue completionHandler:(id)handler customPinHandler:(id)pinHandler
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(pinHandler);
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

  queueCopy = queue;
  selfCopy = self;
  RemotePairingDevicePairingServiceConnection.initiateWirelessPairingSession(withQueue:completionHandler:customPinHandler:)(queueCopy, sub_261F98B38, v10, v9, v11);
  sub_261F665E4(v9);
}

@end