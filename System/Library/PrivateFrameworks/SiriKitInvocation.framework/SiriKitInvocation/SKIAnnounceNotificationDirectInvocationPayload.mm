@interface SKIAnnounceNotificationDirectInvocationPayload
- (SKIAnnounceNotificationDirectInvocationPayload)initWithCoder:(id)a3;
- (SKIAnnounceNotificationDirectInvocationPayload)initWithNotification:(id)a3 appBundleId:(id)a4 appBundleIdOfLastAnnouncement:(id)a5 synchronousBurstIndex:(unint64_t)a6 isSameTypeAsLastAnnouncement:(BOOL)a7 timeSinceLastAnnouncement:(double)a8 announcementPlatform:(int64_t)a9 isMediaPlaying:(BOOL)a10 isBobbleCapableAnnouncement:(BOOL)a11 summaries:(id)a12;
- (id)notificationIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKIAnnounceNotificationDirectInvocationPayload

- (SKIAnnounceNotificationDirectInvocationPayload)initWithNotification:(id)a3 appBundleId:(id)a4 appBundleIdOfLastAnnouncement:(id)a5 synchronousBurstIndex:(unint64_t)a6 isSameTypeAsLastAnnouncement:(BOOL)a7 timeSinceLastAnnouncement:(double)a8 announcementPlatform:(int64_t)a9 isMediaPlaying:(BOOL)a10 isBobbleCapableAnnouncement:(BOOL)a11 summaries:(id)a12
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a12;
  v33.receiver = self;
  v33.super_class = SKIAnnounceNotificationDirectInvocationPayload;
  v23 = [(SKIAnnounceNotificationDirectInvocationPayload *)&v33 init];
  if (v23)
  {
    v24 = [v19 copy];
    notification = v23->_notification;
    v23->_notification = v24;

    v26 = [v20 copy];
    appBundleId = v23->_appBundleId;
    v23->_appBundleId = v26;

    v28 = [v21 copy];
    appBundleIdOfLastAnnouncement = v23->_appBundleIdOfLastAnnouncement;
    v23->_appBundleIdOfLastAnnouncement = v28;

    v23->_synchronousBurstIndex = a6;
    v23->_isSameTypeAsLastAnnouncement = a7;
    v23->_timeSinceLastAnnouncement = a8;
    v23->_announcementPlatform = a9;
    v23->_isMediaPlaying = a10;
    v23->_isBobbleCapableAnnouncement = a11;
    v30 = [v22 copy];
    summaries = v23->_summaries;
    v23->_summaries = v30;
  }

  return v23;
}

- (id)notificationIdentifier
{
  v2 = [(UNNotification *)self->_notification request];
  v3 = [v2 identifier];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(SKIAnnounceNotificationDirectInvocationPayload *)self notification];
  [v10 encodeObject:v4 forKey:@"notification"];

  v5 = [(SKIAnnounceNotificationDirectInvocationPayload *)self appBundleId];
  [v10 encodeObject:v5 forKey:@"appBundleId"];

  v6 = [(SKIAnnounceNotificationDirectInvocationPayload *)self appBundleIdOfLastAnnouncement];
  [v10 encodeObject:v6 forKey:@"appBundleIdOfLastAnnouncement"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKIAnnounceNotificationDirectInvocationPayload synchronousBurstIndex](self, "synchronousBurstIndex")}];
  [v10 encodeObject:v7 forKey:@"synchronousBurstIndex"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKIAnnounceNotificationDirectInvocationPayload announcementPlatform](self, "announcementPlatform")}];
  [v10 encodeObject:v8 forKey:@"announcementPlatform"];

  v9 = [(SKIAnnounceNotificationDirectInvocationPayload *)self summaries];
  [v10 encodeObject:v9 forKey:@"summaries"];

  [v10 encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isMediaPlaying](self forKey:{"isMediaPlaying"), @"isMediaPlaying"}];
  [v10 encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isSameTypeAsLastAnnouncement](self forKey:{"isSameTypeAsLastAnnouncement"), @"isSameTypeAsLastAnnouncement"}];
  [(SKIAnnounceNotificationDirectInvocationPayload *)self timeSinceLastAnnouncement];
  [v10 encodeDouble:@"timeSinceLastAnnouncement" forKey:?];
  [v10 encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isBobbleCapableAnnouncement](self forKey:{"isBobbleCapableAnnouncement"), @"isBobbleCapableAnnouncement"}];
}

- (SKIAnnounceNotificationDirectInvocationPayload)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdOfLastAnnouncement"];
  v7 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"summaries"];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"synchronousBurstIndex"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"announcementPlatform"];
  v14 = [v13 integerValue];

  LOBYTE(v13) = [v3 decodeBoolForKey:@"isMediaPlaying"];
  v15 = [v3 decodeBoolForKey:@"isSameTypeAsLastAnnouncement"];
  [v3 decodeDoubleForKey:@"timeSinceLastAnnouncement"];
  v17 = v16;
  v18 = [v3 decodeBoolForKey:@"isBobbleCapableAnnouncement"];

  BYTE1(v22) = v18;
  LOBYTE(v22) = v13;
  v19 = [(SKIAnnounceNotificationDirectInvocationPayload *)self initWithNotification:v4 appBundleId:v5 appBundleIdOfLastAnnouncement:v6 synchronousBurstIndex:v12 isSameTypeAsLastAnnouncement:v15 timeSinceLastAnnouncement:v14 announcementPlatform:v17 isMediaPlaying:v22 isBobbleCapableAnnouncement:v10 summaries:?];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end