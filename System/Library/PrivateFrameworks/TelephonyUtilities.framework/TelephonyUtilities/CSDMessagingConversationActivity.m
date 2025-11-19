@interface CSDMessagingConversationActivity
+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)a3 fromConversation:(id)a4 forStorage:(BOOL)a5;
+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)a3 handle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (TUConversationActivity)tuConversationActivity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)mappedLifetimePolicy:(int64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsSystemActivity:(BOOL)a3;
- (void)setHasUpdatedDateEpochTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationActivity

+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)a3 fromConversation:(id)a4 forStorage:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(CSDMessagingConversationActivity);
  v10 = [v7 UUID];
  v11 = [v10 UUIDString];
  [(CSDMessagingConversationActivity *)v9 setIdentifierUUIDString:v11];

  v12 = [v7 applicationContext];
  [(CSDMessagingConversationActivity *)v9 setApplicationContext:v12];

  v13 = [v7 bundleIdentifier];
  [(CSDMessagingConversationActivity *)v9 setBundleIdentifier:v13];

  v14 = [v7 activityIdentifier];
  [(CSDMessagingConversationActivity *)v9 setActivityIdentifier:v14];

  v15 = [v7 metadata];
  v16 = [v15 context];
  v17 = [CSDMessagingConversationActivityContext activityContextWithTUActivityContext:v16];
  [(CSDMessagingConversationActivity *)v9 setActivityContext:v17];

  v18 = [v8 localMember];

  v19 = [v18 handle];
  v20 = [CSDMessagingHandle handleWithTUHandle:v19];
  [(CSDMessagingConversationActivity *)v9 setOriginatorHandle:v20];

  v21 = [v7 timestamp];
  [v21 timeIntervalSince1970];
  [(CSDMessagingConversationActivity *)v9 setUpdatedDateEpochTime:?];

  v22 = [v7 fallbackApplicationName];
  [(CSDMessagingConversationActivity *)v9 setFallbackApplicationName:v22];

  -[CSDMessagingConversationActivity setIsSystemActivity:](v9, "setIsSystemActivity:", [v7 isSystemActivity]);
  v23 = [v7 timestamp];
  [v23 timeIntervalSinceReferenceDate];
  [(CSDMessagingConversationActivity *)v9 setTimestampAsTimeIntervalSinceReferenceDate:?];

  v24 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
  v25 = [v7 metadata];
  v26 = [v25 title];
  [(CSDMessagingConversationActivityMetadata *)v24 setTitle:v26];

  v27 = [v7 metadata];
  v28 = [v27 subTitle];
  [(CSDMessagingConversationActivityMetadata *)v24 setSubtitle:v28];

  v29 = [v7 metadata];
  v30 = [v29 fallbackURL];
  v31 = [v30 absoluteString];
  [(CSDMessagingConversationActivityMetadata *)v24 setFallbackURL:v31];

  v32 = [v7 metadata];
  -[CSDMessagingConversationActivityMetadata setSupportsContinuationOnTV:](v24, "setSupportsContinuationOnTV:", [v32 supportsContinuationOnTV]);

  v33 = [v7 metadata];
  -[CSDMessagingConversationActivityMetadata setPreferredBroadcastingAttributes:](v24, "setPreferredBroadcastingAttributes:", [v33 preferredBroadcastingAttributes]);

  v34 = [v7 metadata];
  -[CSDMessagingConversationActivityMetadata setLifetimePolicy:](v24, "setLifetimePolicy:", [v34 lifetimePolicy]);

  v35 = objc_alloc_init(CSDMessagingConversationActivitySceneAssociationBehavior);
  v36 = [v7 metadata];
  v37 = [v36 sceneAssociationBehavior];
  v38 = [v37 targetContentIdentifier];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v35 setTargetContentIdentifier:v38];

  v39 = [v7 metadata];
  v40 = [v39 sceneAssociationBehavior];
  -[CSDMessagingConversationActivitySceneAssociationBehavior setShouldAssociateScene:](v35, "setShouldAssociateScene:", [v40 shouldAssociateScene]);

  v41 = [v7 metadata];
  v42 = [v41 sceneAssociationBehavior];
  v43 = [v42 preferredSceneSessionRole];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v35 setPreferredSceneSessionRole:v43];

  [(CSDMessagingConversationActivityMetadata *)v24 setSceneAssociationBehavior:v35];
  [(CSDMessagingConversationActivity *)v9 setActivityMetadata:v24];
  if (v5)
  {
    v44 = [v7 trustedFromHandle];

    if (v44)
    {
      v45 = [v7 trustedFromHandle];
      v46 = [CSDMessagingHandle handleWithTUHandle:v45];
      [(CSDMessagingConversationActivity *)v9 setFromHandle:v46];
    }
  }

  return v9;
}

