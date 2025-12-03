@interface PrivateService
- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler;
- (void)applyIntroductionModel:(STIntroductionModel *)model forDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler;
- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history completionHandler:(id)handler;
- (void)deleteAllWebApplicationHistory:(NSString *)history profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)enableRemoteManagementForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchCommunicationPoliciesWithCompletionHandler:(id)handler;
- (void)fetchContactManagementStateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchContactsEditableWithReplyHandler:(id)handler;
- (void)fetchLastCommunicationLimitsModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchLastModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)forceFamilyFetchWithCompletionHandler:(id)handler;
- (void)isAllowFindMyFriendsModificationSetForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isExplicitContentRestricted:(id)restricted;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)isScreenTimeEnabledForLocalUserWithCompletionHandler:(id)handler;
- (void)isScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler;
- (void)needsToSetRestrictionsPasscodeWithCompletionHandler:(id)handler;
- (void)permitWebFilterURL:(NSURL *)l pageTitle:(NSString *)title completionHandler:(id)handler;
- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler;
- (void)requestToManageContactsForDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler;
- (void)setScreenTimeEnabledForLocalUser:(BOOL)user completionHandler:(id)handler;
- (void)setScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d enabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setScreenTimeSyncEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)shouldAllowOneMoreMinuteForWebDomain:(NSString *)domain completionHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
- (void)updateAllowFindMyFriendsModification:(BOOL)modification forDSID:(NSNumber *)d completionHandler:(id)handler;
@end

@implementation PrivateService

- (void)isScreenTimeEnabledForLocalUserWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142608;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142610;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142618, v13);
}

- (void)isScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001425E8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001425F0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001425F8, v15);
}

- (void)setScreenTimeEnabledForLocalUser:(BOOL)user completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = user;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001425C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001425D0;
  v15[5] = v14;

  sub_10010D4C0(0, 0, v10, &unk_1001425D8, v15);
}

- (void)setScreenTimeEnabledForRemoteUserWithDSID:(NSNumber *)d enabled:(BOOL)enabled completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = d;
  *(v14 + 24) = enabled;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001425A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001425B0;
  v17[5] = v16;
  dCopy = d;

  sub_10010D4C0(0, 0, v12, &unk_1001425B8, v17);
}

- (void)enableRemoteManagementForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142588;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142590;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_100142598, v15);
}

- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142568;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142570;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142578, v13);
}

- (void)setScreenTimeSyncEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = enabled;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142548;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142550;
  v15[5] = v14;

  sub_10010D4C0(0, 0, v10, &unk_100142558, v15);
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142528;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142530;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142538, v13);
}

- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142508;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142510;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_100142518, v15);
}

- (void)clearRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001424F0;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_1001424F8, v13);
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001424D0;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_1001424D8, v13);
}

- (void)needsToSetRestrictionsPasscodeWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001424A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001424B0;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_1001424B8, v13);
}

- (void)setRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = passcode;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142488;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142490;
  v15[5] = v14;
  passcodeCopy = passcode;

  sub_10010D4C0(0, 0, v10, &unk_100142498, v15);
}

- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = passcode;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142468;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142470;
  v15[5] = v14;
  passcodeCopy = passcode;

  sub_10010D4C0(0, 0, v10, &unk_100142478, v15);
}

- (void)fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142448;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142450;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142458, v13);
}

- (void)fetchCommunicationPoliciesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142428;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142430;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142438, v13);
}

- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = enabled;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142408;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142410;
  v17[5] = v16;
  dCopy = d;

  sub_10010D4C0(0, 0, v12, &unk_100142418, v17);
}

- (void)requestToManageContactsForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001423E8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001423F0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001423F8, v15);
}

- (void)fetchContactManagementStateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001423C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001423D0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001423D8, v15);
}

- (void)primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001423A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001423B0;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_1001423B8, v13);
}

- (void)fetchContactsEditableWithReplyHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142388;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142390;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142398, v13);
}

- (void)fetchLastCommunicationLimitsModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142368;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142370;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_100142378, v15);
}

- (void)applyDefaultUserPoliciesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142348;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142350;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142358, v13);
}

- (void)permitWebFilterURL:(NSURL *)l pageTitle:(NSString *)title completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = l;
  v14[3] = title;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142328;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142330;
  v17[5] = v16;
  lCopy = l;
  titleCopy = title;

  sub_10010D4C0(0, 0, v12, &unk_100142338, v17);
}

