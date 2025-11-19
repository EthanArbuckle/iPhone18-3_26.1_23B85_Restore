@interface VUIActionUpdateSportsFavorite
+ (void)performFavoritesOperation:(BOOL)a3 teamId:(id)a4 teamName:(id)a5 confirmRemoval:(BOOL)a6 fireBackgroundEvent:(BOOL)a7 requestExecutionHandler:(id)a8;
- (VUIActionUpdateSportsFavorite)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionUpdateSportsFavorite

- (VUIActionUpdateSportsFavorite)initWithContextData:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VUIActionUpdateSportsFavorite;
  v5 = [(VUIActionUpdateSportsFavorite *)&v13 init];
  if (v5)
  {
    v6 = [v4 vui_stringForKey:@"sportsTeamID"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_sportsTeamID, v8);

    v9 = [v4 vui_stringForKey:@"sportsTeamName"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_sportsTeamName, v11);

    v5->isFavorite = [v4 vui_BOOLForKey:@"sportsTeamIsFavorite" defaultValue:0];
    v5->confirmsRemoval = [v4 vui_BOOLForKey:@"confirmsRemoval" defaultValue:0];
    v5->firesBackgroundEvent = [v4 vui_BOOLForKey:@"firesBackgroundEvent" defaultValue:0];
  }

  return v5;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_sportsTeamID;
  v9 = self->_sportsTeamName;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  isFavorite = self->isFavorite;
  confirmsRemoval = self->confirmsRemoval;
  firesBackgroundEvent = self->firesBackgroundEvent;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v21 = __78__VUIActionUpdateSportsFavorite_performWithTargetResponder_completionHandler___block_invoke;
  v22 = &unk_1E8733D68;
  v27 = isFavorite;
  v23 = v11;
  v24 = v8;
  v28 = confirmsRemoval;
  v29 = firesBackgroundEvent;
  v25 = v9;
  v26 = v7;
  v15 = MEMORY[0x1E696AF00];
  v16 = v7;
  v17 = v9;
  v18 = v8;
  v19 = v11;
  if ([v15 isMainThread])
  {
    v21(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __78__VUIActionUpdateSportsFavorite_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) applySelectionImage];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 65);
  v6 = *(a1 + 66);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__VUIActionUpdateSportsFavorite_performWithTargetResponder_completionHandler___block_invoke_2;
  v8[3] = &unk_1E872F758;
  v9 = *(a1 + 32);
  [VUIActionUpdateSportsFavorite performFavoritesOperation:v2 teamId:v3 teamName:v4 confirmRemoval:v5 fireBackgroundEvent:v6 requestExecutionHandler:v8];
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, 1);
  }
}

void __78__VUIActionUpdateSportsFavorite_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = __78__VUIActionUpdateSportsFavorite_performWithTargetResponder_completionHandler___block_invoke_3;
    v4 = &unk_1E872D768;
    v5 = *(a1 + 32);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

+ (void)performFavoritesOperation:(BOOL)a3 teamId:(id)a4 teamName:(id)a5 confirmRemoval:(BOOL)a6 fireBackgroundEvent:(BOOL)a7 requestExecutionHandler:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke;
  aBlock[3] = &unk_1E8733D90;
  v34 = a3;
  v31 = v13;
  v16 = v14;
  v32 = v16;
  v35 = a7;
  v17 = v15;
  v33 = v17;
  v18 = v13;
  v19 = _Block_copy(aBlock);
  v20 = [MEMORY[0x1E69E15D8] defaultManager];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_2;
  v24[3] = &unk_1E8733E08;
  v28 = a3;
  v29 = a6;
  v25 = v16;
  v26 = v19;
  v27 = v17;
  v21 = v17;
  v22 = v16;
  v23 = v19;
  [v20 isOnboarded:v24];
}

uint64_t __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = +[VUIFavoritesRequestManager sharedInstance];
  [v3 sendRequestForEntityID:*(a1 + 32) teamName:*(a1 + 40) action:v2 fireBackgroundEvent:*(a1 + 57)];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_2(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_3;
  v6 = &unk_1E8733DE0;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v11 = *(a1 + 57);
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  v12 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(v4);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (+[VUIUtilities isSUIEnabled])
    {
      goto LABEL_7;
    }

    if (*(a1 + 56))
    {
      if (*(a1 + 57) == 1)
      {
        v2 = MEMORY[0x1E696AEC0];
        v3 = +[VUILocalizationManager sharedInstance];
        v4 = [v3 localizedStringForKey:@"FAVORITES_REMOVE_TEAM"];
        v5 = [v2 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, *(a1 + 32)];

        v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:0 preferredStyle:1];
        v7 = MEMORY[0x1E69DC648];
        v8 = +[VUILocalizationManager sharedInstance];
        v9 = [v8 localizedStringForKey:@"CANCEL"];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_4;
        v22[3] = &unk_1E872E850;
        v23 = *(a1 + 48);
        v10 = [v7 actionWithTitle:v9 style:1 handler:v22];

        [v6 addAction:v10];
        v11 = MEMORY[0x1E69DC648];
        v12 = +[VUILocalizationManager sharedInstance];
        v13 = [v12 localizedStringForKey:@"FAVORITES_REMOVE_TEAM_BUTTON"];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_5;
        v20[3] = &unk_1E872E850;
        v21 = *(a1 + 40);
        v14 = [v11 actionWithTitle:v13 style:2 handler:v20];

        [v6 addAction:v14];
        v15 = +[VUIApplicationRouter topPresentedViewController];
        [v15 presentViewController:v6 animated:1 completion:0];

        return;
      }

      goto LABEL_7;
    }
  }

  if ((*(a1 + 58) & 1) == 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_6;
    v17[3] = &unk_1E8733DB8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    [_TtC8VideosUI8VideosUI presentSportsFavoriteSyncSheetWithCompletion:v17];

    return;
  }

LABEL_7:
  v16 = *(*(a1 + 40) + 16);

  v16();
}

uint64_t __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __134__VUIActionUpdateSportsFavorite_performFavoritesOperation_teamId_teamName_confirmRemoval_fireBackgroundEvent_requestExecutionHandler___block_invoke_6(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

@end