@interface CSDMessagingConversationActivity
+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)activity fromConversation:(id)conversation forStorage:(BOOL)storage;
+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)activity handle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (TUConversationActivity)tuConversationActivity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)mappedLifetimePolicy:(int64_t)policy;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsSystemActivity:(BOOL)activity;
- (void)setHasUpdatedDateEpochTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationActivity

+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)activity fromConversation:(id)conversation forStorage:(BOOL)storage
{
  storageCopy = storage;
  activityCopy = activity;
  conversationCopy = conversation;
  v9 = objc_alloc_init(CSDMessagingConversationActivity);
  uUID = [activityCopy UUID];
  uUIDString = [uUID UUIDString];
  [(CSDMessagingConversationActivity *)v9 setIdentifierUUIDString:uUIDString];

  applicationContext = [activityCopy applicationContext];
  [(CSDMessagingConversationActivity *)v9 setApplicationContext:applicationContext];

  bundleIdentifier = [activityCopy bundleIdentifier];
  [(CSDMessagingConversationActivity *)v9 setBundleIdentifier:bundleIdentifier];

  activityIdentifier = [activityCopy activityIdentifier];
  [(CSDMessagingConversationActivity *)v9 setActivityIdentifier:activityIdentifier];

  metadata = [activityCopy metadata];
  context = [metadata context];
  v17 = [CSDMessagingConversationActivityContext activityContextWithTUActivityContext:context];
  [(CSDMessagingConversationActivity *)v9 setActivityContext:v17];

  localMember = [conversationCopy localMember];

  handle = [localMember handle];
  v20 = [CSDMessagingHandle handleWithTUHandle:handle];
  [(CSDMessagingConversationActivity *)v9 setOriginatorHandle:v20];

  timestamp = [activityCopy timestamp];
  [timestamp timeIntervalSince1970];
  [(CSDMessagingConversationActivity *)v9 setUpdatedDateEpochTime:?];

  fallbackApplicationName = [activityCopy fallbackApplicationName];
  [(CSDMessagingConversationActivity *)v9 setFallbackApplicationName:fallbackApplicationName];

  -[CSDMessagingConversationActivity setIsSystemActivity:](v9, "setIsSystemActivity:", [activityCopy isSystemActivity]);
  timestamp2 = [activityCopy timestamp];
  [timestamp2 timeIntervalSinceReferenceDate];
  [(CSDMessagingConversationActivity *)v9 setTimestampAsTimeIntervalSinceReferenceDate:?];

  v24 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
  metadata2 = [activityCopy metadata];
  title = [metadata2 title];
  [(CSDMessagingConversationActivityMetadata *)v24 setTitle:title];

  metadata3 = [activityCopy metadata];
  subTitle = [metadata3 subTitle];
  [(CSDMessagingConversationActivityMetadata *)v24 setSubtitle:subTitle];

  metadata4 = [activityCopy metadata];
  fallbackURL = [metadata4 fallbackURL];
  absoluteString = [fallbackURL absoluteString];
  [(CSDMessagingConversationActivityMetadata *)v24 setFallbackURL:absoluteString];

  metadata5 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setSupportsContinuationOnTV:](v24, "setSupportsContinuationOnTV:", [metadata5 supportsContinuationOnTV]);

  metadata6 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setPreferredBroadcastingAttributes:](v24, "setPreferredBroadcastingAttributes:", [metadata6 preferredBroadcastingAttributes]);

  metadata7 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setLifetimePolicy:](v24, "setLifetimePolicy:", [metadata7 lifetimePolicy]);

  v35 = objc_alloc_init(CSDMessagingConversationActivitySceneAssociationBehavior);
  metadata8 = [activityCopy metadata];
  sceneAssociationBehavior = [metadata8 sceneAssociationBehavior];
  targetContentIdentifier = [sceneAssociationBehavior targetContentIdentifier];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v35 setTargetContentIdentifier:targetContentIdentifier];

  metadata9 = [activityCopy metadata];
  sceneAssociationBehavior2 = [metadata9 sceneAssociationBehavior];
  -[CSDMessagingConversationActivitySceneAssociationBehavior setShouldAssociateScene:](v35, "setShouldAssociateScene:", [sceneAssociationBehavior2 shouldAssociateScene]);

  metadata10 = [activityCopy metadata];
  sceneAssociationBehavior3 = [metadata10 sceneAssociationBehavior];
  preferredSceneSessionRole = [sceneAssociationBehavior3 preferredSceneSessionRole];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v35 setPreferredSceneSessionRole:preferredSceneSessionRole];

  [(CSDMessagingConversationActivityMetadata *)v24 setSceneAssociationBehavior:v35];
  [(CSDMessagingConversationActivity *)v9 setActivityMetadata:v24];
  if (storageCopy)
  {
    trustedFromHandle = [activityCopy trustedFromHandle];

    if (trustedFromHandle)
    {
      trustedFromHandle2 = [activityCopy trustedFromHandle];
      v46 = [CSDMessagingHandle handleWithTUHandle:trustedFromHandle2];
      [(CSDMessagingConversationActivity *)v9 setFromHandle:v46];
    }
  }

  return v9;
}