+ (CSDMessagingConversationActivity)activityWithCSDConversationActivity:(id)a3 handle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CSDMessagingConversationActivity);
  v8 = [v6 UUID];
  v9 = [v8 UUIDString];
  [(CSDMessagingConversationActivity *)v7 setIdentifierUUIDString:v9];

  v10 = [v6 applicationContext];
  [(CSDMessagingConversationActivity *)v7 setApplicationContext:v10];

  v11 = [v6 bundleIdentifier];
  [(CSDMessagingConversationActivity *)v7 setBundleIdentifier:v11];

  v12 = [v6 activityIdentifier];
  [(CSDMessagingConversationActivity *)v7 setActivityIdentifier:v12];

  v13 = [v6 metadata];
  v14 = [v13 context];
  v15 = [CSDMessagingConversationActivityContext activityContextWithTUActivityContext:v14];
  [(CSDMessagingConversationActivity *)v7 setActivityContext:v15];

  v16 = [CSDMessagingHandle handleWithTUHandle:v5];

  [(CSDMessagingConversationActivity *)v7 setOriginatorHandle:v16];
  v17 = [v6 timestamp];
  [v17 timeIntervalSince1970];
  [(CSDMessagingConversationActivity *)v7 setUpdatedDateEpochTime:?];

  v18 = [v6 fallbackApplicationName];
  [(CSDMessagingConversationActivity *)v7 setFallbackApplicationName:v18];

  -[CSDMessagingConversationActivity setIsSystemActivity:](v7, "setIsSystemActivity:", [v6 isSystemActivity]);
  v19 = [v6 timestamp];
  [v19 timeIntervalSinceReferenceDate];
  [(CSDMessagingConversationActivity *)v7 setTimestampAsTimeIntervalSinceReferenceDate:?];

  v20 = objc_alloc_init(CSDMessagingConversationActivityMetadata);
  v21 = [v6 metadata];
  v22 = [v21 title];
  [(CSDMessagingConversationActivityMetadata *)v20 setTitle:v22];

  v23 = [v6 metadata];
  v24 = [v23 subTitle];
  [(CSDMessagingConversationActivityMetadata *)v20 setSubtitle:v24];

  v25 = [v6 metadata];
  v26 = [v25 imageData];
  [(CSDMessagingConversationActivityMetadata *)v20 setImage:v26];

  v27 = [v6 metadata];
  v28 = [v27 fallbackURL];
  v29 = [v28 absoluteString];
  [(CSDMessagingConversationActivityMetadata *)v20 setFallbackURL:v29];

  v30 = [v6 metadata];
  -[CSDMessagingConversationActivityMetadata setSupportsContinuationOnTV:](v20, "setSupportsContinuationOnTV:", [v30 supportsContinuationOnTV]);

  v31 = [v6 metadata];
  -[CSDMessagingConversationActivityMetadata setPreferredBroadcastingAttributes:](v20, "setPreferredBroadcastingAttributes:", [v31 preferredBroadcastingAttributes]);

  v32 = [v6 metadata];
  -[CSDMessagingConversationActivityMetadata setLifetimePolicy:](v20, "setLifetimePolicy:", [v32 lifetimePolicy]);

  v33 = objc_alloc_init(CSDMessagingConversationActivitySceneAssociationBehavior);
  v34 = [v6 metadata];
  v35 = [v34 sceneAssociationBehavior];
  v36 = [v35 targetContentIdentifier];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v33 setTargetContentIdentifier:v36];

  v37 = [v6 metadata];
  v38 = [v37 sceneAssociationBehavior];
  -[CSDMessagingConversationActivitySceneAssociationBehavior setShouldAssociateScene:](v33, "setShouldAssociateScene:", [v38 shouldAssociateScene]);

  v39 = [v6 metadata];
  v40 = [v39 sceneAssociationBehavior];
  v41 = [v40 preferredSceneSessionRole];
  [(CSDMessagingConversationActivitySceneAssociationBehavior *)v33 setPreferredSceneSessionRole:v41];

  [(CSDMessagingConversationActivityMetadata *)v20 setSceneAssociationBehavior:v33];
  v42 = [v6 metadata];

  -[CSDMessagingConversationActivityMetadata setSupportsActivityPreviews:](v20, "setSupportsActivityPreviews:", [v42 supportsActivityPreviews]);
  [(CSDMessagingConversationActivity *)v7 setActivityMetadata:v20];

  return v7;
}

