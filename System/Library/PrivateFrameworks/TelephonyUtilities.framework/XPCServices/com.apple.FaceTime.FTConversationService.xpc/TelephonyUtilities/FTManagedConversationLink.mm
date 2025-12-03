@interface FTManagedConversationLink
+ (id)managedConversationLinkForTUConversationLinkDescriptor:(id)descriptor inManagedObjectContext:(id)context;
- (FTManagedConversationLink)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (NSSet)tuInvitedHandles;
- (TUConversationLinkDescriptor)tuConversationLinkDescriptor;
- (id)description;
- (void)updateWithDescriptor:(id)descriptor;
@end

@implementation FTManagedConversationLink

+ (id)managedConversationLinkForTUConversationLinkDescriptor:(id)descriptor inManagedObjectContext:(id)context
{
  descriptorCopy = descriptor;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v10 = [entitiesByName objectForKeyedSubscript:@"ConversationLink"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v13 = FTCServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412546;
        v32 = @"ConversationLink";
        v33 = 2112;
        v34 = contextCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", &v31, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];
    }

    v12 = v11;
    invitedHandles = [descriptorCopy invitedHandles];
    if (invitedHandles)
    {
      v15 = [FTManagedHandle managedHandlesForTUHandles:invitedHandles inManagedObjectContext:contextCopy];
    }

    else
    {
      v15 = 0;
    }

    [v12 setActivated:{objc_msgSend(descriptorCopy, "isActivated")}];
    creationDate = [descriptorCopy creationDate];
    [v12 setCreationDate:creationDate];

    deletionDate = [descriptorCopy deletionDate];
    [v12 setDeletionDate:deletionDate];

    expirationDate = [descriptorCopy expirationDate];
    [v12 setExpirationDate:expirationDate];

    groupUUID = [descriptorCopy groupUUID];
    [v12 setGroupUUID:groupUUID];

    [v12 setInvitedHandles:v15];
    originator = [descriptorCopy originator];
    identifier = [originator identifier];
    [v12 setOriginatorIdentifier:identifier];

    originator2 = [descriptorCopy originator];
    handle = [originator2 handle];
    v24 = [FTManagedHandle managedHandleForTUHandle:handle inManagedObjectContext:contextCopy];
    [v12 setOriginatorHandle:v24];

    originator3 = [descriptorCopy originator];
    [v12 setOriginatorRevision:{objc_msgSend(originator3, "revision")}];

    pseudonym = [descriptorCopy pseudonym];
    [v12 setPseudonym:pseudonym];

    publicKey = [descriptorCopy publicKey];
    [v12 setPublicKey:publicKey];

    privateKey = [descriptorCopy privateKey];
    [v12 setPrivateKey:privateKey];

    name = [descriptorCopy name];
    [v12 setName:name];

    [v12 setLifetimeType:{objc_msgSend(descriptorCopy, "linkLifetimeScope")}];
    [v12 setDeleteReason:{objc_msgSend(descriptorCopy, "deleteReason")}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p ", objc_opt_class(), self];
  [v3 appendFormat:@" isActivated=%d", -[FTManagedConversationLink activated](self, "activated")];
  v4 = objc_opt_self();
  pseudonym = [v4 pseudonym];

  if (pseudonym)
  {
    v6 = objc_opt_self();
    pseudonym2 = [v6 pseudonym];
    [v3 appendFormat:@" self.pseudonym=%@", pseudonym2];
  }

  v8 = objc_opt_self();
  creationDate = [v8 creationDate];

  if (creationDate)
  {
    v10 = objc_opt_self();
    creationDate2 = [v10 creationDate];
    [v3 appendFormat:@" self.creationDate=%@", creationDate2];
  }

  v12 = objc_opt_self();
  deletionDate = [v12 deletionDate];

  if (deletionDate)
  {
    v14 = objc_opt_self();
    deletionDate2 = [v14 deletionDate];
    [v3 appendFormat:@" self.deletionDate=%@", deletionDate2];
  }

  v16 = objc_opt_self();
  privateKey = [v16 privateKey];

  if (privateKey)
  {
    v18 = objc_opt_self();
    privateKey2 = [v18 privateKey];
    [v3 appendFormat:@" self.privateKey=%@", privateKey2];
  }

  v20 = objc_opt_self();
  expirationDate = [v20 expirationDate];

  if (expirationDate)
  {
    v22 = objc_opt_self();
    expirationDate2 = [v22 expirationDate];
    [v3 appendFormat:@" self.expirationDate=%@", expirationDate2];
  }

  groupUUID = [(FTManagedConversationLink *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", groupUUID];

  originatorIdentifier = [(FTManagedConversationLink *)self originatorIdentifier];
  [v3 appendFormat:@" originatorIdentifier=%@", originatorIdentifier];

  v26 = objc_opt_self();
  name = [v26 name];

  if (name)
  {
    v28 = objc_opt_self();
    name2 = [v28 name];
    [v3 appendFormat:@" self.name=%@", name2];
  }

  [v3 appendFormat:@" deleteReason=%hd", -[FTManagedConversationLink deleteReason](self, "deleteReason")];
  [v3 appendString:@">"];
  v30 = [v3 copy];

  return v30;
}

- (void)updateWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  -[FTManagedConversationLink setActivated:](self, "setActivated:", [descriptorCopy isActivated]);
  creationDate = [descriptorCopy creationDate];
  [(FTManagedConversationLink *)self setCreationDate:creationDate];

  deletionDate = [descriptorCopy deletionDate];
  [(FTManagedConversationLink *)self setDeletionDate:deletionDate];

  expirationDate = [descriptorCopy expirationDate];
  [(FTManagedConversationLink *)self setExpirationDate:expirationDate];

  groupUUID = [descriptorCopy groupUUID];
  [(FTManagedConversationLink *)self setGroupUUID:groupUUID];

  originator = [descriptorCopy originator];
  identifier = [originator identifier];
  [(FTManagedConversationLink *)self setOriginatorIdentifier:identifier];

  originator2 = [descriptorCopy originator];
  -[FTManagedConversationLink setOriginatorRevision:](self, "setOriginatorRevision:", [originator2 revision]);

  pseudonym = [descriptorCopy pseudonym];
  [(FTManagedConversationLink *)self setPseudonym:pseudonym];

  publicKey = [descriptorCopy publicKey];
  [(FTManagedConversationLink *)self setPublicKey:publicKey];

  privateKey = [descriptorCopy privateKey];
  [(FTManagedConversationLink *)self setPrivateKey:privateKey];

  name = [descriptorCopy name];
  [(FTManagedConversationLink *)self setName:name];

  -[FTManagedConversationLink setLifetimeType:](self, "setLifetimeType:", [descriptorCopy linkLifetimeScope]);
  -[FTManagedConversationLink setDeleteReason:](self, "setDeleteReason:", [descriptorCopy deleteReason]);
  originator3 = [descriptorCopy originator];
  handle = [originator3 handle];
  originatorHandle = [(FTManagedConversationLink *)self originatorHandle];
  tuHandle = [originatorHandle tuHandle];
  v19 = [handle isEqualToHandle:tuHandle];

  if ((v19 & 1) == 0)
  {
    originator4 = [descriptorCopy originator];
    handle2 = [originator4 handle];
    managedObjectContext = [(FTManagedConversationLink *)self managedObjectContext];
    v23 = [FTManagedHandle managedHandleForTUHandle:handle2 inManagedObjectContext:managedObjectContext];
    [(FTManagedConversationLink *)self setOriginatorHandle:v23];
  }

  invitedHandles = [descriptorCopy invitedHandles];
  if (invitedHandles)
  {
    v25 = invitedHandles;
    tuInvitedHandles = [(FTManagedConversationLink *)self tuInvitedHandles];
    invitedHandles2 = [descriptorCopy invitedHandles];
    v28 = [tuInvitedHandles isEqualToSet:invitedHandles2];

    if ((v28 & 1) == 0)
    {
      invitedHandles3 = [descriptorCopy invitedHandles];
      managedObjectContext2 = [(FTManagedConversationLink *)self managedObjectContext];
      v31 = [FTManagedHandle managedHandlesForTUHandles:invitedHandles3 inManagedObjectContext:managedObjectContext2];

      [(FTManagedConversationLink *)self setInvitedHandles:v31];
    }
  }
}

- (TUConversationLinkDescriptor)tuConversationLinkDescriptor
{
  v3 = [TUConversationLinkOriginator alloc];
  originatorIdentifier = [(FTManagedConversationLink *)self originatorIdentifier];
  originatorRevision = [(FTManagedConversationLink *)self originatorRevision];
  originatorHandle = [(FTManagedConversationLink *)self originatorHandle];
  tuHandle = [originatorHandle tuHandle];
  v8 = [v3 initWithIdentifier:originatorIdentifier revision:originatorRevision handle:tuHandle];

  v9 = [TUMutableConversationLinkDescriptor alloc];
  groupUUID = [(FTManagedConversationLink *)self groupUUID];
  pseudonym = [(FTManagedConversationLink *)self pseudonym];
  publicKey = [(FTManagedConversationLink *)self publicKey];
  v13 = [v9 initWithGroupUUID:groupUUID originator:v8 pseudonym:pseudonym publicKey:publicKey];

  [v13 setActivated:{-[FTManagedConversationLink activated](self, "activated")}];
  creationDate = [(FTManagedConversationLink *)self creationDate];
  [v13 setCreationDate:creationDate];

  deletionDate = [(FTManagedConversationLink *)self deletionDate];
  [v13 setDeletionDate:deletionDate];

  expirationDate = [(FTManagedConversationLink *)self expirationDate];
  [v13 setExpirationDate:expirationDate];

  tuInvitedHandles = [(FTManagedConversationLink *)self tuInvitedHandles];
  [v13 setInvitedHandles:tuInvitedHandles];

  name = [(FTManagedConversationLink *)self name];
  [v13 setName:name];

  privateKey = [(FTManagedConversationLink *)self privateKey];
  [v13 setPrivateKey:privateKey];

  [v13 setLinkLifetimeScope:{-[FTManagedConversationLink lifetimeType](self, "lifetimeType")}];
  [v13 setDeleteReason:{-[FTManagedConversationLink deleteReason](self, "deleteReason")}];
  v20 = [v13 copy];

  return v20;
}

- (NSSet)tuInvitedHandles
{
  invitedHandles = [(FTManagedConversationLink *)self invitedHandles];
  v3 = invitedHandles;
  if (invitedHandles)
  {
    v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [invitedHandles count]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          tuHandle = [*(*(&v13 + 1) + 8 * i) tuHandle];
          if (tuHandle)
          {
            [v4 addObject:tuHandle];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = [v4 copy];

  return v11;
}

- (FTManagedConversationLink)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FTManagedConversationLink();
  return [(FTManagedConversationLink *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end