+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)activity handle:(id)handle
{
  handleCopy = handle;
  activityCopy = activity;
  v7 = objc_alloc_init(CSDMessagingConversationActivity);
  uUID = [activityCopy UUID];
  uUIDString = [uUID UUIDString];
  [(CSDMessagingConversationActivity *)v7 setIdentifierUUIDString:uUIDString];

  applicationContext = [activityCopy applicationContext];
  [(CSDMessagingConversationActivity *)v7 setApplicationContext:applicationContext];

  bundleIdentifier = [activityCopy bundleIdentifier];
  [(CSDMessagingConversationActivity *)v7 setBundleIdentifier:bundleIdentifier];

  activityIdentifier = [activityCopy activityIdentifier];
  [(CSDMessagingConversationActivity *)v7 setActivityIdentifier:activityIdentifier];

  metadata = [activityCopy metadata];
  context = [metadata context];
  v15 = [CSDMessagingConversationActivityContext activityContextWithTUActivityContext:context];
  [(CSDMessagingConversationActivity *)v7 setActivityContext:v15];

  v16 = [CSDMessagingHandle handleWithTUHandle:handleCopy];

  [(CSDMessagingConversationActivity *)v7 setOriginatorHandle:v16];
  timestamp = [activityCopy timestamp];
  [timestamp timeIntervalSince1970];
  [(CSDMessagingConversationActivity *)v7 setUpdatedDateEpochTime:?];

  fallbackApplicationName = [activityCopy fallbackApplicationName];
  [(CSDMessagingConversationActivity *)v7 setFallbackApplicationName:fallbackApplicationName];

  -[CSDMessagingConversationActivity setIsSystemActivity:](v7, "setIsSystemActivity:", [activityCopy isSystemActivity]);
  timestamp2 = [activityCopy timestamp];
  [timestamp2 timeIntervalSinceReferenceDate];
  [(CSDMessagingConversationActivity *)v7 setTimestampAsTimeIntervalSinceReferenceDate:?];

  v20 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
  metadata2 = [activityCopy metadata];
  title = [metadata2 title];
  [(CSDMessagingConversationActivityMetadata *)v20 setTitle:title];

  metadata3 = [activityCopy metadata];
  subTitle = [metadata3 subTitle];
  [(CSDMessagingConversationActivityMetadata *)v20 setSubtitle:subTitle];

  metadata4 = [activityCopy metadata];
  imageData = [metadata4 imageData];
  [(CSDMessagingConversationActivityMetadata *)v20 setImage:imageData];

  metadata5 = [activityCopy metadata];
  fallbackURL = [metadata5 fallbackURL];
  absoluteString = [fallbackURL absoluteString];
  [(CSDMessagingConversationActivityMetadata *)v20 setFallbackURL:absoluteString];

  metadata6 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setSupportsContinuationOnTV:](v20, "setSupportsContinuationOnTV:", [metadata6 supportsContinuationOnTV]);

  metadata7 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setPreferredBroadcastingAttributes:](v20, "setPreferredBroadcastingAttributes:", [metadata7 preferredBroadcastingAttributes]);

  metadata8 = [activityCopy metadata];
  -[CSDMessagingConversationActivityMetadata setLifetimePolicy:](v20, "setLifetimePolicy:", [metadata8 lifetimePolicy]);

  v33 = objc_alloc_init(CSDMessagingConversationActivitySceneAssociationBehavior);
  metadata9 = [activityCopy metadata];
  sceneAssociationBehavior = [metadata9 sceneAssociationBehavior];
  targetContentIdentifier = [sceneAssociationBehavior targetContentIdentifier];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v33 setTargetContentIdentifier:targetContentIdentifier];

  metadata10 = [activityCopy metadata];
  sceneAssociationBehavior2 = [metadata10 sceneAssociationBehavior];
  -[CSDMessagingConversationActivitySceneAssociationBehavior setShouldAssociateScene:](v33, "setShouldAssociateScene:", [sceneAssociationBehavior2 shouldAssociateScene]);

  metadata11 = [activityCopy metadata];
  sceneAssociationBehavior3 = [metadata11 sceneAssociationBehavior];
  preferredSceneSessionRole = [sceneAssociationBehavior3 preferredSceneSessionRole];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v33 setPreferredSceneSessionRole:preferredSceneSessionRole];

  [(CSDMessagingConversationActivityMetadata *)v20 setSceneAssociationBehavior:v33];
  metadata12 = [activityCopy metadata];

  -[CSDMessagingConversationActivityMetadata setSupportsActivityPreviews:](v20, "setSupportsActivityPreviews:", [metadata12 supportsActivityPreviews]);
  [(CSDMessagingConversationActivity *)v7 setActivityMetadata:v20];

  return v7;
}