- (TUConversationActivity)tuConversationActivity
{
  v3 = +[TUConversationActivitySceneAssociationBehavior defaultBehavior];
  v4 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v5 = [v4 hasSceneAssociationBehavior];

  if (v5)
  {
    v6 = [TUConversationActivitySceneAssociationBehavior alloc];
    v55 = [(CSDMessagingConversationActivity *)self activityMetadata];
    v53 = [v55 sceneAssociationBehavior];
    v7 = [v53 targetContentIdentifier];
    v8 = [(CSDMessagingConversationActivity *)self activityMetadata];
    v9 = [v8 sceneAssociationBehavior];
    v10 = [v9 shouldAssociateScene];
    [(CSDMessagingConversationActivity *)self activityMetadata];
    v12 = v11 = v3;
    v13 = [v12 sceneAssociationBehavior];
    v14 = [v13 preferredSceneSessionRole];
    v15 = [v6 initWithTargetContentIdentifier:v7 shouldAssociateScene:v10 preferredSceneSessionRole:v14];

    v56 = v15;
  }

  else
  {
    v56 = v3;
  }

  v47 = [TUConversationActivityMetadata alloc];
  v54 = [(CSDMessagingConversationActivity *)self activityContext];
  v16 = [v54 tuConversationActivityContext];
  v52 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v51 = [v52 fallbackURL];
  v46 = [NSURL URLWithString:v51];
  v50 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v45 = [v50 supportsContinuationOnTV];
  v49 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v43 = [v49 title];
  v48 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v17 = [v48 subtitle];
  v44 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v18 = [v44 image];
  v19 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v20 = [v19 preferredBroadcastingAttributes];
  v21 = [(CSDMessagingConversationActivity *)self activityMetadata];
  v22 = [v21 supportsActivityPreviews];
  v23 = [(CSDMessagingConversationActivity *)self activityMetadata];
  LOBYTE(v42) = v22;
  v24 = [v47 initWithContext:v16 linkMetadata:0 fallbackURL:v46 invitationURL:0 supportsContinuationOnTV:v45 title:v43 subTitle:v17 imageData:v18 preferredBroadcastingAttributes:v20 sceneAssociationBehavior:v56 supportsActivityPreviews:v42 lifetimePolicy:{-[CSDMessagingConversationActivity mappedLifetimePolicy:](self, "mappedLifetimePolicy:", objc_msgSend(v23, "lifetimePolicy"))}];

  v25 = v24;
  v26 = [TUConversationActivity alloc];
  v27 = [(CSDMessagingConversationActivity *)self bundleIdentifier];
  v28 = [(CSDMessagingConversationActivity *)self applicationContext];
  v29 = [NSUUID alloc];
  v30 = [(CSDMessagingConversationActivity *)self identifierUUIDString];
  v31 = [v29 initWithUUIDString:v30];
  v32 = [(CSDMessagingConversationActivity *)self activityIdentifier];
  v33 = [(CSDMessagingConversationActivity *)self fallbackApplicationName];
  v34 = [v26 initWithBundleIdentifier:v27 metadata:v25 applicationContext:v28 uuid:v31 activityIdentifier:v32 fallbackApplicationName:v33];

  v35 = [(CSDMessagingConversationActivity *)self originatorHandle];
  v36 = [v35 tuHandle];
  [v34 setOriginator:v36];

  v37 = [(CSDMessagingConversationActivity *)self fromHandle];
  v38 = [v37 tuHandle];
  [v34 setTrustedFromHandle:v38];

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

  v40 = [v34 sanitizedCopy];

  return v40;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CSDMessagingConversationActivity;
  v3 = [(CSDMessagingConversationActivity *)&v8 description];
  v4 = [(CSDMessagingConversationActivity *)self dictionaryRepresentation];
  v5 = TULoggableStringForObject();
  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (int64_t)mappedLifetimePolicy:(int64_t)a3
{
  v3 = a3;
  if ((a3 - 1) >= 2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Couldn't convert TUConversationActivityLifetimePolicy=%ld to known value, setting to TUConversationActivityLifetimePolicyUnknown", &v6, 0xCu);
    }

    return 0;
  }

  return v3;
}

- (void)setHasUpdatedDateEpochTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsSystemActivity:(BOOL)a3
{
  if (a3)
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
    v11 = [(CSDMessagingConversationActivityContext *)activityContext dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"activityContext"];
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle)
  {
    v13 = [(CSDMessagingHandle *)originatorHandle dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"originatorHandle"];
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
    v17 = [(CSDMessagingConversationActivityMetadata *)activityMetadata dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"activityMetadata"];
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
    v22 = [(CSDMessagingHandle *)fromHandle dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"fromHandle"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifierUUIDString)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_applicationContext)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_activityIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_activityContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_originatorHandle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    updatedDateEpochTime = self->_updatedDateEpochTime;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_fallbackApplicationName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_activityMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    isSystemActivity = self->_isSystemActivity;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
  }

  if (has)
  {
    timestampAsTimeIntervalSinceReferenceDate = self->_timestampAsTimeIntervalSinceReferenceDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_fromHandle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifierUUIDString)
  {
    [v4 setIdentifierUUIDString:?];
    v4 = v6;
  }

  if (self->_applicationContext)
  {
    [v6 setApplicationContext:?];
    v4 = v6;
  }

  if (self->_bundleIdentifier)
  {
    [v6 setBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_activityIdentifier)
  {
    [v6 setActivityIdentifier:?];
    v4 = v6;
  }

  if (self->_metadata)
  {
    [v6 setMetadata:?];
    v4 = v6;
  }

  if (self->_activityContext)
  {
    [v6 setActivityContext:?];
    v4 = v6;
  }

  if (self->_originatorHandle)
  {
    [v6 setOriginatorHandle:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = *&self->_updatedDateEpochTime;
    *(v4 + 108) |= 2u;
  }

  if (self->_fallbackApplicationName)
  {
    [v6 setFallbackApplicationName:?];
    v4 = v6;
  }

  if (self->_activityMetadata)
  {
    [v6 setActivityMetadata:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 104) = self->_isSystemActivity;
    *(v4 + 108) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_timestampAsTimeIntervalSinceReferenceDate;
    *(v4 + 108) |= 1u;
  }

  if (self->_fromHandle)
  {
    [v6 setFromHandle:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifierUUIDString copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSData *)self->_applicationContext copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_activityIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_metadata copyWithZone:a3];
  v15 = v5[11];
  v5[11] = v14;

  v16 = [(CSDMessagingConversationActivityContext *)self->_activityContext copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(CSDMessagingHandle *)self->_originatorHandle copyWithZone:a3];
  v19 = v5[12];
  v5[12] = v18;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = *&self->_updatedDateEpochTime;
    *(v5 + 108) |= 2u;
  }

  v20 = [(NSString *)self->_fallbackApplicationName copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(CSDMessagingConversationActivityMetadata *)self->_activityMetadata copyWithZone:a3];
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

  v25 = [(CSDMessagingHandle *)self->_fromHandle copyWithZone:a3];
  v26 = v5[9];
  v5[9] = v25;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  identifierUUIDString = self->_identifierUUIDString;
  if (identifierUUIDString | *(v4 + 10))
  {
    if (![(NSString *)identifierUUIDString isEqual:?])
    {
      goto LABEL_39;
    }
  }

  applicationContext = self->_applicationContext;
  if (applicationContext | *(v4 + 6))
  {
    if (![(NSData *)applicationContext isEqual:?])
    {
      goto LABEL_39;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 7))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  activityIdentifier = self->_activityIdentifier;
  if (activityIdentifier | *(v4 + 4))
  {
    if (![(NSString *)activityIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 11))
  {
    if (![(NSData *)metadata isEqual:?])
    {
      goto LABEL_39;
    }
  }

  activityContext = self->_activityContext;
  if (activityContext | *(v4 + 3))
  {
    if (![(CSDMessagingConversationActivityContext *)activityContext isEqual:?])
    {
      goto LABEL_39;
    }
  }

  originatorHandle = self->_originatorHandle;
  if (originatorHandle | *(v4 + 12))
  {
    if (![(CSDMessagingHandle *)originatorHandle isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v12 = *(v4 + 108);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 108) & 2) == 0 || self->_updatedDateEpochTime != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 108) & 2) != 0)
  {
    goto LABEL_39;
  }

  fallbackApplicationName = self->_fallbackApplicationName;
  if (fallbackApplicationName | *(v4 + 8) && ![(NSString *)fallbackApplicationName isEqual:?])
  {
    goto LABEL_39;
  }

  activityMetadata = self->_activityMetadata;
  if (activityMetadata | *(v4 + 5))
  {
    if (![(CSDMessagingConversationActivityMetadata *)activityMetadata isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v15 = *(v4 + 108);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 108) & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

  if ((*(v4 + 108) & 4) == 0)
  {
    goto LABEL_39;
  }

  v16 = *(v4 + 104);
  if (self->_isSystemActivity)
  {
    if ((*(v4 + 104) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 104))
  {
    goto LABEL_39;
  }

LABEL_27:
  if (*&self->_has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_timestampAsTimeIntervalSinceReferenceDate != *(v4 + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_39;
  }

  fromHandle = self->_fromHandle;
  if (fromHandle | *(v4 + 9))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (*(v4 + 10))
  {
    [(CSDMessagingConversationActivity *)self setIdentifierUUIDString:?];
    v4 = v14;
  }

  if (*(v4 + 6))
  {
    [(CSDMessagingConversationActivity *)self setApplicationContext:?];
    v4 = v14;
  }

  if (*(v4 + 7))
  {
    [(CSDMessagingConversationActivity *)self setBundleIdentifier:?];
    v4 = v14;
  }

  if (*(v4 + 4))
  {
    [(CSDMessagingConversationActivity *)self setActivityIdentifier:?];
    v4 = v14;
  }

  if (*(v4 + 11))
  {
    [(CSDMessagingConversationActivity *)self setMetadata:?];
    v4 = v14;
  }

  activityContext = self->_activityContext;
  v6 = *(v4 + 3);
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

  v4 = v14;
LABEL_17:
  originatorHandle = self->_originatorHandle;
  v8 = *(v4 + 12);
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

  v4 = v14;
LABEL_23:
  if ((*(v4 + 108) & 2) != 0)
  {
    self->_updatedDateEpochTime = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 8))
  {
    [(CSDMessagingConversationActivity *)self setFallbackApplicationName:?];
    v4 = v14;
  }

  activityMetadata = self->_activityMetadata;
  v10 = *(v4 + 5);
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

  v4 = v14;
LABEL_33:
  v11 = *(v4 + 108);
  if ((v11 & 4) != 0)
  {
    self->_isSystemActivity = *(v4 + 104);
    *&self->_has |= 4u;
    v11 = *(v4 + 108);
  }

  if (v11)
  {
    self->_timestampAsTimeIntervalSinceReferenceDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  fromHandle = self->_fromHandle;
  v13 = *(v4 + 9);
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

  v4 = v14;
LABEL_43:
}

@end