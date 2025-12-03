@interface MLSDaemon
- (void)applicationEncryptWithUniqueClientIdentifier:(id)identifier groupName:(id)name withGroup:(id)group groupNameEncryptionContext:(id)context completion:(id)completion;
- (void)createGroupWithUniqueClientIdentifier:(id)identifier identifier:(id)a4 otherMembers:(id)members groupCreationContext:(id)context completion:(id)completion;
- (void)joinGroupWithUniqueClientIdentifier:(id)identifier identifier:(id)a4 otherMembers:(id)members welcome:(id)welcome groupCreationContext:(id)context completion:(id)completion;
- (void)processIncomingWithUniqueClientIdentifier:(id)identifier message:(id)message incomingMessageContext:(id)context completion:(id)completion;
- (void)selfKeyPackageWithUniqueClientIdentifier:(id)identifier completion:(id)completion;
- (void)setupXPCConnectionWithClient:(id)client uniqueClientIdentifier:(id)identifier selfMember:(id)member completion:(id)completion;
- (void)updateWithUniqueClientIdentifier:(id)identifier groupDetails:(id)details forGroup:(id)group completion:(id)completion;
@end

@implementation MLSDaemon

- (void)setupXPCConnectionWithClient:(id)client uniqueClientIdentifier:(id)identifier selfMember:(id)member completion:(id)completion
{
  v10 = _Block_copy(completion);
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  memberCopy = member;
  selfCopy = self;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(swift_allocObject() + 16) = v10;
  MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(client, v13, v15, v16, v18);

  outlined consume of Data._Representation(v16, v18);
  outlined consume of Data._Representation(v13, v15);
  swift_unknownObjectRelease();
}

- (void)selfKeyPackageWithUniqueClientIdentifier:(id)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  identifierCopy = identifier;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(v8, v10);

  outlined consume of Data._Representation(v8, v10);
}

- (void)createGroupWithUniqueClientIdentifier:(id)identifier identifier:(id)a4 otherMembers:(id)members groupCreationContext:(id)context completion:(id)completion
{
  v12 = _Block_copy(completion);
  identifierCopy = identifier;
  v14 = a4;
  membersCopy = members;
  contextCopy = context;
  selfCopy = self;
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

- (void)joinGroupWithUniqueClientIdentifier:(id)identifier identifier:(id)a4 otherMembers:(id)members welcome:(id)welcome groupCreationContext:(id)context completion:(id)completion
{
  v36 = _Block_copy(completion);
  identifierCopy = identifier;
  v15 = a4;
  membersCopy = members;
  welcomeCopy = welcome;
  contextCopy = context;
  selfCopy = self;
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

- (void)updateWithUniqueClientIdentifier:(id)identifier groupDetails:(id)details forGroup:(id)group completion:(id)completion
{
  v10 = _Block_copy(completion);
  identifierCopy = identifier;
  detailsCopy = details;
  groupCopy = group;
  selfCopy = self;
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

- (void)applicationEncryptWithUniqueClientIdentifier:(id)identifier groupName:(id)name withGroup:(id)group groupNameEncryptionContext:(id)context completion:(id)completion
{
  v12 = _Block_copy(completion);
  identifierCopy = identifier;
  nameCopy = name;
  groupCopy = group;
  contextCopy = context;
  selfCopy = self;
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

- (void)processIncomingWithUniqueClientIdentifier:(id)identifier message:(id)message incomingMessageContext:(id)context completion:(id)completion
{
  v10 = _Block_copy(completion);
  identifierCopy = identifier;
  messageCopy = message;
  contextCopy = context;
  selfCopy = self;
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