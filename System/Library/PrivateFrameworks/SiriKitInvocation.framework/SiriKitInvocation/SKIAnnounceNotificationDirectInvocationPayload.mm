@interface SKIAnnounceNotificationDirectInvocationPayload
- (SKIAnnounceNotificationDirectInvocationPayload)initWithCoder:(id)coder;
- (SKIAnnounceNotificationDirectInvocationPayload)initWithNotification:(id)notification appBundleId:(id)id appBundleIdOfLastAnnouncement:(id)announcement synchronousBurstIndex:(unint64_t)index isSameTypeAsLastAnnouncement:(BOOL)lastAnnouncement timeSinceLastAnnouncement:(double)sinceLastAnnouncement announcementPlatform:(int64_t)platform isMediaPlaying:(BOOL)self0 isBobbleCapableAnnouncement:(BOOL)self1 summaries:(id)self2;
- (id)notificationIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKIAnnounceNotificationDirectInvocationPayload

- (SKIAnnounceNotificationDirectInvocationPayload)initWithNotification:(id)notification appBundleId:(id)id appBundleIdOfLastAnnouncement:(id)announcement synchronousBurstIndex:(unint64_t)index isSameTypeAsLastAnnouncement:(BOOL)lastAnnouncement timeSinceLastAnnouncement:(double)sinceLastAnnouncement announcementPlatform:(int64_t)platform isMediaPlaying:(BOOL)self0 isBobbleCapableAnnouncement:(BOOL)self1 summaries:(id)self2
{
  notificationCopy = notification;
  idCopy = id;
  announcementCopy = announcement;
  summariesCopy = summaries;
  v33.receiver = self;
  v33.super_class = SKIAnnounceNotificationDirectInvocationPayload;
  v23 = [(SKIAnnounceNotificationDirectInvocationPayload *)&v33 init];
  if (v23)
  {
    v24 = [notificationCopy copy];
    notification = v23->_notification;
    v23->_notification = v24;

    v26 = [idCopy copy];
    appBundleId = v23->_appBundleId;
    v23->_appBundleId = v26;

    v28 = [announcementCopy copy];
    appBundleIdOfLastAnnouncement = v23->_appBundleIdOfLastAnnouncement;
    v23->_appBundleIdOfLastAnnouncement = v28;

    v23->_synchronousBurstIndex = index;
    v23->_isSameTypeAsLastAnnouncement = lastAnnouncement;
    v23->_timeSinceLastAnnouncement = sinceLastAnnouncement;
    v23->_announcementPlatform = platform;
    v23->_isMediaPlaying = playing;
    v23->_isBobbleCapableAnnouncement = capableAnnouncement;
    v30 = [summariesCopy copy];
    summaries = v23->_summaries;
    v23->_summaries = v30;
  }

  return v23;
}

- (id)notificationIdentifier
{
  request = [(UNNotification *)self->_notification request];
  identifier = [request identifier];

  return identifier;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notification = [(SKIAnnounceNotificationDirectInvocationPayload *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];

  appBundleId = [(SKIAnnounceNotificationDirectInvocationPayload *)self appBundleId];
  [coderCopy encodeObject:appBundleId forKey:@"appBundleId"];

  appBundleIdOfLastAnnouncement = [(SKIAnnounceNotificationDirectInvocationPayload *)self appBundleIdOfLastAnnouncement];
  [coderCopy encodeObject:appBundleIdOfLastAnnouncement forKey:@"appBundleIdOfLastAnnouncement"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKIAnnounceNotificationDirectInvocationPayload synchronousBurstIndex](self, "synchronousBurstIndex")}];
  [coderCopy encodeObject:v7 forKey:@"synchronousBurstIndex"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKIAnnounceNotificationDirectInvocationPayload announcementPlatform](self, "announcementPlatform")}];
  [coderCopy encodeObject:v8 forKey:@"announcementPlatform"];

  summaries = [(SKIAnnounceNotificationDirectInvocationPayload *)self summaries];
  [coderCopy encodeObject:summaries forKey:@"summaries"];

  [coderCopy encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isMediaPlaying](self forKey:{"isMediaPlaying"), @"isMediaPlaying"}];
  [coderCopy encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isSameTypeAsLastAnnouncement](self forKey:{"isSameTypeAsLastAnnouncement"), @"isSameTypeAsLastAnnouncement"}];
  [(SKIAnnounceNotificationDirectInvocationPayload *)self timeSinceLastAnnouncement];
  [coderCopy encodeDouble:@"timeSinceLastAnnouncement" forKey:?];
  [coderCopy encodeBool:-[SKIAnnounceNotificationDirectInvocationPayload isBobbleCapableAnnouncement](self forKey:{"isBobbleCapableAnnouncement"), @"isBobbleCapableAnnouncement"}];
}

- (SKIAnnounceNotificationDirectInvocationPayload)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdOfLastAnnouncement"];
  v7 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"summaries"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"synchronousBurstIndex"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"announcementPlatform"];
  integerValue = [v13 integerValue];

  LOBYTE(v13) = [coderCopy decodeBoolForKey:@"isMediaPlaying"];
  v15 = [coderCopy decodeBoolForKey:@"isSameTypeAsLastAnnouncement"];
  [coderCopy decodeDoubleForKey:@"timeSinceLastAnnouncement"];
  v17 = v16;
  v18 = [coderCopy decodeBoolForKey:@"isBobbleCapableAnnouncement"];

  BYTE1(v22) = v18;
  LOBYTE(v22) = v13;
  v19 = [(SKIAnnounceNotificationDirectInvocationPayload *)self initWithNotification:v4 appBundleId:v5 appBundleIdOfLastAnnouncement:v6 synchronousBurstIndex:unsignedIntegerValue isSameTypeAsLastAnnouncement:v15 timeSinceLastAnnouncement:integerValue announcementPlatform:v17 isMediaPlaying:v22 isBobbleCapableAnnouncement:v10 summaries:?];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end