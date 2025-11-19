@interface STRestrictionsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STRestrictionsCoreAnalyticsEvent)initWithContentAndPrivacyRestrictionsEnabled:(BOOL)a3 mediaAndAppleMusicIsRestricted:(BOOL)a4 gameCenterMultiplayerGamesIsRestricted:(BOOL)a5 gameCenterAddingFriendsIsRestricted:(BOOL)a6 gameCenterConnectWithFriendsIsRestricted:(BOOL)a7 gameCenterScreenRecordingIsRestricted:(BOOL)a8 gameCenterNearbyMultiplayerIsRestricted:(BOOL)a9 gameCenterPrivateMessagingIsRestricted:(BOOL)a10 gameCenterProfilePrivacyChangesIsRestricted:(BOOL)a11 gameCenterAvatarAndNicknameChangesIsRestricted:(BOOL)a12 userAgeGroup:(int64_t)a13 userIsManaged:(BOOL)a14;
@end

@implementation STRestrictionsCoreAnalyticsEvent

- (STRestrictionsCoreAnalyticsEvent)initWithContentAndPrivacyRestrictionsEnabled:(BOOL)a3 mediaAndAppleMusicIsRestricted:(BOOL)a4 gameCenterMultiplayerGamesIsRestricted:(BOOL)a5 gameCenterAddingFriendsIsRestricted:(BOOL)a6 gameCenterConnectWithFriendsIsRestricted:(BOOL)a7 gameCenterScreenRecordingIsRestricted:(BOOL)a8 gameCenterNearbyMultiplayerIsRestricted:(BOOL)a9 gameCenterPrivateMessagingIsRestricted:(BOOL)a10 gameCenterProfilePrivacyChangesIsRestricted:(BOOL)a11 gameCenterAvatarAndNicknameChangesIsRestricted:(BOOL)a12 userAgeGroup:(int64_t)a13 userIsManaged:(BOOL)a14
{
  v21.receiver = self;
  v21.super_class = STRestrictionsCoreAnalyticsEvent;
  result = [(STRestrictionsCoreAnalyticsEvent *)&v21 init];
  result->_contentAndPrivacyRestrictionsEnabled = a3;
  result->_mediaAndAppleMusicIsRestricted = a4;
  result->_gameCenterMultiplayerGamesIsRestricted = a5;
  result->_gameCenterAddingFriendsIsRestricted = a6;
  result->_gameCenterConnectWithFriendsIsRestricted = a7;
  result->_gameCenterScreenRecordingIsRestricted = a8;
  result->_gameCenterNearbyMultiplayerIsRestricted = a9;
  result->_gameCenterPrivateMessagingIsRestricted = a10;
  result->_gameCenterProfilePrivacyChangesIsRestricted = a11;
  result->_gameCenterAvatarAndNicknameChangesIsRestricted = a12;
  result->_userAgeGroup = a13;
  result->_userIsManaged = a14;
  return result;
}

- (NSDictionary)payload
{
  v19[12] = *MEMORY[0x1E69E9840];
  v18[0] = @"contentAndPrivacyRestrictionsEnabled";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent contentAndPrivacyRestrictionsEnabled](self, "contentAndPrivacyRestrictionsEnabled")}];
  v19[0] = v17;
  v18[1] = @"mediaAndAppleMusicIsRestricted";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent mediaAndAppleMusicIsRestricted](self, "mediaAndAppleMusicIsRestricted")}];
  v19[1] = v16;
  v18[2] = @"gameCenterMultiplayerGamesIsRestricted";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterMultiplayerGamesIsRestricted](self, "gameCenterMultiplayerGamesIsRestricted")}];
  v19[2] = v15;
  v18[3] = @"gameCenterAddingFriendsIsRestricted";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterAddingFriendsIsRestricted](self, "gameCenterAddingFriendsIsRestricted")}];
  v19[3] = v3;
  v18[4] = @"gameCenterConnectWithFriendsIsRestricted";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterConnectWithFriendsIsRestricted](self, "gameCenterConnectWithFriendsIsRestricted")}];
  v19[4] = v4;
  v18[5] = @"gameCenterScreenRecordingIsRestricted";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterScreenRecordingIsRestricted](self, "gameCenterScreenRecordingIsRestricted")}];
  v19[5] = v5;
  v18[6] = @"gameCenterNearbyMultiplayerIsRestricted";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterNearbyMultiplayerIsRestricted](self, "gameCenterNearbyMultiplayerIsRestricted")}];
  v19[6] = v6;
  v18[7] = @"gameCenterPrivateMessagingIsRestricted";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterPrivateMessagingIsRestricted](self, "gameCenterPrivateMessagingIsRestricted")}];
  v19[7] = v7;
  v18[8] = @"gameCenterProfilePrivacyChangesIsRestricted";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterProfilePrivacyChangesIsRestricted](self, "gameCenterProfilePrivacyChangesIsRestricted")}];
  v19[8] = v8;
  v18[9] = @"gameCenterAvatarAndNicknameChangesIsRestricted";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent gameCenterAvatarAndNicknameChangesIsRestricted](self, "gameCenterAvatarAndNicknameChangesIsRestricted")}];
  v19[9] = v9;
  v18[10] = @"userAgeGroup";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STRestrictionsCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v19[10] = v10;
  v18[11] = @"userIsManaged";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[STRestrictionsCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v19[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:12];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end