@interface SearchUIUpdateSportsFollowingStatusHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIUpdateSportsFollowingStatusHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = a3;
  v6 = [v5 sportsItem];
  v7 = [v5 follow];

  v8 = [v6 type];
  if ((v8 - 1) > 1)
  {
    if (v8 == 3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__SearchUIUpdateSportsFollowingStatusHandler_performCommand_triggerEvent_environment___block_invoke_2;
      aBlock[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
      v12 = v7;
      v9 = _Block_copy(aBlock);
      v10 = [v6 identifier];
      if (v7)
      {
        [_TtC8SearchUI26SearchUISportsKitUtilities createSessionWithCanonicalId:v10 completionBlock:v9];
      }

      else
      {
        [_TtC8SearchUI26SearchUISportsKitUtilities destroySessionWithCanonicalId:v10 completionBlock:v9];
      }
    }
  }

  else
  {
    [_TtC8SearchUI19SearchUITVUtilities updateSportsItemFavoriteStatusWithSportsItem:v6 shouldBeFavorite:v7 completionHandler:&__block_literal_global_28];
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