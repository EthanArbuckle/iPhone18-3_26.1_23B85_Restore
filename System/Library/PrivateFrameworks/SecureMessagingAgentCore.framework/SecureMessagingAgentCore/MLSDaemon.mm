@interface MLSDaemon
- (void)applicationEncryptWithUniqueClientIdentifier:(id)a3 groupName:(id)a4 withGroup:(id)a5 groupNameEncryptionContext:(id)a6 completion:(id)a7;
- (void)createGroupWithUniqueClientIdentifier:(id)a3 identifier:(id)a4 otherMembers:(id)a5 groupCreationContext:(id)a6 completion:(id)a7;
- (void)joinGroupWithUniqueClientIdentifier:(id)a3 identifier:(id)a4 otherMembers:(id)a5 welcome:(id)a6 groupCreationContext:(id)a7 completion:(id)a8;
- (void)processIncomingWithUniqueClientIdentifier:(id)a3 message:(id)a4 incomingMessageContext:(id)a5 completion:(id)a6;
- (void)selfKeyPackageWithUniqueClientIdentifier:(id)a3 completion:(id)a4;
- (void)setupXPCConnectionWithClient:(id)a3 uniqueClientIdentifier:(id)a4 selfMember:(id)a5 completion:(id)a6;
- (void)updateWithUniqueClientIdentifier:(id)a3 groupDetails:(id)a4 forGroup:(id)a5 completion:(id)a6;
@end

@implementation MLSDaemon

- (void)setupXPCConnectionWithClient:(id)a3 uniqueClientIdentifier:(id)a4 selfMember:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a5;
  v19 = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(swift_allocObject() + 16) = v10;
  MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(a3, v13, v15, v16, v18);

  outlined consume of Data._Representation(v16, v18);
  outlined consume of Data._Representation(v13, v15);
  swift_unknownObjectRelease();
}

- (void)selfKeyPackageWithUniqueClientIdentifier:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(v8, v10);

  outlined consume of Data._Representation(v8, v10);
}

- (void)createGroupWithUniqueClientIdentifier:(id)a3 identifier:(id)a4 otherMembers:(id)a5 groupCreationContext:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v29 = self;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(swift_allocObject() + 16) = v12;
  MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(v17, v19, v20, v22, v23, v25, v26, v28);

  outlined consume of Data._Representation(v26, v28);
  outlined consume of Data._Representation(v23, v25);

  outlined consume of Data._Representation(v17, v19);
}

- (void)joinGroupWithUniqueClientIdentifier:(id)a3 identifier:(id)a4 otherMembers:(id)a5 welcome:(id)a6 groupCreationContext:(id)a7 completion:(id)a8
{
  v36 = _Block_copy(a8);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v37 = self;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v23;
  v35 = v22;

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  v33 = v31;

  *(swift_allocObject() + 16) = v36;
  MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(v19, v21, v35, v34, v24, v26, v27, v29, v30, v32);

  outlined consume of Data._Representation(v30, v33);
  outlined consume of Data._Representation(v27, v29);
  outlined consume of Data._Representation(v24, v26);

  outlined consume of Data._Representation(v19, v21);
}

- (void)updateWithUniqueClientIdentifier:(id)a3 groupDetails:(id)a4 forGroup:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v23 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(swift_allocObject() + 16) = v10;
  MLSDaemon.update(uniqueClientIdentifier:groupDetails:forGroup:completion:)(v14, v16, v17, v19, v20, v22);

  outlined consume of Data._Representation(v17, v19);
  outlined consume of Data._Representation(v14, v16);
}

- (void)applicationEncryptWithUniqueClientIdentifier:(id)a3 groupName:(id)a4 withGroup:(id)a5 groupNameEncryptionContext:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v29 = self;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(swift_allocObject() + 16) = v12;
  MLSDaemon.applicationEncrypt(uniqueClientIdentifier:groupName:withGroup:groupNameEncryptionContext:completion:)(v17, v19, v20, v22, v23, v25, v26, v28);

  outlined consume of Data._Representation(v26, v28);

  outlined consume of Data._Representation(v17, v19);
}

- (void)processIncomingWithUniqueClientIdentifier:(id)a3 message:(id)a4 incomingMessageContext:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v23 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(swift_allocObject() + 16) = v10;
  MLSDaemon.processIncoming(uniqueClientIdentifier:message:incomingMessageContext:completion:)(v14, v16, v17, v19, v20, v22);

  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v17, v19);
  outlined consume of Data._Representation(v14, v16);
}

@end