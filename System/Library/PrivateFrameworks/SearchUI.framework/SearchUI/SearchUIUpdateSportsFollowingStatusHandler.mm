@interface SearchUIUpdateSportsFollowingStatusHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIUpdateSportsFollowingStatusHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  sportsItem = [commandCopy sportsItem];
  follow = [commandCopy follow];

  type = [sportsItem type];
  if ((type - 1) > 1)
  {
    if (type == 3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__SearchUIUpdateSportsFollowingStatusHandler_performCommand_triggerEvent_environment___block_invoke_2;
      aBlock[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
      v12 = follow;
      v9 = _Block_copy(aBlock);
      identifier = [sportsItem identifier];
      if (follow)
      {
        [_TtC8SearchUI26SearchUISportsKitUtilities createSessionWithCanonicalId:identifier completionBlock:v9];
      }

      else
      {
        [_TtC8SearchUI26SearchUISportsKitUtilities destroySessionWithCanonicalId:identifier completionBlock:v9];
      }
    }
  }

  else
  {
    [_TtC8SearchUI19SearchUITVUtilities updateSportsItemFavoriteStatusWithSportsItem:sportsItem shouldBeFavorite:follow completionHandler:&__block_literal_global_28];
  }
}

void __86__SearchUIUpdateSportsFollowingStatusHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__SearchUIUpdateSportsFollowingStatusHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1(a1, v3, v4);
    }
  }
}

void __86__SearchUIUpdateSportsFollowingStatusHandler_performCommand_triggerEvent_environment___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"unfollow";
  if (*(a1 + 32))
  {
    v3 = @"follow";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DA169000, log, OS_LOG_TYPE_ERROR, "SearchUIUpdateSportsFollowingStatusHandler: SportsKit %@ command error : %@", &v4, 0x16u);
}

@end