- (void)isExplicitContentRestricted:(id)restricted
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(restricted);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100142308;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142310;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142318, v13);
}

- (void)fetchLastModificationDateForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001422D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001422E0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001422E8, v15);
}

- (void)applyIntroductionModel:(STIntroductionModel *)model forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = model;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001422B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001422C0;
  v17[5] = v16;
  modelCopy = model;
  dCopy = d;

  sub_10010D4C0(0, 0, v12, &unk_1001422C8, v17);
}

- (void)isAllowFindMyFriendsModificationSetForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142298;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001422A0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001422A8, v15);
}

- (void)updateAllowFindMyFriendsModification:(BOOL)modification forDSID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = modification;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142278;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142280;
  v17[5] = v16;
  dCopy = d;

  sub_10010D4C0(0, 0, v12, &unk_100142288, v17);
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142258;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142260;
  v15[5] = v14;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v10, &unk_100142268, v15);
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(NSString *)domain completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = domain;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142238;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142240;
  v15[5] = v14;
  domainCopy = domain;

  sub_10010D4C0(0, 0, v10, &unk_100142248, v15);
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142218;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142220;
  v15[5] = v14;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v10, &unk_100142228, v15);
}

- (void)forceFamilyFetchWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001421F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142200;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142208, v13);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = l;
  v14[3] = application;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001421D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001421E0;
  v17[5] = v16;
  lCopy = l;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v12, &unk_100141560, v17);
}

- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = ls;
  v14[3] = application;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001421B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001421C0;
  v17[5] = v16;
  lsCopy = ls;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v12, &unk_1001421C8, v17);
}

- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = domain;
  v14[3] = application;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142198;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001421A0;
  v17[5] = v16;
  domainCopy = domain;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v12, &unk_1001421A8, v17);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = interval;
  v14[3] = application;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142178;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142180;
  v17[5] = v16;
  intervalCopy = interval;
  applicationCopy = application;

  sub_10010D4C0(0, 0, v12, &unk_100142188, v17);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = history;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100142158;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100142160;
  v15[5] = v14;
  historyCopy = history;

  sub_10010D4C0(0, 0, v10, &unk_100142168, v15);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = l;
  v16[3] = application;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142138;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100142140;
  v19[5] = v18;
  lCopy = l;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v14, &unk_100142148, v19);
}

- (void)deleteWebHistoryForURLs:(NSArray *)ls webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = ls;
  v16[3] = application;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142118;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100142120;
  v19[5] = v18;
  lsCopy = ls;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v14, &unk_100142128, v19);
}

- (void)deleteWebHistoryForDomain:(NSString *)domain webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = domain;
  v16[3] = application;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001420F8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100142100;
  v19[5] = v18;
  domainCopy = domain;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v14, &unk_100142108, v19);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = interval;
  v16[3] = application;
  v16[4] = identifier;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001420D8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001420E0;
  v19[5] = v18;
  intervalCopy = interval;
  applicationCopy = application;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v14, &unk_1001420E8, v19);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history profileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = history;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001420B8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001420C0;
  v17[5] = v16;
  historyCopy = history;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v12, &unk_1001420C8, v17);
}

- (void)deleteWebHistoryForURL:(NSURL *)l webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = l;
  v16[3] = application;
  v16[4] = wrapper;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142098;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1001420A0;
  v19[5] = v18;
  lCopy = l;
  applicationCopy = application;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v14, &unk_1001420A8, v19);
}

- (void)deleteWebHistoryDuringInterval:(NSDateInterval *)interval webApplication:(NSString *)application clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = interval;
  v16[3] = application;
  v16[4] = wrapper;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100142078;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100142080;
  v19[5] = v18;
  intervalCopy = interval;
  applicationCopy = application;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v14, &unk_100142820, v19);
}

- (void)deleteAllWebApplicationHistory:(NSString *)history clientBundleURLWrapper:(NSSecurityScopedURLWrapper *)wrapper completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = history;
  v14[3] = wrapper;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100142068;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100140550;
  v17[5] = v16;
  historyCopy = history;
  wrapperCopy = wrapper;

  sub_10010D4C0(0, 0, v12, &unk_100140230, v17);
}

@end