- (TUConversationActivity)tuConversationActivity
{
  v3 = +[TUConversationActivitySceneAssociationBehavior defaultBehavior];
  activityMetadata = [(CSDMessagingConversationActivity *)self activityMetadata];
  hasSceneAssociationBehavior = [activityMetadata hasSceneAssociationBehavior];

  if (hasSceneAssociationBehavior)
  {
    v6 = [TUConversationActivitySceneAssociationBehavior alloc];
    activityMetadata2 = [(CSDMessagingConversationActivity *)self activityMetadata];
    sceneAssociationBehavior = [activityMetadata2 sceneAssociationBehavior];
    targetContentIdentifier = [sceneAssociationBehavior targetContentIdentifier];
    activityMetadata3 = [(CSDMessagingConversationActivity *)self activityMetadata];
    sceneAssociationBehavior2 = [activityMetadata3 sceneAssociationBehavior];
    shouldAssociateScene = [sceneAssociationBehavior2 shouldAssociateScene];
    [(CSDMessagingConversationActivity *)self activityMetadata];
    v12 = v11 = v3;
    sceneAssociationBehavior3 = [v12 sceneAssociationBehavior];
    preferredSceneSessionRole = [sceneAssociationBehavior3 preferredSceneSessionRole];
    v15 = [v6 initWithTargetContentIdentifier:targetContentIdentifier shouldAssociateScene:shouldAssociateScene preferredSceneSessionRole:preferredSceneSessionRole];

    v56 = v15;
  }

  else
  {
    v56 = v3;
  }

  v47 = [TUConversationActivityMetadata alloc];
  activityContext = [(CSDMessagingConversationActivity *)self activityContext];
  tuConversationActivityContext = [activityContext tuConversationActivityContext];
  activityMetadata4 = [(CSDMessagingConversationActivity *)self activityMetadata];
  fallbackURL = [activityMetadata4 fallbackURL];
  v46 = [NSURL URLWithString:fallbackURL];
  activityMetadata5 = [(CSDMessagingConversationActivity *)self activityMetadata];
  supportsContinuationOnTV = [activityMetadata5 supportsContinuationOnTV];
  activityMetadata6 = [(CSDMessagingConversationActivity *)self activityMetadata];
  title = [activityMetadata6 title];
  activityMetadata7 = [(CSDMessagingConversationActivity *)self activityMetadata];
  subtitle = [activityMetadata7 subtitle];
  activityMetadata8 = [(CSDMessagingConversationActivity *)self activityMetadata];
  image = [activityMetadata8 image];
  activityMetadata9 = [(CSDMessagingConversationActivity *)self activityMetadata];
  preferredBroadcastingAttributes = [activityMetadata9 preferredBroadcastingAttributes];
  activityMetadata10 = [(CSDMessagingConversationActivity *)self activityMetadata];
  supportsActivityPreviews = [activityMetadata10 supportsActivityPreviews];
  activityMetadata11 = [(CSDMessagingConversationActivity *)self activityMetadata];
  LOBYTE(v42) = supportsActivityPreviews;
  v24 = [v47 initWithContext:tuConversationActivityContext linkMetadata:0 fallbackURL:v46 invitationURL:0 supportsContinuationOnTV:supportsContinuationOnTV title:title subTitle:subtitle imageData:image preferredBroadcastingAttributes:preferredBroadcastingAttributes sceneAssociationBehavior:v56 supportsActivityPreviews:v42 lifetimePolicy:{-[CSDMessagingConversationActivity mappedLifetimePolicy:](self, "mappedLifetimePolicy:", objc_msgSend(activityMetadata11, "lifetimePolicy"))}];

  v25 = v24;
  v26 = [TUConversationActivity alloc];
  bundleIdentifier = [(CSDMessagingConversationActivity *)self bundleIdentifier];
  applicationContext = [(CSDMessagingConversationActivity *)self applicationContext];
  v29 = [NSUUID alloc];
  identifierUUIDString = [(CSDMessagingConversationActivity *)self identifierUUIDString];
  v31 = [v29 initWithUUIDString:identifierUUIDString];
  activityIdentifier = [(CSDMessagingConversationActivity *)self activityIdentifier];
  fallbackApplicationName = [(CSDMessagingConversationActivity *)self fallbackApplicationName];
  v34 = [v26 initWithBundleIdentifier:bundleIdentifier metadata:v25 applicationContext:applicationContext uuid:v31 activityIdentifier:activityIdentifier fallbackApplicationName:fallbackApplicationName];

  originatorHandle = [(CSDMessagingConversationActivity *)self originatorHandle];
  tuHandle = [originatorHandle tuHandle];
  [v34 setOriginator:tuHandle];

  fromHandle = [(CSDMessagingConversationActivity *)self fromHandle];
  tuHandle2 = [fromHandle tuHandle];
  [v34 setTrustedFromHandle:tuHandle2];

  [v34 setSystemActivity:{-[CSDMessagingConversationActivity isSystemActivity](self, "isSystemActivity")}];
  if ([(CSDMessagingConversationActivity *)self hasTimestampAsTimeIntervalSinceReferenceDate])
  {
    [(CSDMessagingConversationActivity *)self timestampAsTimeIntervalSinceReferenceDate];
    [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [(CSDMessagingConversationActivity *)self updatedDateEpochTime];
    [NSDate dateWithTimeIntervalSince1970:?];
  }
  v39 = ;
  [v34 setTimestamp:v39];

  sanitizedCopy = [v34 sanitizedCopy];

  return sanitizedCopy;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationActivity;
  v3 = [(CSDMessagingConversationActivity *)&v8 description];
  dictionaryRepresentation = [(CSDMessagingConversationActivity *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (int64_t)mappedLifetimePolicy:(int64_t)policy
{
  policyCopy = policy;
  if ((policy - 1) >= 2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = policyCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Couldn't convert TUConversationActivityLifetimePolicy=%ld to known value, setting to TUConversationActivityLifetimePolicyUnknown", &v6, 0xCu);
    }

    return 0;
  }

  return policyCopy;
}

- (void)setHasUpdatedDateEpochTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsSystemActivity:(BOOL)activity
{
  if (activity)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString)
  {
    [v3 setObject:identifierUUIDString forKey:@"identifierUUIDString"];
  }

  applicationContext = self->_applicationContext;
  if (applicationContext)
  {
    [v4 setObject:applicationContext forKey:@"applicationContext"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  activityIdentifier = self->_activityIdentifier;
  if (activityIdentifier)
  {
    [v4 setObject:activityIdentifier forKey:@"activityIdentifier"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  activityContext = self->_activityContext;
  if (activityContext)
  {
    dictionaryRepresentation = [(CSDMessagingConversationActivityContext *)activityContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"activityContext"];
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle)
  {
    dictionaryRepresentation2 = [(CSDMessagingHandle *)originatorHandle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"originatorHandle"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [NSNumber numberWithDouble:self->_updatedDateEpochTime];
    [v4 setObject:v14 forKey:@"updatedDateEpochTime"];
  }

  fallbackApplicationName = self->_fallbackApplicationName;
  if (fallbackApplicationName)
  {
    [v4 setObject:fallbackApplicationName forKey:@"fallbackApplicationName"];
  }

  activityMetadata = self->_activityMetadata;
  if (activityMetadata)
  {
    dictionaryRepresentation3 = [(CSDMessagingConversationActivityMetadata *)activityMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"activityMetadata"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v19 = [NSNumber numberWithBool:self->_isSystemActivity];
    [v4 setObject:v19 forKey:@"isSystemActivity"];

    has = self->_has;
  }

  if (has)
  {
    v20 = [NSNumber numberWithDouble:self->_timestampAsTimeIntervalSinceReferenceDate];
    [v4 setObject:v20 forKey:@"timestampAsTimeIntervalSinceReferenceDate"];
  }

  fromHandle = self->_fromHandle;
  if (fromHandle)
  {
    dictionaryRepresentation4 = [(CSDMessagingHandle *)fromHandle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"fromHandle"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_identifierUUIDString)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_applicationContext)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_activityIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if (self->_activityContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_originatorHandle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    updatedDateEpochTime = self->_updatedDateEpochTime;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_fallbackApplicationName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_activityMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    isSystemActivity = self->_isSystemActivity;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
  }

  if (has)
  {
    timestampAsTimeIntervalSinceReferenceDate = self->_timestampAsTimeIntervalSinceReferenceDate;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_fromHandle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifierUUIDString)
  {
    [toCopy setIdentifierUUIDString:?];
    toCopy = v6;
  }

  if (self->_applicationContext)
  {
    [v6 setApplicationContext:?];
    toCopy = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
    toCopy = v6;
  }

  if (self->_activityIdentifier)
  {
    [v6 setActivityIdentifier:?];
    toCopy = v6;
  }

  if (self->_metadata)
  {
    [v6 setMetadata:?];
    toCopy = v6;
  }

  if (self->_activityContext)
  {
    [v6 setActivityContext:?];
    toCopy = v6;
  }

  if (self->_originatorHandle)
  {
    [v6 setOriginatorHandle:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_updatedDateEpochTime;
    *(toCopy + 108) |= 2u;
  }

  if (self->_fallbackApplicationName)
  {
    [v6 setFallbackApplicationName:?];
    toCopy = v6;
  }

  if (self->_activityMetadata)
  {
    [v6 setActivityMetadata:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 104) = self->_isSystemActivity;
    *(toCopy + 108) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timestampAsTimeIntervalSinceReferenceDate;
    *(toCopy + 108) |= 1u;
  }

  if (self->_fromHandle)
  {
    [v6 setFromHandle:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifierUUIDString copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSData *)self->_applicationContext copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_activityIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_metadata copyWithZone:zone];
  v15 = v5[11];
  v5[11] = v14;

  v16 = [(CSDMessagingConversationActivityContext *)self->_activityContext copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(CSDMessagingHandle *)self->_originatorHandle copyWithZone:zone];
  v19 = v5[12];
  v5[12] = v18;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = *&self->_updatedDateEpochTime;
    *(v5 + 108) |= 2u;
  }

  v20 = [(NSString *)self->_fallbackApplicationName copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(CSDMessagingConversationActivityMetadata *)self->_activityMetadata copyWithZone:zone];
  v23 = v5[5];
  v5[5] = v22;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 104) = self->_isSystemActivity;
    *(v5 + 108) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_timestampAsTimeIntervalSinceReferenceDate;
    *(v5 + 108) |= 1u;
  }

  v25 = [(CSDMessagingHandle *)self->_fromHandle copyWithZone:zone];
  v26 = v5[9];
  v5[9] = v25;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString | *(equalCopy + 10))
  {
    if (![(NSString *)identifierUUIDString isEqual:?])
    {
      goto LABEL_39;
    }
  }

  applicationContext = self->_applicationContext;
  if (applicationContext | *(equalCopy + 6))
  {
    if (![(NSData *)applicationContext isEqual:?])
    {
      goto LABEL_39;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  activityIdentifier = self->_activityIdentifier;
  if (activityIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)activityIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 11))
  {
    if (![(NSData *)metadata isEqual:?])
    {
      goto LABEL_39;
    }
  }

  activityContext = self->_activityContext;
  if (activityContext | *(equalCopy + 3))
  {
    if (![(CSDMessagingConversationActivityContext *)activityContext isEqual:?])
    {
      goto LABEL_39;
    }
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle | *(equalCopy + 12))
  {
    if (![(CSDMessagingHandle *)originatorHandle isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v12 = *(equalCopy + 108);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0 || self->_updatedDateEpochTime != *(equalCopy + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_39;
  }

  fallbackApplicationName = self->_fallbackApplicationName;
  if (fallbackApplicationName | *(equalCopy + 8) && ![(NSString *)fallbackApplicationName isEqual:?])
  {
    goto LABEL_39;
  }

  activityMetadata = self->_activityMetadata;
  if (activityMetadata | *(equalCopy + 5))
  {
    if (![(CSDMessagingConversationActivityMetadata *)activityMetadata isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v15 = *(equalCopy + 108);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 108) & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

  if ((*(equalCopy + 108) & 4) == 0)
  {
    goto LABEL_39;
  }

  v16 = *(equalCopy + 104);
  if (self->_isSystemActivity)
  {
    if ((*(equalCopy + 104) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_39;
  }

LABEL_27:
  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) == 0 || self->_timestampAsTimeIntervalSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 108))
  {
    goto LABEL_39;
  }

  fromHandle = self->_fromHandle;
  if (fromHandle | *(equalCopy + 9))
  {
    v18 = [(CSDMessagingHandle *)fromHandle isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_40:

  return v18;
}

- (unint64_t)hash
{
  v25 = [(NSString *)self->_identifierUUIDString hash];
  v24 = [(NSData *)self->_applicationContext hash];
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSString *)self->_activityIdentifier hash];
  v5 = [(NSData *)self->_metadata hash];
  v6 = [(CSDMessagingConversationActivityContext *)self->_activityContext hash];
  v7 = [(CSDMessagingHandle *)self->_originatorHandle hash];
  if ((*&self->_has & 2) != 0)
  {
    updatedDateEpochTime = self->_updatedDateEpochTime;
    if (updatedDateEpochTime < 0.0)
    {
      updatedDateEpochTime = -updatedDateEpochTime;
    }

    *v8.i64 = floor(updatedDateEpochTime + 0.5);
    v12 = (updatedDateEpochTime - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(NSString *)self->_fallbackApplicationName hash];
  v15 = [(CSDMessagingConversationActivityMetadata *)self->_activityMetadata hash];
  if ((*&self->_has & 4) != 0)
  {
    v18 = 2654435761 * self->_isSystemActivity;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_16:
    v22 = 0;
    return v24 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15 ^ v18 ^ v22 ^ [(CSDMessagingHandle *)self->_fromHandle hash];
  }

  v18 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  timestampAsTimeIntervalSinceReferenceDate = self->_timestampAsTimeIntervalSinceReferenceDate;
  if (timestampAsTimeIntervalSinceReferenceDate < 0.0)
  {
    timestampAsTimeIntervalSinceReferenceDate = -timestampAsTimeIntervalSinceReferenceDate;
  }

  *v16.i64 = floor(timestampAsTimeIntervalSinceReferenceDate + 0.5);
  v20 = (timestampAsTimeIntervalSinceReferenceDate - *v16.i64) * 1.84467441e19;
  *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v22 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
  if (v20 >= 0.0)
  {
    if (v20 > 0.0)
    {
      v22 += v20;
    }
  }

  else
  {
    v22 -= fabs(v20);
  }

  return v24 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15 ^ v18 ^ v22 ^ [(CSDMessagingHandle *)self->_fromHandle hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v14 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(CSDMessagingConversationActivity *)self setIdentifierUUIDString:?];
    fromCopy = v14;
  }

  if (*(fromCopy + 6))
  {
    [(CSDMessagingConversationActivity *)self setApplicationContext:?];
    fromCopy = v14;
  }

  if (*(fromCopy + 7))
  {
    [(CSDMessagingConversationActivity *)self setBundleIdentifier:?];
    fromCopy = v14;
  }

  if (*(fromCopy + 4))
  {
    [(CSDMessagingConversationActivity *)self setActivityIdentifier:?];
    fromCopy = v14;
  }

  if (*(fromCopy + 11))
  {
    [(CSDMessagingConversationActivity *)self setMetadata:?];
    fromCopy = v14;
  }

  activityContext = self->_activityContext;
  v6 = *(fromCopy + 3);
  if (activityContext)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    [(CSDMessagingConversationActivityContext *)activityContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    [(CSDMessagingConversationActivity *)self setActivityContext:?];
  }

  fromCopy = v14;
LABEL_17:
  originatorHandle = self->_originatorHandle;
  v8 = *(fromCopy + 12);
  if (originatorHandle)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(CSDMessagingHandle *)originatorHandle mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(CSDMessagingConversationActivity *)self setOriginatorHandle:?];
  }

  fromCopy = v14;
LABEL_23:
  if ((*(fromCopy + 108) & 2) != 0)
  {
    self->_updatedDateEpochTime = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 8))
  {
    [(CSDMessagingConversationActivity *)self setFallbackApplicationName:?];
    fromCopy = v14;
  }

  activityMetadata = self->_activityMetadata;
  v10 = *(fromCopy + 5);
  if (activityMetadata)
  {
    if (!v10)
    {
      goto LABEL_33;
    }

    [(CSDMessagingConversationActivityMetadata *)activityMetadata mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_33;
    }

    [(CSDMessagingConversationActivity *)self setActivityMetadata:?];
  }

  fromCopy = v14;
LABEL_33:
  v11 = *(fromCopy + 108);
  if ((v11 & 4) != 0)
  {
    self->_isSystemActivity = *(fromCopy + 104);
    *&self->_has |= 4u;
    v11 = *(fromCopy + 108);
  }

  if (v11)
  {
    self->_timestampAsTimeIntervalSinceReferenceDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  fromHandle = self->_fromHandle;
  v13 = *(fromCopy + 9);
  if (fromHandle)
  {
    if (!v13)
    {
      goto LABEL_43;
    }

    [(CSDMessagingHandle *)fromHandle mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_43;
    }

    [(CSDMessagingConversationActivity *)self setFromHandle:?];
  }

  fromCopy = v14;
LABEL_43:
}

@end