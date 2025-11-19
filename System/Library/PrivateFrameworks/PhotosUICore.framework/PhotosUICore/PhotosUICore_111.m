id PXLocalizationKeyByAddingDeviceModelSuffix(void *a1)
{
  v1 = a1;
  v2 = +[PXLocalization currentDeviceCanonicalModel];
  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

id PXLocalizedAssetMessageForUsage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = @"PXPhotoAlreadySaved";
      v6 = @"PXVideoAlreadySaved";
      v7 = @"PXItemAlreadySaved";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v5 = @"PXPhotoAlreadySavedToLibrary";
      v6 = @"PXVideoAlreadySavedToLibrary";
      v7 = @"PXItemAlreadySavedToLibrary";
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v5 = @"PXSavePhotosToYourLibrary";
    v6 = @"PXSaveVideosToYourLibrary";
    v7 = @"PXSaveItemsToYourLibrary";
  }

  else
  {
    v5 = @"PXAllPhotosSaved";
    v6 = @"PXAllVideosSaved";
    v7 = @"PXAllItemsSaved";
  }

  v4 = PXLocalizationKeyForMediaType(a1, v5, v6, v7);
LABEL_11:
  v8 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  v9 = [v8 px_stringByApplyingCapitalization:a2];

  return v9;
}

void PXLocalizedAssetCountForUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = PXLocalizedFormatForUsage(a2, a4);
  PXLocalizedStringFromTable(v4, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

id PXLocalizedFormatForUsage(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v3 = @"PXNumberOfPhotos";
      v4 = @"PXNumberOfVideos";
      v5 = @"PXNumberOfItems";
      goto LABEL_25;
    case 1:
      v3 = @"PXNumberOfPhotosSelected";
      v4 = @"PXNumberOfVideosSelected";
      v5 = @"PXNumberOfItemsSelected";
      goto LABEL_25;
    case 2:
      v3 = @"PXUploadingNumberOfPhotos";
      v4 = @"PXUploadingNumberOfVideos";
      v5 = @"PXUploadingNumberOfItems";
      goto LABEL_25;
    case 3:
      v3 = @"PXUploadingPausedNumberOfPhotos";
      v4 = @"PXUploadingPausedNumberOfVideos";
      v5 = @"PXUploadingPausedNumberOfItems";
      goto LABEL_25;
    case 4:
      v3 = @"PXWaitingNumberOfPhotos";
      v4 = @"PXWaitingNumberOfVideos";
      v5 = @"PXWaitingNumberOfItems";
      goto LABEL_25;
    case 5:
      v3 = @"PXErrorLoadingNumberOfPhotos";
      v4 = @"PXErrorLoadingNumberOfVideos";
      v5 = @"PXErrorLoadingNumberOfItems";
      goto LABEL_25;
    case 6:
      v3 = @"PXWaitingPausedNumberOfPhotos";
      v4 = @"PXWaitingPausedNumberOfVideos";
      v5 = @"PXWaitingPausedNumberOfItems";
      goto LABEL_25;
    case 7:
      v3 = @"PXWaitingForUploadNumberOfPhotos";
      v4 = @"PXWaitingForUploadNumberOfVideos";
      v5 = @"PXWaitingForUploadNumberOfItems";
      goto LABEL_25;
    case 8:
      v3 = @"PXSavingNumberOfPhotos";
      v4 = @"PXSavingNumberOfVideos";
      v5 = @"PXSavingNumberOfItems";
      goto LABEL_25;
    case 9:
      v3 = @"PXSavingPausedNumberOfPhotos";
      v4 = @"PXSavingPausedNumberOfVideos";
      v5 = @"PXSavingPausedNumberOfItems";
      goto LABEL_25;
    case 10:
      v3 = @"PXRenderingNumberOfPhotos";
      v4 = @"PXRenderingNumberOfVideos";
      v5 = @"PXRenderingNumberOfItems";
      goto LABEL_25;
    case 11:
      v3 = @"PXWarnRevertOfPhotos";
      v4 = @"PXWarnRevertOfVideos";
      v5 = @"PXWarnRevertOfItems";
      goto LABEL_25;
    case 12:
      v3 = @"PXSaveNumberOfPhotos";
      v4 = @"PXSaveNumberOfVideos";
      v5 = @"PXSaveNumberOfItems";
      goto LABEL_25;
    case 13:
      v3 = @"PXShareNumberOfPhotos";
      v4 = @"PXShareNumberOfVideos";
      v5 = @"PXShareNumberOfItems";
      goto LABEL_25;
    case 14:
      v3 = @"PXMoveNumberOfPhotos";
      v4 = @"PXMoveNumberOfVideos";
      v5 = @"PXMoveNumberOfItems";
      goto LABEL_25;
    case 15:
      v3 = @"PXMoveToLibraryNumberOfPhotos";
      v4 = @"PXMoveToLibraryNumberOfVideos";
      v5 = @"PXMoveToLibraryNumberOfItems";
      goto LABEL_25;
    case 16:
      v3 = @"PXSharedLibrary_MoveToPersonalLibraryNumberOfPhotos";
      v4 = @"PXSharedLibrary_MoveToPersonalLibraryNumberOfVideos";
      v5 = @"PXSharedLibrary_MoveToPersonalLibraryNumberOfItems";
      goto LABEL_25;
    case 17:
      v3 = @"PXSharedLibrary_MoveToSharedLibraryNumberOfPhotos";
      v4 = @"PXSharedLibrary_MoveToSharedLibraryNumberOfVideos";
      v5 = @"PXSharedLibrary_MoveToSharedLibraryNumberOfItems";
      goto LABEL_25;
    case 18:
      v3 = @"PXNumberOfPhotosSaved";
      v4 = @"PXNumberOfVideosSaved";
      v5 = @"PXNumberOfItemsSaved";
      goto LABEL_25;
    case 19:
      v3 = @"PXNumberOfSharedPhotos";
      v4 = @"PXNumberOfSharedVideos";
      v5 = @"PXNumberOfSharedItems";
      goto LABEL_25;
    case 20:
      v3 = @"PXNumberOfPhotosRemaining";
      v4 = @"PXNumberOfVideosRemaining";
      v5 = @"PXNumberOfItemsRemaining";
      goto LABEL_25;
    case 21:
      v3 = @"PXNumberOfPhotosMore";
      v4 = @"PXNumberOfVideosMore";
      v5 = @"PXNumberOfItemsMore";
      goto LABEL_25;
    case 22:
      v3 = @"PXNumberOfHighResPhotos";
      v4 = @"PXNumberOfHighResVideos";
      v5 = @"PXNumberOfHighResItems";
LABEL_25:
      v6 = PXLocalizationKeyForMediaType(a1, v3, v4, v5);

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

uint64_t PXMediaTypeForDetailedCounts(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || a1[2])
  {
    return 0;
  }

  if (v1 && !v2)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

id PXLocalizedUsageStringWithoutAssetCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = PXLocalizedFormatForUsage(a2, a4);
  v7 = v6;
  if (a1 == 1)
  {
    v8 = @"Single";
  }

  else
  {
    v8 = @"Multiple";
  }

  v9 = [v6 stringByAppendingString:v8];
  v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
  v11 = [v10 px_stringByApplyingCapitalization:a3];

  return v11;
}

void PXLocalizedSharedLibraryAssetCountForUsage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = PXLocalizedFormatForUsage(a2, a4);
  PXLocalizedSharedLibraryString(v4);
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

void PXLocalizedStringWithCount(void *a1)
{
  PXLocalizedStringFromTable(a1, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedStringWithValidatedFormat();
}

id PXLocalizedSelectModeCaption(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      PXLocalizedAssetCountForUsage(a2, a3, 0, 1);
    }

    v4 = PXLocalizedStringFromTable(@"PXSelectItems", @"PhotosUICore");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PXLocalizedPercentValue(double a1)
{
  if (PXLocalizedPercentValue_predicate != -1)
  {
    dispatch_once(&PXLocalizedPercentValue_predicate, &__block_literal_global_509_49690);
  }

  v2 = PXLocalizedPercentValue__percentFormatter;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __PXLocalizedPercentValue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = PXLocalizedPercentValue__percentFormatter;
  PXLocalizedPercentValue__percentFormatter = v0;

  v2 = PXLocalizedPercentValue__percentFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = PXLocalizedPercentValue__percentFormatter;

  return [v4 setNumberStyle:3];
}

void PXDebugEnumerateInterestingNumbersToLocalize(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PXDebugEnumerateInterestingNumbersToLocalize_block_invoke;
  v3[3] = &unk_1E7731E50;
  v4 = v1;
  v2 = v1;
  [&unk_1F1910018 enumerateObjectsUsingBlock:v3];
}

uint64_t __PXDebugEnumerateInterestingNumbersToLocalize_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 integerValue];
  v7 = *(v5 + 16);

  return v7(v5, v6, a4);
}

void PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke;
  v10[3] = &unk_1E7731E78;
  v2 = v1;
  v11 = v2;
  v12 = &v13;
  PXDebugEnumerateInterestingNumbersToLocalize(v10);

  if ((v14[3] & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke_2;
    v7[3] = &unk_1E7731E78;
    v3 = v2;
    v8 = v3;
    v9 = &v13;
    PXDebugEnumerateInterestingNumbersToLocalize(v7);

    if ((v14[3] & 1) == 0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke_3;
      v4[3] = &unk_1E7731E78;
      v5 = v3;
      v6 = &v13;
      PXDebugEnumerateInterestingNumbersToLocalize(v4);
    }
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    result = (*(*(result + 32) + 16))();
    if (*(*(*(v4 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    result = (*(*(result + 32) + 16))();
    if (*(*(*(v4 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t __PXDebugEnumerateInterestingPhotosOrVideosCountsToLocalize_block_invoke_3(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 2)
  {
    v4 = result;
    result = (*(*(result + 32) + 16))();
    if (*(*(*(v4 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

void *std::vector<PXStoryAutoEditComposabilityScores>::__assign_with_size[abi:ne200100]<PXStoryAutoEditComposabilityScores*,PXStoryAutoEditComposabilityScores*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PXStoryAutoEditComposabilityScores>>(v10);
      }
    }

    std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PXStoryAutoEditComposabilityScores>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7729358, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *std::__split_buffer<anonymous namespace::_PXStoryAutoEditCropScoreInfo>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 16 * a3;
  result[2] = 16 * a3;
  result[3] = 0;
  return result;
}

void sub_1A4C023E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50732(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C075C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXStoryAutoEditMomentRecipeTypeDescription(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"??";
  }

  else
  {
    return off_1E7732050[a1];
  }
}

id PXStoryAutoEditClipTransitionInfoDescription(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = PFStoryRecipeClipTransitionKindDescription();
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v6 = PXStoryAutoEditClipTransitionSettingsDescription(v9);
  v7 = [v2 stringWithFormat:@"{kind=%@, duration=%.2fs, settings=%@}", v3, v4, v6];

  return v7;
}

id PXStoryAutoEditClipMotionInfoDescription(__int128 *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = PFStoryRecipeClipMotionStyleDescription();
  v7 = *a1;
  v8 = *(a1 + 2);
  v4 = PXStoryAutoEditClipMotionSettingsDescription(&v7);
  v5 = [v2 stringWithFormat:@"{style=%@, settings=%@}", v3, v4];

  return v5;
}

__CFString *PXStoryAutoEditClipMotionSettingsDescription(uint64_t *a1)
{
  v3 = 0;
  v4 = *a1;
  if (*a1 <= 1)
  {
    if (!v4)
    {
LABEL_13:
      v3 = @"n/a";

      return v3;
    }

    if (v4 != 1)
    {
LABEL_5:

      return v3;
    }

    v3 = PXStoryAutoEditPanSettingsDescription(a1[1], a1[2]);
  }

  else
  {
    switch(v4)
    {
      case 2:
        v6 = a1[1];
        if (v6 <= 2)
        {
          v7 = off_1E7732020;
          goto LABEL_20;
        }

        break;
      case 3:
        v6 = a1[1];
        if (v6 <= 2)
        {
          v7 = off_1E7732038;
LABEL_20:
          v3 = v7[v6];

          return v3;
        }

        break;
      case 4:
        goto LABEL_13;
      default:
        goto LABEL_5;
    }

    v3 = @"??";
  }

  return v3;
}

uint64_t PXStoryAutoEditPanSettingsDescription(unint64_t a1, unint64_t a2)
{
  if (a1 > 4)
  {
    v4 = @"??";
  }

  else
  {
    v4 = off_1E7731FE0[a1];
  }

  if (a2 > 2)
  {
    v5 = @"??";
  }

  else
  {
    v5 = off_1E7732008[a2];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v4, v5, v2, v3];
}

__CFString *PXStoryAutoEditClipTransitionSettingsDescription(uint64_t *a1)
{
  v2 = *a1;
  v3 = @"n/a";
  if (v2 <= 6)
  {
    if (v2 == 5)
    {
      v3 = PXStoryAutoEditPanSettingsDescription(a1[2], a1[3]);
      goto LABEL_17;
    }

    if (v2 != 6)
    {
      goto LABEL_17;
    }

    v4 = a1[2];
    if (v4 <= 2)
    {
      v5 = off_1E7732020;
LABEL_13:
      v3 = v5[v4];
      goto LABEL_17;
    }

LABEL_14:
    v3 = @"??";
    goto LABEL_17;
  }

  if (v2 == 7)
  {
    v4 = a1[2];
    if (v4 <= 2)
    {
      v5 = off_1E7732038;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v2 == 8)
  {
    v6 = *(a1 + 8);
    if (v6 > 2u)
    {
      v7 = @"??";
    }

    else
    {
      v7 = off_1E7740150[v6 & 3];
    }

    v3 = v7;
  }

LABEL_17:

  return v3;
}

__CFString *PXStoryAutoEditModuleTypeName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731FC0[a1];
  }
}

uint64_t PXStoryAutoEditClipModuleInfoDescription(unint64_t a1, unsigned int a2)
{
  if (a1 > 3)
  {
    v2 = @"??";
  }

  else
  {
    v2 = off_1E7731FC0[a1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{type=%@ start=%d break=%d}", v2, a2 & 1, (a2 >> 8) & 1];
}

__CFString *PXStoryAutoEditPanDirectionDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7731FE0[a1];
  }
}

__CFString *PXStoryAutoEditPanRelativeMotionDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7732008[a1];
  }
}

__CFString *PXStoryAutoEditScaleDirectionDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7732020[a1];
  }
}

__CFString *PXStoryAutoEditScaleSettingsDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7732020[a1];
  }
}

__CFString *PXStoryAutoEditRotateDirectionDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7732038[a1];
  }
}

__CFString *PXStoryAutoEditRotateSettingsDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7732038[a1];
  }
}

__CFString *PXStoryAutoEditWipeSettingsDescription(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    return @"??";
  }

  else
  {
    return off_1E7740150[a1 & 3];
  }
}

uint64_t PXStoryAutoEditClipMotionInfoMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  v6 = a6 + 1;
  a6[2] = 0;
  switch(result)
  {
    case 3:
      *v6 = a5;
      break;
    case 2:
      *v6 = a4;
      break;
    case 1:
      a6[1] = a2;
      a6[2] = a3;
      break;
  }

  return result;
}

uint64_t PXStoryAutoEditClipMotionInfoMakePan@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 1;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t PXStoryAutoEditClipMotionInfoMakeScale@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = result;
  a2[2] = 0;
  *a2 = 2;
  return result;
}

uint64_t PXStoryAutoEditClipMotionInfoMakeRotate@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = result;
  a2[2] = 0;
  *a2 = 3;
  return result;
}

uint64_t PXStoryAutoEditClipTransitionInfoMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = result;
  *(a7 + 8) = a8;
  *(a7 + 16) = 0;
  v8 = (a7 + 16);
  *(a7 + 24) = 0;
  if (result > 6)
  {
    if (result == 7)
    {
      *v8 = a5;
    }

    else if (result == 8)
    {
      *v8 = a6;
    }
  }

  else if (result == 5)
  {
    *(a7 + 16) = a2;
    *(a7 + 24) = a3;
  }

  else if (result == 6)
  {
    *v8 = a4;
  }

  return result;
}

uint64_t PXStoryAutoEditClipTransitionInfoMakePan@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = 5;
  *(a3 + 8) = a4;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t PXStoryAutoEditClipTransitionInfoMakeScale@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 6;
  *(a2 + 8) = a3;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t PXStoryAutoEditClipTransitionInfoMakeRotate@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 7;
  *(a2 + 8) = a3;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t PXStoryAutoEditClipTransitionInfoMakeWipe@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 8;
  *(a2 + 8) = a3;
  *(a2 + 16) = result;
  return result;
}

uint64_t __Block_byref_object_copy__51678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXSharedLibraryAssistantSummaryDetail(uint64_t a1, id a2)
{
  switch(a1)
  {
    case 1:
      v4 = @"PXSharedLibraryAssistant_Summary_Detail_Setup";
      goto LABEL_7;
    case 2:
      v4 = @"PXSharedLibraryAssistant_Summary_Detail_Reply";
LABEL_7:
      a2 = PXLocalizedSharedLibraryString(v4);
      break;
    case 0:
      v2 = [MEMORY[0x1E696AAA8] currentHandler];
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXSharedLibraryAssistantSummaryDetail(PXSharedLibraryAssistantMode)"];
      [v2 handleFailureInFunction:v3 file:@"PXSharedLibraryAssistantSummaryUtilities.m" lineNumber:24 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  return a2;
}

__CFString *PXSharedLibraryAssistantSummaryStartButtonTitleForMode(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = @"PXSharedLibraryReplyAssistant_Summary_ButtonTitle_Start";
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v2 = @"PXSharedLibrarySetupAssistant_Summary_ButtonTitle_Preview";
LABEL_8:
    v1 = PXLocalizedSharedLibraryString(v2);
    goto LABEL_9;
  }

  if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = &stru_1F1741150;
  }

LABEL_9:

  return v1;
}

__CFString *PXSharedLibraryAssistantSummaryDeclineButtonTitleForMode(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = @"PXSharedLibraryReplyAssistant_Summary_ButtonTitle_Decline";
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v2 = @"PXSharedLibraryAssistant_Summary_ButtonTitle_SkipPreview";
LABEL_8:
    v1 = PXLocalizedSharedLibraryString(v2);
    goto LABEL_9;
  }

  if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = &stru_1F1741150;
  }

LABEL_9:

  return v1;
}

void sub_1A4C130D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A4C1438C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak(v17 + 6);
  objc_destroyWeak(v17 + 5);
  objc_destroyWeak(v17 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4C1485C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak((v20 - 96));
  objc_destroyWeak((v20 - 88));
  _Unwind_Resume(a1);
}

void PXSettingsPerformIndexingOperation(void *a1)
{
  v4 = a1;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXSettingsPerformIndexingOperation(__strong dispatch_block_t _Nonnull)"];
    [v2 handleFailureInFunction:v3 file:@"PrototypeTools+PhotosUICore.m" lineNumber:31 description:@"must be called on the main thread"];
  }

  v1 = isIndexing;
  isIndexing = 1;
  v4[2]();
  isIndexing = v1;
}

uint64_t PXShouldHideStatusBarWithCameraWorkaround(void *a1, _BOOL8 a2)
{
  v3 = a1;
  v4 = +[PXSolariumSettings sharedInstance];
  if (![v4 enableStatusBarsHiddenFromCameraPadOneUp])
  {
    goto LABEL_5;
  }

  v5 = PFIsCamera();

  v6 = v5 | a2;
  if (v5 && !a2)
  {
    v4 = [v3 traitCollection];
    a2 = [v4 userInterfaceIdiom] == 1;
LABEL_5:

    v6 = a2;
  }

  return v6;
}

id PXStoryAnalyticsEventForSummaryWithPauseCount(uint64_t a1)
{
  v1 = [MEMORY[0x1E6991F28] bucketNameForInteger:a1 bucketLimits:{0, 2, 5, 10, 20, 50, 100, 0}];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.memory.interactiveMemoryPlaybackFinishedWith%@Pauses", v1];

  return v2;
}

__CFString *PXSharedLibraryAutoSharePolicyDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXSharedLibraryAutoSharePolicy: %ld", a1];
  }

  else
  {
    v2 = off_1E77324E0[a1];
  }

  return v2;
}

__CFString *PXSharedLibraryExitRetentionPolicyDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXSharedLibraryExitRetentionPolicy: %ld", a1];
  }

  else
  {
    v2 = off_1E77324F8[a1];
  }

  return v2;
}

id PXSharedLibraryUserCanceledErrorWithDebugDescription(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSError * _Nonnull PXSharedLibraryUserCanceledErrorWithDebugDescription(NSString *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"PXSharedLibraryTypes.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"debugDescription.length > 0"}];
  }

  v2 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1001 debugDescription:{@"Canceled by the user: %@", v1}];

  return v2;
}

uint64_t PXSharedLibraryIsUserCanceledError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PXSharedLibraryIsUserCanceledError(NSError *__strong _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"PXSharedLibraryTypes.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v2 = [v1 px_isDomain:@"PXSharedLibraryErrorDomain" code:-1001];

  return v2;
}

id px_deferredLocalizedStringWithFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696E818];
  v10 = a1;
  v11 = [v9 alloc];
  v12 = [MEMORY[0x1E696AAE8] px_bundle];
  v13 = [v11 initWithDeferredFormat:v10 fromTable:@"PhotosUICore" bundle:v12 arguments:&a9];

  return v13;
}

id _NumericalValuesForKeyPath(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__53939;
  v28 = __Block_byref_object_dispose__53940;
  v29 = 0;
  v9 = [v5 photoLibrary];
  v10 = [v9 managedObjectContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___NumericalValuesForKeyPath_block_invoke;
  v20[3] = &unk_1E7746448;
  v23 = &v24;
  v11 = v6;
  v21 = v11;
  v12 = v10;
  v22 = v12;
  [v12 performBlockAndWait:v20];
  if ([v25[5] count])
  {
    v13 = [v25[5] sortedArrayUsingComparator:&__block_literal_global_198_53941];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___NumericalValuesForKeyPath_block_invoke_3;
    v17[3] = &unk_1E7745F70;
    v18 = v7;
    v19 = v8;
    [v13 enumerateObjectsUsingBlock:v17];
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: no numerical values for key path: %@", buf, 0xCu);
    }
  }

  v14 = v22;
  v15 = v8;

  _Block_object_dispose(&v24, 8);

  return v15;
}

void sub_1A4C17890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53939(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _StringValuesForKeyPath(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__53939;
  v21 = __Block_byref_object_dispose__53940;
  v22 = 0;
  v5 = [v3 photoLibrary];
  v6 = [v5 managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___StringValuesForKeyPath_block_invoke;
  v13[3] = &unk_1E7746448;
  v16 = &v17;
  v7 = v4;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  [v8 performBlockAndWait:v13];
  if ([v18[5] count])
  {
    v9 = [v18[5] sortedArrayUsingComparator:&__block_literal_global_201_53948];
    v10 = v18[5];
    v18[5] = v9;
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "PXSmartAlbums: no string values for key path: %@", buf, 0xCu);
    }
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_1A4C17BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C18718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C1886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C191C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A4C1949C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A4C19A1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4C1D674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C20248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54976(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C22D4C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Unwind_Resume(a1);
}

void sub_1A4C234A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C23954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C23E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C243C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C2710C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_1A4C2B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C2B460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55696(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C2B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C2C2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C2D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A4C301B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactFormatter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactFormatterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:38 description:{@"Unable to find class %s", "CNContactFormatter"}];

    __break(1u);
  }
}

void *ContactsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7733148;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:36 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4C30958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ContactsUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7733130;
    v8 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXContextualMemoriesSettingsTableViewController.m" lineNumber:37 description:{@"Unable to find class %s", "CNContactPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getCNContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

id _PXTCCLibraryCountString(int a1)
{
  v2 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  _PXTCCLibraryCounts(&v5, v2);
  if (!a1 || (v3 = 0, v5 != -v6))
  {
    v3 = PLLocalizedCountDescription();
  }

  return v3;
}

void _PXTCCLibraryCounts(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
  *a1 = *off_1E7721F70;
  *(a1 + 16) = *(off_1E7721F70 + 2);
  v5 = [PXPhotosMetadataFetcher sharedFetcherForPhotoLibrary:v3];

  [v5 getAssetCounts:a1 guestAssetCounts:0 forFetchResult:v4 allowFetch:1];
}

id PXTCCSettingsGridSubtitle()
{
  v0 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  memset(v3, 0, sizeof(v3));
  _PXTCCLibraryCounts(v3, v0);
  v1 = PLLocalizedCountDescription();

  return v1;
}

__CFString *PXTCCSettingsGridFooterText()
{
  v0 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  _PXTCCLibraryCounts(&v4, v0);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v4 && v5 && v5 + v4 >= 3)
    {
      PXLocalizedStringFromTable(@"PXTCCSettingsFooterPhotosAndVideos", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      goto LABEL_20;
    }

    if (v4 >= 2 && !v5)
    {
      PXLocalizedStringFromTable(@"PXTCCSettingsFooterPhotosOnly", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      goto LABEL_20;
    }

    if (!v4 && v5 >= 2)
    {
      PXLocalizedStringFromTable(@"PXTCCSettingsFooterVideosOnly", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
LABEL_20:
      PXLocalizedStringWithValidatedFormat();
    }
  }

  return &stru_1F1741150;
}

id PXTCCSettingsLimitedAccessSubtitle(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v3 = v1;
  v4 = [v2 librarySpecificFetchOptions];
  v5 = [MEMORY[0x1E6978630] fetchType];
  v6 = [v2 limitedLibraryPredicateForApplication:v3 fetchType:v5];

  [v4 setInternalPredicate:v6];
  v7 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v4];
  v8 = [v7 count];

  if (v8)
  {
    PXLocalizedStringFromTable(@"PXTCCSettingsLimitedAccessSelection", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v9 = PXLocalizedStringFromTable(@"PXTCCSettingsLimitedAccessNoSelection", @"PhotosUICore");

  return v9;
}

void sub_1A4C334BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56616(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C33BC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

PXCMMPhotoKitContext *PXCMMCreateDebugCMMContext(void *a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  v5 = [v4 reviewFlow];

  if (v5)
  {
    v6 = 2 * (v5 == 1);
  }

  else
  {
    v6 = 1;
  }

  v7 = +[PXCompleteMyMomentSettings sharedInstance];
  v8 = [v7 reviewFlowDataSourceType];

  if (v8 == 2)
  {
    v9 = [v3 librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"localizedTitle like[cd] %@", @"CMM-Test-*"];
    [v9 setPredicate:v10];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudLastContributionDate" ascending:0];
    v25 = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v9 setInternalSortDescriptors:v18];

    [v9 setFetchLimit:1];
    v19 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:101 options:v9];
    v14 = [v19 firstObject];

    if (!v14)
    {
      v15 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No shared albums found with the correct name format CMM-Test-XXXXsomething"];
      v21 = PLSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "You need a shared album named CMM-Test-XXXXsomething to use shared albums as backend", buf, 2u);
      }

      goto LABEL_19;
    }

LABEL_12:
    v17 = [[PXCMMPhotoKitContext alloc] initWithAssetCollection:v14 activityType:v6 sourceType:0];
    v15 = 0;
LABEL_20:

    goto LABEL_21;
  }

  if (v8 != 1)
  {
    if (v8)
    {
      goto LABEL_25;
    }

    v9 = [v3 librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"estimatedAssetCount > 10"];
    [v9 setPredicate:v10];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v28[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v9 setSortDescriptors:v12];

    [v9 setFetchLimit:1];
    v13 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v9];
    v14 = [v13 firstObject];

    if (!v14)
    {
      v15 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"No recent, big moments found"}];
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v24 = 0;
  v16 = [v3 pathManager];
  v10 = [v16 temporaryFileBackedDebugDirectoryCreateIfNeeded:0 error:&v24];

  v9 = v24;
  if (!v10)
  {
    v20 = PLSharingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "No file backed directory found with error %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:v9 debugDescription:@"No file backed directory available"];

    goto LABEL_22;
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  v17 = [PXCMMFileBackedContext fileBackedContextWithDirectoryURL:v11 activityType:v6 title:@"File Backed"];
  v15 = 0;
LABEL_21:

  if (v17)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (!v15)
  {
LABEL_25:
    v15 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to create context with unknown error"];
    if (a2)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (a2)
  {
LABEL_24:
    v22 = v15;
    v17 = 0;
    *a2 = v15;
    goto LABEL_27;
  }

LABEL_26:
  v17 = 0;
LABEL_27:

  return v17;
}

void sub_1A4C34A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C34DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C39304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  objc_destroyWeak(&STACK[0x370]);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57391(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C39D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL writeJpegImageToURL(CGImage *a1, const __CFDictionary *a2, void *a3)
{
  v5 = *MEMORY[0x1E6982E58];
  v6 = a3;
  v7 = [v5 identifier];
  v8 = CGImageDestinationCreateWithURL(v6, v7, 1uLL, 0);

  if (!v8)
  {
    return 0;
  }

  CGImageDestinationAddImage(v8, a1, a2);
  v9 = CGImageDestinationFinalize(v8);
  CFRelease(v8);
  return v9;
}

id fetchCollectionsInCollectionList(void *a1)
{
  v1 = a1;
  v2 = [v1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setWantsIncrementalChangeDetails:0];
  v4 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v1 options:v3];

  return v4;
}

void sub_1A4C3D4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXSystemNavigationDestinationDescription(unint64_t a1)
{
  if (a1 > 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E7733830[a1];
  }

  if (![(__CFString *)v2 length])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PXSystemNavigationDestinationDescription(PXSystemNavigationDestination)"];
    [v4 handleFailureInFunction:v5 file:@"PXSystemNavigation.m" lineNumber:92 description:{@"Invalid destination: %ld", a1}];
  }

  return v2;
}

void PXSystemNavigationEnumerateDestinations(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (!v1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXSystemNavigationEnumerateDestinations(void (^__strong)(PXSystemNavigationDestination))"];
    [v3 handleFailureInFunction:v4 file:@"PXSystemNavigation.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

    v1 = 0;
  }

  for (i = 1; i != 14; ++i)
  {
    (*(v1 + 2))(v5, i);
    v1 = v5;
  }
}

uint64_t PXCreateDirectoryForFileProviderDomain(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = PXPhotosFileProviderManager();
  if (PXCanAccessDocumentStorageURL(v4))
  {
    v5 = [v4 documentStorageURL];
    v6 = [v3 pathRelativeToDocumentStorage];
    v7 = [v5 URLByAppendingPathComponent:v6];

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0;
    v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v17];
    v10 = v17;

    if ((v9 & 1) == 0)
    {
      v11 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 description];
        v13 = [v10 localizedDescription];
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create directory at path:%@ Error:%@", buf, 0x16u);
      }

      if (a2)
      {
        v14 = v10;
        *a2 = v10;
      }
    }
  }

  else
  {
    v15 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Unable to access document storage url with file provider manager: %{public}@", buf, 0xCu);
    }

    if (a2)
    {
      [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Unable to access document storage url with file provider manager: %@", v4}];
      *a2 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

id PXPhotosFileProviderManager()
{
  v0 = PXPhotosFileProviderManager_photosFileProviderManager;
  if (!PXPhotosFileProviderManager_photosFileProviderManager)
  {
    v1 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v1, OS_LOG_TYPE_DEFAULT, "Initializing PhotosFileProvider NSFileProviderManager.", v5, 2u);
    }

    v2 = [objc_alloc(MEMORY[0x1E6967510]) _initWithProviderIdentifier:@"com.apple.mobileslideshow.PhotosFileProvider" groupName:@"group.com.apple.mobileslideshow.PhotosFileProvider"];
    v3 = PXPhotosFileProviderManager_photosFileProviderManager;
    PXPhotosFileProviderManager_photosFileProviderManager = v2;

    v0 = PXPhotosFileProviderManager_photosFileProviderManager;
  }

  return v0;
}

id PXPhotosFileProviderVariantsSortedByEncodingPolicy(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1 == 1)
  {
    v6 = &unk_1F1910108;
  }

  else if (a1 == 2)
  {
    v6 = &unk_1F1910120;
  }

  else
  {
    v6 = PXPhotosFileProviderVariantsSortedByClientEncodingPolicy(a2, v5);
  }

  return v6;
}

id PXPhotosFileProviderVariantsSortedByClientEncodingPolicy(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 1)
  {
    v4 = &unk_1F1910138;
  }

  else if (a1 == 2)
  {
    v4 = &unk_1F1910150;
  }

  else
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"compatibilityConversionsDisabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    v6 = &unk_1F1910168;
    if ((!keyExistsAndHasValidFormat || !AppBooleanValue) && ![v3 isSpatialMedia])
    {
      v6 = &unk_1F1910180;
    }

    v4 = v6;
  }

  return v4;
}

id PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_onceToken != -1)
  {
    dispatch_once(&PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_onceToken, &__block_literal_global_58526);
  }

  v2 = v1;
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:v2];
  if ([v3 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v4 = v2;
    if ([PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_supportedImageDestinationTypeIdentifiers containsObject:v2])
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cannot preserve format when downscaling images of type %{public}@, defaulting to JPEG.", &v6, 0xCu);
    }

    v4 = [*MEMORY[0x1E6982E58] identifier];
  }

  else
  {
    v4 = v2;
    if ([v3 conformsToType:*MEMORY[0x1E6983080]])
    {
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cannot determine a downscaling type as the type identifier (%{public}@) neither conforms to image or video.", &v6, 0xCu);
    }

    v4 = 0;
  }

LABEL_13:

  return v4;
}

void __PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_block_invoke()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_supportedImageDestinationTypeIdentifiers;
  PXPhotosFileProviderTypeIdentifierForDownscalingAssetWithTypeIdentifier_supportedImageDestinationTypeIdentifiers = v0;
}

void PXAsynchronousAddDragAndDropFileProviderDomain()
{
  v1 = PXPhotosFileProviderManager();
  v0 = _PXDragAndDropFileProviderDomain();
  [v1 addDomain:v0 completionHandler:&__block_literal_global_389];
}

id _PXDragAndDropFileProviderDomain()
{
  if (_PXDragAndDropFileProviderDomain_onceToken != -1)
  {
    dispatch_once(&_PXDragAndDropFileProviderDomain_onceToken, &__block_literal_global_417);
  }

  v1 = _PXDragAndDropFileProviderDomain_domain;

  return v1;
}

void __PXAsynchronousAddDragAndDropFileProviderDomain_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLDragAndDropGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Failed to add drag and drop domain with error: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "Successfully added drag and drop domain.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

void PXAsynchronousAddBoopFileProviderDomain()
{
  v1 = PXPhotosFileProviderManager();
  v0 = _PXBoopFileProviderDomain();
  [v1 addDomain:v0 completionHandler:&__block_literal_global_391];
}

id _PXBoopFileProviderDomain()
{
  if (_PXBoopFileProviderDomain_onceToken != -1)
  {
    dispatch_once(&_PXBoopFileProviderDomain_onceToken, &__block_literal_global_425);
  }

  v1 = _PXBoopFileProviderDomain_domain;

  return v1;
}

void __PXAsynchronousAddBoopFileProviderDomain_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLBoopGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "Failed to add boop domain with error: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "Successfully added boop domain.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

void PXAsynchronousAddPickerFileProviderDomain(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E69674D8]);
  v3 = PXLocalizedStringFromTable(@"PICKER_FILE_PROVIDER_DOMAIN_TITLE", @"PhotosUICore");
  v4 = [v2 initWithIdentifier:@"photospicker" displayName:v3 pathRelativeToDocumentStorage:@"photospicker" hidden:1];

  v5 = PXPhotosFileProviderManager();
  PXCreateDirectoryForFileProviderDomain(v4, 0);
  objc_initWeak(&location, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PXAsynchronousAddPickerFileProviderDomain_block_invoke;
  v8[3] = &unk_1E77338D0;
  v6 = v1;
  v10 = v6;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v11, &location);
  [v5 addDomain:v7 completionHandler:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void sub_1A4C454F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PXAsynchronousAddPickerFileProviderDomain_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v3 + 16))(v3, v4, WeakRetained, v5);
}

id PXSynchronousAddPickerFileProviderDomain(void *a1)
{
  if (!a1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSFileProviderDomain * _Nullable PXSynchronousAddPickerFileProviderDomain(NSError *__autoreleasing * _Nullable)"];
    [v11 handleFailureInFunction:v12 file:@"PXPhotosFileProvider.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"domainError"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__58556;
  v20 = __Block_byref_object_dispose__58557;
  v21 = 0;
  v2 = dispatch_group_create();
  v3 = objc_alloc(MEMORY[0x1E69674D8]);
  v4 = PXLocalizedStringFromTable(@"PICKER_FILE_PROVIDER_DOMAIN_TITLE", @"PhotosUICore");
  v5 = [v3 initWithIdentifier:@"photospicker" displayName:v4 pathRelativeToDocumentStorage:@"photospicker" hidden:1];

  PXCreateDirectoryForFileProviderDomain(v5, 0);
  dispatch_group_enter(v2);
  v6 = PXPhotosFileProviderManager();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __PXSynchronousAddPickerFileProviderDomain_block_invoke;
  v13[3] = &unk_1E7734318;
  v15 = &v16;
  v7 = v2;
  v14 = v7;
  [v6 addDomain:v5 completionHandler:v13];

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  *a1 = v17[5];
  if (v17[5])
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  _Block_object_dispose(&v16, 8);

  return v9;
}

void sub_1A4C457B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58556(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PXSynchronousAddPickerFileProviderDomain_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

NSObject *PXItemProviderForAsset(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_37;
  }

  v8 = [v5 needsSensitivityProtection];
  v9 = PLDragAndDropGetLog();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 localIdentifier];
      v29 = 138543362;
      v30 = v13;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Creating itemProvider for asset: %{public}@", &v29, 0xCu);
    }

    if (v6)
    {
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = _PXDragAndDropPhotosFileProviderRegisterConfiguration();
      if (v7)
      {
        goto LABEL_15;
      }
    }

    v14 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "No domain provided, using drag and drop domain.", &v29, 2u);
    }

    v7 = _PXDragAndDropFileProviderDomain();
    if (!v7)
    {
      v10 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v26 = [v5 localIdentifier];
        v29 = 138543362;
        v30 = v26;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to get NSFileProviderManager for asset: %{public}@", &v29, 0xCu);
      }

      v7 = 0;
      goto LABEL_30;
    }

LABEL_15:
    v15 = PXPhotosFileProviderManager();
    v10 = v15;
    if (v15)
    {
      if (PXCanAccessDocumentStorageURL(v15))
      {
        v16 = objc_alloc_init(MEMORY[0x1E6979120]);
        v17 = [[PXPhotosFileProviderRegister alloc] initWithConfiguration:v6 fileProviderManager:v10 domain:v7];
        v18 = [(PXPhotosFileProviderRegister *)v17 registerFileRepresentationsWithItemProvider:v16 asset:v5];
        v19 = PLDragAndDropGetLog();
        v20 = v19;
        if (v16)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v29 = 138412802;
            v30 = v16;
            v31 = 2112;
            v32 = v10;
            v33 = 2112;
            v34 = v7;
            _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Created itemProvider: %@, for fileProviderManager: %@, domain: %@", &v29, 0x20u);
          }

          v21 = v16;
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v27 = [v5 localIdentifier];
            v29 = 138543362;
            v30 = v27;
            _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Failed to get NSFileProviderManager for asset: %{public}@", &v29, 0xCu);
          }
        }

        v12 = v16;
        goto LABEL_35;
      }

      v16 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = [v5 localIdentifier];
        v29 = 138543618;
        v30 = v10;
        v31 = 2114;
        v32 = v22;
        v23 = "Unable to access document storage url with file provider manager: %{public}@ for asset: %{public}@";
        v24 = v16;
        v25 = 22;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = [v5 localIdentifier];
        v29 = 138543362;
        v30 = v22;
        v23 = "Failed to initialize PhotosFileProvider NSFileProviderManager for asset: %{public}@";
        v24 = v16;
        v25 = 12;
LABEL_25:
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, v23, &v29, v25);
      }
    }

    v12 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [v5 localIdentifier];
    v29 = 138543362;
    v30 = v11;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot DnD assets that need sensitivity protection: %{public}@", &v29, 0xCu);
  }

LABEL_30:
  v12 = 0;
LABEL_36:

LABEL_37:

  return v12;
}

id _PXDragAndDropPhotosFileProviderRegisterConfiguration()
{
  if (_PXDragAndDropPhotosFileProviderRegisterConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXDragAndDropPhotosFileProviderRegisterConfiguration_onceToken, &__block_literal_global_436);
  }

  v1 = _PXDragAndDropPhotosFileProviderRegisterConfiguration_configuration;

  return v1;
}

id PXBoopItemProviderForAsset(void *a1)
{
  v1 = _PXBoopPhotosFileProviderRegisterConfiguration_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_PXBoopPhotosFileProviderRegisterConfiguration_onceToken, &__block_literal_global_438);
  }

  v3 = _PXBoopPhotosFileProviderRegisterConfiguration_configuration;
  v4 = _PXBoopFileProviderDomain();
  v5 = PXItemProviderForAsset(v2, v3, v4);

  return v5;
}

id _PXDragAndDropItemProviderForAsset(void *a1)
{
  v1 = a1;
  v2 = _PXDragAndDropPhotosFileProviderRegisterConfiguration();
  v3 = _PXDragAndDropFileProviderDomain();
  v4 = PXItemProviderForAsset(v1, v2, v3);

  return v4;
}

id PXDragAndDropItemProviderForAsset(void *a1)
{
  v1 = a1;
  if (PFIsMessagesApp())
  {
    PXMessagesShareSheetItemProviderForAsset(v1);
  }

  else
  {
    _PXDragAndDropItemProviderForAsset(v1);
  }
  v2 = ;

  return v2;
}

id PXMessagesShareSheetItemProviderForAsset(void *a1)
{
  v1 = _PXMessagesShareSheetPhotosFileProviderRegisterConfiguration_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_PXMessagesShareSheetPhotosFileProviderRegisterConfiguration_onceToken, &__block_literal_global_440);
  }

  v3 = _PXMessagesShareSheetPhotosFileProviderRegisterConfiguration_configuration;
  v4 = _PXDragAndDropFileProviderDomain();
  v5 = PXItemProviderForAsset(v2, v3, v4);

  return v5;
}

id PXDragAndDropItemProviderForObject(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;

    if (v2)
    {
      v3 = PXDragAndDropItemProviderForAsset(v2);
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    v2 = 0;
LABEL_13:
    v3 = 0;
    goto LABEL_26;
  }

  v4 = _PXDragAndDropPhotosFileProviderRegisterConfiguration();
  v5 = _PXDragAndDropFileProviderDomain();
  if (v5)
  {
    v6 = PXPhotosFileProviderManager();
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696ACA0]);
      v8 = [[PXPhotosFileProviderRegister alloc] initWithConfiguration:v4 fileProviderManager:v6 domain:v5];
      v9 = [(PXPhotosFileProviderRegister *)v8 registerFolderRepresentationWithItemProvider:v7 object:v1];
      v10 = PLDragAndDropGetLog();
      v11 = v10;
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412802;
          v18 = v7;
          v19 = 2112;
          v20 = v6;
          v21 = 2112;
          v22 = v5;
          _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Created itemProvider: %@, for fileProviderManager: %@, domain: %@", &v17, 0x20u);
        }

        v12 = v7;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = [v1 localIdentifier];
          v17 = 138543362;
          v18 = v15;
          _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Failed to get NSFileProviderManager for collection: %{public}@", &v17, 0xCu);
        }
      }

      v3 = v7;
    }

    else
    {
      v7 = PLDragAndDropGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = [v1 localIdentifier];
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize PhotosFileProvider NSFileProviderManager for object: %{public}@", &v17, 0xCu);
      }

      v3 = 0;
    }
  }

  else
  {
    v6 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [v1 localIdentifier];
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to get NSFileProviderManager for object: %{public}@", &v17, 0xCu);
    }

    v3 = 0;
  }

  v2 = 0;
LABEL_26:

  return v3;
}

id PXDragAndDropItemProviderForDisplayAsset(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _PXDragAndDropItemProviderForAsset(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PXPhotosFileProviderRegister *PXPickerFileProviderRegister(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[PXPhotosFileProviderRegister alloc] initWithConfiguration:v5 fileProviderManager:v7 domain:v6];

  return v8;
}

id PXPhotosFileProviderRegisterFileRepresentationTypeIdentifier(void *a1)
{
  v1 = [a1 contentType];
  v2 = [v1 identifier];

  return v2;
}

__CFString *PXAssetVariationTypeDescription(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77338F0[a1 + 1];
  }
}

__CFString *PXSharedLibraryInvitationTransportDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXSharedLibraryInvitationTransport: %ld", a1];
  }

  else
  {
    v2 = off_1E77339B8[a1];
  }

  return v2;
}

void PXSharedLibraryFinishReviewAssistant(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFinishReviewAssistant(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, PXSharedLibraryInvitationTransport, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^__strong _Nonnull)(BOOL, NSError * _Nullable __strong))"}];
    [v19 handleFailureInFunction:v20 file:@"PXSharedLibraryAssistantReviewParticipantsUtilities.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"statusProvider"}];

    if (v12)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_13:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFinishReviewAssistant(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, PXSharedLibraryInvitationTransport, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^__strong _Nonnull)(BOOL, NSError * _Nullable __strong))"}];
      [v23 handleFailureInFunction:v24 file:@"PXSharedLibraryAssistantReviewParticipantsUtilities.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFinishReviewAssistant(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, PXSharedLibraryInvitationTransport, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^__strong _Nonnull)(BOOL, NSError * _Nullable __strong))"}];
  [v21 handleFailureInFunction:v22 file:@"PXSharedLibraryAssistantReviewParticipantsUtilities.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_14:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PXSharedLibraryFinishReviewAssistant(PXSharedLibraryStatusProvider *__strong _Nonnull, PXSharedLibraryAssistantViewModel *__strong _Nonnull, PXSharedLibraryInvitationTransport, NSProgress * _Nullable __strong, __strong id<PXPresentationEnvironment> _Nonnull, void (^__strong _Nonnull)(BOOL, NSError * _Nullable __strong))"}];
  [v25 handleFailureInFunction:v26 file:@"PXSharedLibraryAssistantReviewParticipantsUtilities.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v16 = [v12 sharedLibrary];
  if (![v16 isInPreview])
  {

    goto LABEL_9;
  }

  v17 = [v12 previewIsOutdated];

  if (!v17)
  {
LABEL_9:
    _CreateOrPublishLibraryScope(v11, v12, a3, v13, v14, v15);
    goto LABEL_10;
  }

  v18 = [v12 sharedLibrary];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __PXSharedLibraryFinishReviewAssistant_block_invoke;
  v27[3] = &unk_1E77487D8;
  v28 = v13;
  v29 = v11;
  v30 = v12;
  v33 = a3;
  v31 = v14;
  v32 = v15;
  _ExitSharedLibraryOrPreview(v18, 0, 0, v31, @"PXSharedLibraryFinishReviewAssistant", v27);

LABEL_10:
}

void __PXSharedLibraryFinishReviewAssistant_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    _CreateOrPublishLibraryScope(*(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 32), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void _CreateOrPublishLibraryScope(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v12 sharedLibrary];
  v17 = [v12 emailAddresses];
  v18 = [v12 phoneNumbers];
  if ([v16 isPublished])
  {
    _FinishAssistantForSharedLibrary(v16, v17, v18, a3, v14, v15);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___CreateOrPublishLibraryScope_block_invoke;
    v19[3] = &unk_1E7733970;
    v20 = v12;
    v21 = v17;
    v22 = v18;
    v25 = a3;
    v23 = v14;
    v24 = v15;
    PXSharedLibraryCreateOrPublishLibraryScope(v11, v20, v13, v23, v19);
  }
}

void _FinishAssistantForSharedLibrary(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if ([v11 isInLocalMode])
  {
    v16 = v15;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v23 = ___FinishAssistantForLocalMode_block_invoke;
    v24 = &unk_1E7733998;
    v25 = v16;
    v17 = [v14 presentAlertWithConfigurationHandler:&buf];
    if (!v17)
    {
      v18 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Failed to present the LocalMode information alert", v21, 2u);
      }

      (*(v16 + 2))(v16, 1, 0);
    }

    goto LABEL_19;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v19 = [v11 shareURL];
      PXSharedLibraryShareInvitation(v19, v14, @"Assistant", v15);
LABEL_18:

      goto LABEL_19;
    }

    if (a4 == 3)
    {
      PXSharedLibrarySendInvitation(v11, v12, v13, v14, @"Assistant", v15);
    }
  }

  else
  {
    if (!a4)
    {
      (*(v15 + 2))(v15, 1, 0);
      goto LABEL_19;
    }

    if (a4 == 1)
    {
      v19 = [v11 shareURL];
      v20 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Assistant: Will copy URL for invitation: %@", &buf, 0xCu);
      }

      PXCopyURL(v19);
      (*(v15 + 2))(v15, 1, 0);
      goto LABEL_18;
    }
  }

LABEL_19:
}

void PXSharedLibraryAssistantReviewParticipantsSubtitle(void *a1, uint64_t a2, void *a3)
{
  a1;
  v5 = @"MultipleParticipants";
  if (a2 == 1)
  {
    v5 = @"SingleParticipant";
  }

  if (!a2)
  {
    v5 = @"GenericParticipants";
  }

  v6 = v5;
  v7 = a3[1];
  v8 = a3[2];
  if (*a3 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibraryAssistant_ReviewRecipients_%@_Subtitle_Items_Format", v6];
      PXLocalizedSharedLibraryString(v11);
      objc_claimAutoreleasedReturnValue();

      goto LABEL_21;
    }

    if (*a3)
    {
      if (v7)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibraryAssistant_ReviewRecipients_%@_Subtitle_PhotosAndVideos_Format", v6];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibraryAssistant_ReviewRecipients_%@_Subtitle_Photos_Format", v6];
      }
      v12 = ;
      PXLocalizedSharedLibraryString(v12);
      objc_claimAutoreleasedReturnValue();

LABEL_21:
      PXLocalizedStringWithValidatedFormat();
    }

    if (v7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibraryAssistant_ReviewRecipients_%@_Subtitle_Videos_Format", v6];
      PXLocalizedSharedLibraryString(v13);
      objc_claimAutoreleasedReturnValue();

      goto LABEL_21;
    }
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibraryAssistant_ReviewRecipients_%@_NoItems_Subtitle_Format", v6];
  PXLocalizedSharedLibraryString(v14);
  objc_claimAutoreleasedReturnValue();

  PXLocalizedStringWithValidatedFormat();
}

void sub_1A4C4CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C4D2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C52244(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60469(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C52ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C52F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C5310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C53ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id fetchAssetsInAssetCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setWantsIncrementalChangeDetails:0];
  v4 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v1 options:v3];

  return v4;
}

__CFString *PXCMMInvitationViewModelChangedDebugDescription(uint64_t a1)
{
  if (a1 <= 31)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        v2 = @"isNew";

        return v2;
      }

      if (a1 == 2)
      {
        v2 = @"posterTitle";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          v2 = @"posterSubtitle";

          return v2;
        case 8:
          v2 = @"posterAsset";

          return v2;
        case 16:
          v2 = @"posterMediaProvider";

          return v2;
      }
    }

LABEL_48:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%llu)", a1];

    return v2;
  }

  if (a1 > 255)
  {
    switch(a1)
    {
      case 256:
        v2 = @"opaqueAncestorBackgroundColor";

        return v2;
      case 512:
        v2 = @"highlighted";

        return v2;
      case 1024:
        v2 = @"owner";

        return v2;
    }

    goto LABEL_48;
  }

  switch(a1)
  {
    case 32:
      v2 = @"title";

      break;
    case 64:
      v2 = @"subtitle1";

      break;
    case 128:
      v2 = @"subtitle2";

      return v2;
    default:
      goto LABEL_48;
  }

  return v2;
}

id PXCMMInvitationViewModelChangeDescriptorDebugDescription(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
  for (i = 0; i != 12; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v4 = PXCMMInvitationViewModelChangedDebugDescription((1 << i) & a1);
      [v2 addObject:v4];
    }
  }

  v5 = [v2 componentsJoinedByString:{@", "}];

  return v5;
}

__CFString *PXStoryPPTPresetDescription(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"??";
  }

  else
  {
    return off_1E7733B58[a1];
  }
}

uint64_t PXStoryPPTPresetEnumeratePossibleValuesUsingBlock(uint64_t a1)
{
  for (i = 1; i != 8; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

id PXStoryPPTPresetPossibleValues()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __PXStoryPPTPresetPossibleValues_block_invoke;
  v7 = &unk_1E7749940;
  v1 = v0;
  v8 = v1;
  for (i = 1; i != 8; ++i)
  {
    v6(v5, i);
  }

  v3 = [v1 copy];

  return v3;
}

void __PXStoryPPTPresetPossibleValues_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

__CFString *PXStoryPPTSubpresetDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7733B98[a1];
  }
}

uint64_t PXStoryPPTSubpresetEnumeratePossibleValuesUsingBlock(uint64_t a1)
{
  for (i = 0; i != 4; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

id PXStoryPPTSubpresetPossibleValues()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __PXStoryPPTSubpresetPossibleValues_block_invoke;
  v7 = &unk_1E7749940;
  v1 = v0;
  v2 = 0;
  v8 = v1;
  do
  {
    v6(v5, v2++);
  }

  while (v2 != 4);
  v3 = [v1 copy];

  return v3;
}

void __PXStoryPPTSubpresetPossibleValues_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

void sub_1A4C5BF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C5D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 64));
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_1A4C5E85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C5F4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C63408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C64F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C66128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C66458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C69998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXMemoryMusicQualityFeedbackTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Good Suggestion"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Lyrics Dont Match"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Wrong Pace"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Wrong Tone"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"I Dont Like This Song"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PXStringForMemoryMusicQualityFeedbackType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E7733F40[(a1 - 1)];
  }
}

id _PXContentFilterImageForImageName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PXContentFilterImageNameForItemTag(uint64_t a1)
{
  if ((a1 - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return off_1E7733FB8[a1 - 1];
  }
}

id PXContentFilterImageForItemTag(uint64_t a1)
{
  if ((a1 - 1) > 0x17)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E7733FB8[a1 - 1];
  }

  v3 = v2;
  if ([(__CFString *)v3 length])
  {
    v4 = _PXContentFilterImageForImageName(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *PXContentFilterImageNameForFilterStateAndCustomDefaultImageName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = MEMORY[0x1A590D320]();
    v5 = @"arrow.up.arrow.down";
    if (v6)
    {
      v5 = @"line.horizontal.3.decrease";
    }
  }

  v7 = v5;
  if ([v3 isFiltering])
  {

    if ([v3 activeFilterCount] == 1)
    {
      v8 = 1;
      v7 = @"line.horizontal.3.decrease";
      while (v8 <= 0x17 && ((1 << v8) & 0xF8009E) != 0 || ![v3 isContentFilterActive:v8])
      {
        if (++v8 == 25)
        {
          goto LABEL_15;
        }
      }

      if (v8 > 0x18)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_1E7733FB8[v8 - 1];
      }

      v11 = v9;
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = @"line.horizontal.3.decrease";
      }

      v7 = v13;
    }

    else
    {
      v7 = @"line.horizontal.3.decrease";
    }
  }

LABEL_15:

  return v7;
}

id PXContentFilterImageForFilterState(void *a1)
{
  v1 = PXContentFilterImageNameForFilterStateAndCustomDefaultImageName(a1, 0);
  if ([v1 length])
  {
    v2 = _PXContentFilterImageForImageName(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 isFiltering] && (objc_msgSend(v6, "isFiltering") & 1) != 0)
  {
    v8 = @"line.horizontal.3.decrease";
  }

  else if ([v5 isFiltering])
  {
    v9 = [v5 viewMode];
    if (v9 != 2)
    {
      v9 = v9 == 1;
    }

    v10 = PXLibraryFilterMenuImageNameForItemTagFilled(v9, 1);
    v11 = v10;
    v12 = @"line.horizontal.3.decrease";
    if (v10)
    {
      v12 = v10;
    }

    v8 = v12;
  }

  else
  {
    v8 = PXContentFilterImageNameForFilterStateAndCustomDefaultImageName(v6, v7);
  }

  return v8;
}

id PXContentFilterImageForFilterStates(void *a1, void *a2)
{
  v2 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(a1, a2, 0);
  if ([v2 length])
  {
    v3 = _PXContentFilterImageForImageName(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PXContentFilterTitleForItemTag(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = @"PXContentFilterMenu_AllPhotos";
      goto LABEL_26;
    case 2:
      v1 = @"PXContentFilterMenu_IncludeScreenshots";
      goto LABEL_26;
    case 3:
      v1 = @"PXContentFilterMenu_IncludeSharedWithYou";
      goto LABEL_26;
    case 4:
      v1 = @"PXContentFilterMenu_IncludeFromMyMac";
      goto LABEL_26;
    case 5:
      v1 = @"PXContentFilterMenu_SavedItemsOnly";
      goto LABEL_26;
    case 6:
      v1 = @"PXContentFilterMenu_UnsavedItemsOnly";
      goto LABEL_26;
    case 7:
      v1 = @"PXContentFilterMenu_ShowOnly";
      goto LABEL_26;
    case 8:
      v1 = @"PXContentFilterMenu_Photos";
      goto LABEL_26;
    case 9:
      v1 = @"PXContentFilterMenu_Videos";
      goto LABEL_26;
    case 10:
      v1 = @"PXContentFilterMenu_Edited";
      goto LABEL_26;
    case 11:
      v1 = @"PXContentFilterMenu_Favorite";
      goto LABEL_26;
    case 12:
      v1 = @"PXContentFilterMenu_InUserAlbum";
      goto LABEL_26;
    case 13:
      v1 = @"PXContentFilterMenu_NotInUserAlbum";
      goto LABEL_26;
    case 14:
      v1 = @"PXContentFilterMenu_Live";
      goto LABEL_26;
    case 15:
      v1 = @"PXContentFilterMenu_Portrait";
      goto LABEL_26;
    case 16:
      v1 = @"PXContentFilterMenu_Screenshots";
      goto LABEL_26;
    case 17:
      v1 = @"PXContentFilterMenu_SharedWithYou";
      goto LABEL_26;
    case 18:
      v1 = @"PXContentFilterMenu_FromMyMac";
      goto LABEL_26;
    case 19:
      v1 = @"PXContentFilterMenu_ShowOnlyKeywords";
      goto LABEL_26;
    case 20:
      v2 = &stru_1F1741150;
      break;
    case 21:
      v1 = @"PXContentFilterMenu_KeywordManager";
      goto LABEL_26;
    case 22:
      v1 = @"PXContentFilterMenu_OnlySentICloudLinks";
      goto LABEL_26;
    case 23:
      v1 = @"PXContentFilterMenu_OnlyReceivedICloudLinks";
      goto LABEL_26;
    case 24:
      v1 = @"PXContentFilterMenu_IncludeOthersInSocialGroupAssets";
LABEL_26:
      v2 = PXLocalizedStringFromTable(v1, @"PhotosUICore");
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

id PXContentFilterSubtitleForItemTag(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1 != 3)
  {
    if (a1 == 1 && [v5 hasSharedLibraryOrPreview])
    {
      switch(a3)
      {
        case 2:
          if ([v6 hasPreview])
          {
            v7 = @"PXSharedLibrary_FilterMenu_Subtitle_FromSharedLibraryPreview";
          }

          else
          {
            v7 = @"PXSharedLibrary_FilterMenu_Subtitle_FromSharedLibrary";
          }

          goto LABEL_14;
        case 1:
          v7 = @"PXSharedLibrary_FilterMenu_Subtitle_FromPersonalLibrary";
          goto LABEL_14;
        case 0:
          v7 = @"PXSharedLibrary_FilterMenu_Subtitle_FromAllLibraries";
LABEL_14:
          v9 = PXLocalizedSharedLibraryString(v7);
          goto LABEL_15;
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  v9 = PXLocalizedStringFromTable(@"PXContentFilterMenu_IncludeSharedWithYou_Subtitle", @"PhotosUICore");
LABEL_15:
  v8 = v9;
LABEL_16:

  return v8;
}

id PXContentFilterHiddenTypesForAssetCollection(void *a1)
{
  v1 = a1;
  if ([v1 px_isContentSyndicationAlbum])
  {
    v2 = &unk_1F1910240;
  }

  else if ([v1 px_isFavoritesSmartAlbum])
  {
    v2 = &unk_1F1910258;
  }

  else if ([v1 px_isScreenshotsSmartAlbum] & 1) != 0 || (objc_msgSend(v1, "px_isScreenRecordingsSmartAlbum"))
  {
    v2 = &unk_1F1910270;
  }

  else if ([v1 px_isDepthEffectSmartAlbum])
  {
    v2 = &unk_1F1910288;
  }

  else if ([v1 px_isMediaTypeSmartAlbum] && !objc_msgSend(v1, "px_isSelfPortraitsSmartAlbum"))
  {
    v2 = &unk_1F19102A0;
  }

  else if ([v1 px_isSharedAlbum])
  {
    v2 = &unk_1F19102B8;
  }

  else if ([v1 px_isAllLibraryDuplicatesSmartAlbum] & 1) != 0 || (objc_msgSend(v1, "px_isMomentShare"))
  {
    v2 = &unk_1F19102D0;
  }

  else if ([v1 px_isSearchResultsVirtualCollection])
  {
    v2 = &unk_1F19102E8;
  }

  else
  {
    v2 = &unk_1F1910300;
  }

  if ([v1 px_isRegularAlbum])
  {
    v2 = [v2 arrayByAddingObjectsFromArray:&unk_1F1910318];
  }

  v3 = [off_1E7721810 sharedInstance];
  v4 = [v3 showLivePhotoFilter];

  if ((v4 & 1) == 0)
  {
    v5 = [v2 arrayByAddingObject:&unk_1F190B080];

    v2 = v5;
  }

  v6 = [off_1E7721810 sharedInstance];
  v7 = [v6 showPortraitFilter];

  if ((v7 & 1) == 0)
  {
    v8 = [v2 arrayByAddingObject:&unk_1F190B050];

    v2 = v8;
  }

  v9 = [off_1E7721810 sharedInstance];
  v10 = [v9 showInUserAlbumFilter];

  if ((v10 & 1) == 0)
  {
    v11 = [v2 arrayByAddingObject:&unk_1F190AF48];

    v2 = v11;
  }

  v12 = [v1 px_isMediaTypeSmartAlbum];
  v13 = [v2 arrayByAddingObject:&unk_1F190B098];

  if (v12)
  {
    v14 = [v13 arrayByAddingObject:&unk_1F190B0B0];

    v13 = v14;
  }

  v15 = [v13 arrayByAddingObject:&unk_1F190B0C8];

  v16 = [v15 arrayByAddingObject:&unk_1F190B0E0];

  v17 = [v16 arrayByAddingObject:&unk_1F190B0F8];

  return v17;
}

PXContentFilterState *PXContentFilterGetUpdatedState(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = [v7 copy];
  v10 = v9;
  switch(a2)
  {
    case 1:
      v11 = [PXContentFilterState alloc];
      v12 = [v7 photoLibrary];
      v13 = [(PXContentFilterState *)v11 initWithPhotoLibrary:v12];

      -[PXContentFilterState setIncludeScreenshots:](v13, "setIncludeScreenshots:", [v7 includeScreenshots]);
      -[PXContentFilterState setIncludeSharedWithYou:](v13, "setIncludeSharedWithYou:", [v7 includeSharedWithYou]);
      -[PXContentFilterState setIncludeFromMyMac:](v13, "setIncludeFromMyMac:", [v7 includeFromMyMac]);
      v10 = v13;
      break;
    case 2:
      [(PXContentFilterState *)v9 setIncludeScreenshots:a3];
      break;
    case 3:
      [(PXContentFilterState *)v9 setIncludeSharedWithYou:a3];
      break;
    case 4:
      [(PXContentFilterState *)v9 setIncludeFromMyMac:a3];
      break;
    case 5:
      [(PXContentFilterState *)v9 setSaved:a3];
      break;
    case 6:
      [(PXContentFilterState *)v9 setUnsaved:a3];
      break;
    case 8:
      [(PXContentFilterState *)v9 setImage:a3];
      break;
    case 9:
      [(PXContentFilterState *)v9 setVideo:a3];
      break;
    case 10:
      [(PXContentFilterState *)v9 setEdited:a3];
      break;
    case 11:
      [(PXContentFilterState *)v9 setFavorite:a3];
      break;
    case 12:
      [(PXContentFilterState *)v9 setInUserAlbum:a3];
      break;
    case 13:
      [(PXContentFilterState *)v9 setNotInUserAlbum:a3];
      break;
    case 14:
      [(PXContentFilterState *)v9 setLive:a3];
      break;
    case 15:
      [(PXContentFilterState *)v9 setPortrait:a3];
      break;
    case 16:
      [(PXContentFilterState *)v9 setShowOnlyScreenshots:a3];
      break;
    case 17:
      [(PXContentFilterState *)v9 setShowOnlySharedWithYou:a3];
      break;
    case 18:
      [(PXContentFilterState *)v9 setShowOnlyFromMyMac:a3];
      break;
    case 20:
      if (v8)
      {
        v16 = [(PXContentFilterState *)v9 keywords];
        v17 = v16;
        if (a3)
        {

          if (v17)
          {
            v18 = [(PXContentFilterState *)v10 keywords];
            v19 = [v8 title];
            v20 = [v18 arrayByAddingObject:v19];
            [(PXContentFilterState *)v10 setKeywords:v20];
          }

          else
          {
            v18 = [v8 title];
            v24[0] = v18;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
            [(PXContentFilterState *)v10 setKeywords:v19];
          }
        }

        else
        {
          v18 = [v16 mutableCopy];

          v21 = [v8 title];
          [v18 removeObject:v21];

          if ([v18 count])
          {
            v22 = v18;
          }

          else
          {
            v22 = 0;
          }

          [(PXContentFilterState *)v10 setKeywords:v22];
        }
      }

      break;
    case 22:
      [(PXContentFilterState *)v9 setShowOnlySentICloudLinks:1];
      v14 = v10;
      v15 = 0;
      goto LABEL_8;
    case 23:
      [(PXContentFilterState *)v9 setShowOnlySentICloudLinks:0];
      v14 = v10;
      v15 = 1;
LABEL_8:
      [(PXContentFilterState *)v14 setShowOnlyReceivedICloudLinks:v15];
      break;
    case 24:
      [(PXContentFilterState *)v9 setIncludeOthersInSocialGroupAssets:a3];
      break;
    default:
      break;
  }

  return v10;
}

void PXContentFilterSendAnalyticsForItemSelected(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((a1 - 1) <= 0x17)
  {
    v5 = off_1E7734078[a1 - 1];
    v6 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E20];
    v9[0] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v6 sendEvent:v5 withPayload:v7];
  }
}

uint64_t isAlchemistRelated(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:kPXFeedbackImageQualityPersonPetPartiallyDeformedKey] & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityForegroundStuckToBackgroundKey) & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityPersonPetObjectSplitIntoPartsKey) & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityObjectsSeemDetachedKey) & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityBoundaryOfObjectInaccurateKey) & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityUncomfortableFlickeringKey))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:kPXFeedbackImageQualitySceneScaleFeelsWrongKey];
  }

  return v2;
}

uint64_t isAlchemistV2Related(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:kPXFeedbackImageQualityFineDetails] & 1) != 0 || (objc_msgSend(v1, "isEqual:", kPXFeedbackImageQualityTransparency))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:kPXFeedbackImageQualityHumanFaceBody];
  }

  return v2;
}

void sub_1A4C71A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63781(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C73C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C79EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A4C7B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64909(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PHQuestionStringFromType(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77344B0[a1];
  }
}

void sub_1A4C7CD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C7D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXSharedLibraryExitAssistantViewTitle(int a1)
{
  if (a1)
  {
    v1 = @"PXSharedLibraryExitAssistant_Owner_Title";
  }

  else
  {
    v1 = @"PXSharedLibraryExitAssistant_Participant_Title";
  }

  v2 = PXLocalizedSharedLibraryString(v1);

  return v2;
}

id PXSharedLibraryExitAssistantViewSubtitle(int a1)
{
  if (a1)
  {
    v1 = @"PXSharedLibraryExitAssistant_Owner_Subtitle";
  }

  else
  {
    v1 = @"PXSharedLibraryExitAssistant_Participant_Subtitle";
  }

  v2 = PXLocalizedSharedLibraryString(v1);

  return v2;
}

id PXSharedLibraryExitAssistantViewButtonTitle(int a1)
{
  if (a1)
  {
    v1 = @"PXSharedLibraryExitAssistant_Owner_ButtonTitle";
  }

  else
  {
    v1 = @"PXSharedLibraryExitAssistant_Participant_ButtonTitle";
  }

  v2 = PXLocalizedSharedLibraryString(v1);

  return v2;
}

uint64_t __Block_byref_object_copy__66544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C886B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 120));
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void sub_1A4C890A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C89E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C8A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromPeopleSuggestionsSourceType(uint64_t a1)
{
  v1 = @"PXPeopleSuggestionsSourceTypeNone";
  if (a1 == 1)
  {
    v1 = @"PXPeopleSuggestionsSourceTypePhotosGraph";
  }

  if (a1 == 2)
  {
    return @"PXPeopleSuggestionsSourceTypePreviewSuggestion";
  }

  else
  {
    return v1;
  }
}

void sub_1A4C8C2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67162(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67269(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL PXPreferencesIsMergeDuplicatesEnabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"MergeDuplicatesEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

BOOL PXPreferencesHasShownSharedAlbumsSpatialMediaDataLossAlert()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"HasShownSharedAlbumsSpatialMediaDataLossAlert", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void PXPreferencesSetSharedLibrarySuggestionsEnabled()
{
  PLSetSharedLibrarySuggestionsEnabled();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

void PXPreferencesSetSharedLibraryDeletionNotificationEnabled()
{
  PLSetSharedLibraryAssetTrashedByParticipantsNotificationEnabled();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

BOOL PXPreferencesGetLastKnownHasSharedLibraryPreview()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"LastKnownHasSharedLibraryPreview", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

BOOL PXPreferencesGetLastKnownHasSharedLibrary()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"LastKnownHasSharedLibrary", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

BOOL PXPreferencesHaveLibraryFilterViewMode()
{
  v0 = PXPreferencesGetValue(@"LibraryFilterStateViewMode");
  v1 = v0 != 0;

  return v1;
}

void PXPreferencesSetLibraryFilterViewModeWithSharedLibraryOrPreview(uint64_t a1, int a2)
{
  if (!+[PXApplicationState isRunningInPhotosApp](PXApplicationState, "isRunningInPhotosApp") && !+[PXApplicationState isRunningInPhotosTopShelfExtension])
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 0;
      v5 = &v6;
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if (a1 && !a2)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v5 = &v7;
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "Attempted to set the library filter view mode user preference when not allowed.", v5, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  PXPreferencesSetInteger(@"LibraryFilterStateViewMode", a1);
}

unint64_t PXPreferencesCameraSharingPreferencesState()
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CameraSharingPreferencesState", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppIntegerValue;
  }

  else
  {
    v1 = 0;
  }

  if (v1 <= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void PXPreferencesSetCameraSharingPreferencesState(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  PXPreferencesSetValue(@"CameraSharingPreferencesState", v1);
}

id PXPreferencesPromptDateForCameraSharingPreferences()
{
  v0 = PXPreferencesGetValue(@"PromptDateForCameraSharingPreferences");
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PXPreferencesSetCameraSharingEnabled(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"CameraSharingEnabled", v1);
}

BOOL PXPreferencesIsCameraAutoShareEnabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"CameraAutoShareEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void PXPreferencesSetCameraAutoShareEnabled(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"CameraAutoShareEnabled", v1);
}

void PXPreferencesSetIsHiddenAlbumVisible(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"HiddenAlbumVisible", v1);
}

void PXPreferencesSetIsRecentlyViewedAndSharedAlbumVisible(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"RecentlyViewedAndSharedAlbumVisible", v1);
}

BOOL PXPreferencesIsStacksEnabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StacksEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void PXPreferencesSetIsStacksEnabled(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"StacksEnabled", v1);
}

void PXPreferencesSetIsFeaturedContentAllowed()
{
  PLSetFeaturedContentAllowed();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

id PXPreferencesWelcomeViewLastPresentationDate()
{
  v0 = PXPreferencesGetValue(@"WelcomeViewLastPresentationTimeInterval");
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  [v1 doubleValue];
  if (v2 > 0.0 && (v3 = v2, [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v3 <= v4))
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PXPreferencesSetWelcomeViewLastPresentationDate(void *a1)
{
  if (a1)
  {
    [a1 timeIntervalSinceReferenceDate];
    v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    PXPreferencesSetValue(@"WelcomeViewLastPresentationTimeInterval", v2);
  }

  else
  {

    PXPreferencesSetValue(@"WelcomeViewLastPresentationTimeInterval", 0);
  }
}

id _PXPreferencesSharedLibraryInvitationDate(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = PXPreferencesGetValue(a1);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKeyedSubscript:@"LibraryID"];
  v7 = v6;
  if (v6 == v3 || [v6 isEqualToString:v3])
  {
    v8 = [v5 objectForKeyedSubscript:@"Date"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void _PXPreferencesSetSharedLibraryInvitationDate(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || !v7)
  {
    PXAssertGetLog();
  }

  v10[0] = @"LibraryID";
  v10[1] = @"Date";
  v11[0] = v7;
  v11[1] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  PXPreferencesSetValue(v5, v9);
}

void PXPreferencesSetSharedLibraryInvitationLastSeenDate(void *a1, void *a2)
{
  _PXPreferencesSetSharedLibraryInvitationDate(@"SharedLibraryInvitationLastSeenDate", a1, a2);
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXPreferencesSharedLibraryInvitationLastSeenDateChangeNotification" object:0 userInfo:0];
}

void PXPreferencesResetSharedLibraryInvitationDates()
{
  PXPreferencesSetValue(@"SharedLibraryInvitationReceivedDate", 0);
  PXPreferencesSetValue(@"SharedLibraryInvitationLastSeenDate", 0);
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PXPreferencesSharedLibraryInvitationLastSeenDateChangeNotification" object:0 userInfo:0];
}

void PXPreferencesResetCameraSharingPreferences()
{
  PXPreferencesSetValue(@"CameraSharingPreferencesState", 0);
  PXPreferencesSetValue(@"FirstCheckDateForCameraSharingPreferences", 0);

  PXPreferencesSetValue(@"PromptDateForCameraSharingPreferences", 0);
}

void PXPreferencesSetAllowFullHDR(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  PXPreferencesSetValue(@"shouldModulateImages", v1);
}

void PXPreferencesEnsureDefaultEnhancedVisualSearch()
{
  if (PXPreferencesEnsureDefaultEnhancedVisualSearch_onceToken != -1)
  {
    dispatch_once(&PXPreferencesEnsureDefaultEnhancedVisualSearch_onceToken, &__block_literal_global_67430);
  }
}

void __PXPreferencesEnsureDefaultEnhancedVisualSearch_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"enhancedVisualSearchEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    PXPreferencesSetBool(@"enhancedVisualSearchEnabled", 1);
  }
}

BOOL PXPreferencesIsCompatibilityConversionDisabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"compatibilityConversionsDisabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

__CFString *PXWorkaroundEnablementDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E77347F0[a1];
  }
}

void PXSharedLibraryRequestInvitationImageForOwner(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  PXSizeSafeInset();
}

void __PXSharedLibraryRequestInvitationImageForOwner_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"SharedLibrary-20-Rounded"];
  if (v6)
  {
    PXRectWithSize();
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __PXSharedLibraryRequestInvitationImageForOwner_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v2 set];

  v3 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 80) cornerRadius:{*(a1 + 88), *(a1 + 96), *(a1 + 104), 6.0}];
  [v3 fill];

  v4 = *(a1 + 40);
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);

  return [v4 drawInRect:{v5, v6, v7, v8}];
}

void sub_1A4C90C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXTileTypeForImageSize(double a1, double a2)
{
  v2 = a1 / a2;
  if (v2 >= 2.5)
  {
    return 3;
  }

  if (v2 > 1.04999995)
  {
    return 1;
  }

  if (v2 >= 0.952380996)
  {
    return 0;
  }

  if (v2 <= 0.4)
  {
    return 4;
  }

  return 2;
}

BOOL PXCanCopyLocationFromAssetToPasteboard(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PXCanCopyLocationFromAssetToPasteboard(PHAsset *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"PXPlacesUtils.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v2 = [v1 location];
  v3 = v2 != 0;

  return v3;
}

void PXCopyLocationFromAssetToPasteboard(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXCopyLocationFromAssetToPasteboard(PHAsset *__strong)"];
    [v8 handleFailureInFunction:v9 file:@"PXPlacesUtils.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v2 = [v1 location];
  if (v2)
  {
    v10 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v10];
    v4 = v10;
    v5 = v4;
    if (v3)
    {

      v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
      [v6 setData:v3 forPasteboardType:@"com.apple.photos.pasteboard.location"];
LABEL_8:

      goto LABEL_12;
    }

    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to archive location: %@, error: %@", buf, 0x16u);
    }

    v3 = 0;
  }

  else
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = [v1 uuid];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Invalid asset for copy location action: %{public}@", buf, 0xCu);
      goto LABEL_8;
    }
  }

LABEL_12:
}

uint64_t PXCanAssignLocationFromPasteboardToAsset(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL PXCanAssignLocationFromPasteboardToAsset(PHAsset *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"PXPlacesUtils.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v1 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v7[0] = @"com.apple.photos.pasteboard.location";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v3 = [v1 containsPasteboardTypes:v2];

  return v3;
}

void PXAssignLocationFromPasteboardToAsset(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXAssignLocationFromPasteboardToAsset(PHAsset *__strong)"];
    [v12 handleFailureInFunction:v13 file:@"PXPlacesUtils.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [v2 dataForPasteboardType:@"com.apple.photos.pasteboard.location"];

  if (v3)
  {
    v4 = v3;
    v17 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {

      v8 = [v1 photoLibrary];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __PXAssignLocationFromPasteboardToAsset_block_invoke;
      v14[3] = &unk_1E774C620;
      v15 = v1;
      v9 = v5;
      v16 = v9;
      [v8 performChanges:v14 completionHandler:0];
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 length];
        *buf = 134218242;
        v19 = v11;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive location from data with length: %lu, error: %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Invalid (empty) pasteboard for assign location action", buf, 2u);
    }
  }
}

void __PXAssignLocationFromPasteboardToAsset_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  [v2 setLocation:*(a1 + 40)];
}

void sub_1A4C91FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68023(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C92460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C930C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void PXStoryAnalyticsPrepare()
{
  if (PXStoryAnalyticsPrepare_onceToken != -1)
  {
    dispatch_once(&PXStoryAnalyticsPrepare_onceToken, &__block_literal_global_68111);
  }
}

void sub_1A4C947DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void PXApplicationInstallationStateProviderApplicationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a5 objectForKeyedSubscript:@"bundleIDs"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = +[PXApplicationInstallationStateProvider shared];
        [v11 _updateCachedInstallationState:v10 value:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __PXOptionsEnumeratedValues_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

void sub_1A4C98940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4C9AE18(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69334(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4C9C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void getICQCurrentOfferChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getICQCurrentOfferChangedNotificationSymbolLoc_ptr;
  v9 = getICQCurrentOfferChangedNotificationSymbolLoc_ptr;
  if (!getICQCurrentOfferChangedNotificationSymbolLoc_ptr)
  {
    v1 = iCloudQuotaLibrary();
    v7[3] = dlsym(v1, "ICQCurrentOfferChangedNotification");
    getICQCurrentOfferChangedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getICQCurrentOfferChangedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"PXCloudQuotaOfferProvider.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A4C9E378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICQCurrentOfferChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iCloudQuotaLibrary();
  result = dlsym(v2, "ICQCurrentOfferChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICQCurrentOfferChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *iCloudQuotaLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7734BD0;
    v6 = 0;
    iCloudQuotaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = iCloudQuotaLibraryCore_frameworkLibrary;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCloudQuotaOfferProvider.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __iCloudQuotaLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iCloudQuotaLibraryCore_frameworkLibrary = result;
  return result;
}

id getICQBannerViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICQBannerViewClass_softClass;
  v7 = getICQBannerViewClass_softClass;
  if (!getICQBannerViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getICQBannerViewClass_block_invoke;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getICQBannerViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4C9E698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getICQOfferManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICQOfferManagerClass_softClass_69615;
  v7 = getICQOfferManagerClass_softClass_69615;
  if (!getICQOfferManagerClass_softClass_69615)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getICQOfferManagerClass_block_invoke_69616;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getICQOfferManagerClass_block_invoke_69616(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4C9E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getICQOfferManagerClass_block_invoke_69616(uint64_t a1)
{
  iCloudQuotaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICQOfferManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQOfferManagerClass_softClass_69615 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQOfferManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PXCloudQuotaOfferProvider.m" lineNumber:30 description:{@"Unable to find class %s", "ICQOfferManager"}];

    __break(1u);
  }
}

Class __getICQBannerViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_69622)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __iCloudQuotaUILibraryCore_block_invoke_69623;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7734BB8;
    v8 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_69622 = _sl_dlopen();
  }

  if (!iCloudQuotaUILibraryCore_frameworkLibrary_69622)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXCloudQuotaOfferProvider.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICQBannerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQBannerViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXCloudQuotaOfferProvider.m" lineNumber:29 description:{@"Unable to find class %s", "ICQBannerView"}];

LABEL_10:
    __break(1u);
  }

  getICQBannerViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_69623()
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_69622 = result;
  return result;
}

void sub_1A4C9EC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4C9F574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CA06A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CA49C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 104));
  _Unwind_Resume(a1);
}

void sub_1A4CA4B1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1A4CA4EC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A4CA550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, id a19)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1A4CA55E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1A4CA598C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4CA602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id allowedUUIDsForSuggestionsDataSource(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 numberOfItemsInSection:0];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 identifier];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    if (v6 >= 1)
    {
      v10 = 0;
      *&v9 = 138543362;
      v18 = v9;
      do
      {
        buf = v7;
        v20 = v10;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v11 = [v3 objectAtIndexPath:{&buf, v18}];
        v12 = [v11 localIdentifier];
        v13 = [v4 objectForKey:v12];

        if (!v13)
        {
          v14 = [v11 fetchKeyAssets];
          v13 = [v14 firstObject];

          if (!v13)
          {
            goto LABEL_9;
          }

          v15 = [v11 localIdentifier];
          [v4 setObject:v13 forKey:v15];
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_9:
          v16 = PLUIGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v18;
            *(&buf + 4) = v11;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Suggestion has no keyAsset: %{public}@", &buf, 0xCu);
          }

          goto LABEL_11;
        }

        v16 = [v13 uuid];
        [v8 addObject:v16];
LABEL_11:

        ++v10;
      }

      while (v6 != v10);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

void sub_1A4CAA644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71126(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4CAAA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXApplicationHasSceneOnExternalDisplay()
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v5 screen];
          v7 = [v6 _isEmbeddedScreen];

          if (!v7)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

BOOL PXPhotosApplicationTryRunningSwiftPPTTest(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __PXPhotosApplicationTryRunningSwiftPPTTest_block_invoke;
  v13[3] = &unk_1E7734DD8;
  v14 = v9;
  v10 = v9;
  v11 = [PXPhotosPPTTestUtilities requestTargetSelectorWithTestName:a1 testOptions:v10 application:a3 gesturePerformer:a4 scrollTestPerformer:a5 resultHandler:v13];

  return v11;
}

void __PXPhotosApplicationTryRunningSwiftPPTTest_block_invoke(uint64_t a1, void *a2, NSString *a3)
{
  v5 = a2;
  [v5 performSelector:NSSelectorFromString(a3) withObject:*(a1 + 32)];
}

id PXMakeTestWindowWithFrame(double a1, double a2, double a3, double a4)
{
  v4 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithFrame:{a1, a2, a3, a4}];

  return v4;
}

void sub_1A4CB13E0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71845(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXSharedLibrarySettingsSimulateErrorTypes()
{
  v0 = _SimulateErrorTypesToTitles();
  v1 = [v0 allKeys];
  v2 = [v1 sortedArrayUsingSelector:sel_compare_];

  return v2;
}

id _SimulateErrorTypesToTitles()
{
  v3[26] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F190B578;
  v2[1] = &unk_1F190B590;
  v3[0] = @"None";
  v3[1] = @"Create";
  v2[2] = &unk_1F190B5A8;
  v2[3] = &unk_1F190B5C0;
  v3[2] = @"Create (CPLExitMode)";
  v3[3] = @"Preview";
  v2[4] = &unk_1F190B5D8;
  v2[5] = &unk_1F190B5F0;
  v3[4] = @"Publish";
  v3[5] = @"Exit";
  v2[6] = &unk_1F190B608;
  v2[7] = &unk_1F190B620;
  v3[6] = @"Exit (ServerGeneratedLocalizedDescription)";
  v3[7] = @"Send Invite";
  v2[8] = &unk_1F190B638;
  v2[9] = &unk_1F190B650;
  v3[8] = @"Fetch (No Share)";
  v3[9] = @"Fetch (Generic)";
  v2[10] = &unk_1F190B668;
  v2[11] = &unk_1F190B680;
  v3[10] = @"View Invitation (NotSPL)";
  v3[11] = @"View Invitation (NotICPL)";
  v2[12] = &unk_1F190B698;
  v2[13] = &unk_1F190B6B0;
  v3[12] = @"View Invitation (ExitingICPL)";
  v3[13] = @"View Invitation (NotInSync)";
  v2[14] = &unk_1F190B6C8;
  v2[15] = &unk_1F190B6E0;
  v3[14] = @"View Invitation (ExitingSL)";
  v3[15] = @"View Invitation (ActiveSL)";
  v2[16] = &unk_1F190B6F8;
  v2[17] = &unk_1F190B710;
  v3[16] = @"Accept (Generic)";
  v3[17] = @"Accept (U13)";
  v2[18] = &unk_1F190B728;
  v2[19] = &unk_1F190B740;
  v3[18] = @"Accept (Region)";
  v3[19] = @"Decline";
  v2[20] = &unk_1F190B758;
  v2[21] = &unk_1F190B770;
  v3[20] = @"Restore";
  v3[21] = @"Participants (Generic)";
  v2[22] = &unk_1F190B788;
  v2[23] = &unk_1F190B7A0;
  v3[22] = @"Participants (Too Many)";
  v3[23] = @"PersonUUIDs";
  v2[24] = &unk_1F190B7B8;
  v2[25] = &unk_1F190B7D0;
  v3[24] = @"Sharing Suggestions";
  v3[25] = @"Move";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:26];

  return v0;
}

id PXSharedLibrarySettingsSimulateErrorTypeTitles()
{
  v0 = _SimulateErrorTypesToTitles();
  v1 = PXSharedLibrarySettingsSimulateErrorTypes();
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PXSharedLibrarySettingsSimulateErrorTypeTitles_block_invoke;
  v8[3] = &unk_1E7745F70;
  v9 = v0;
  v3 = v2;
  v10 = v3;
  v4 = v0;
  [v1 enumerateObjectsUsingBlock:v8];
  v5 = v10;
  v6 = v3;

  return v3;
}

void __PXSharedLibrarySettingsSimulateErrorTypeTitles_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [*(a1 + 40) addObject:v3];
}

void PXSidebarRequestFolderImageForAssets(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  a3;
  a4;
  [v8 displayScale];
  if (v9 > 0.0)
  {
    [v8 displayScale];
  }

  PXSizeMakeSquare();
}

uint64_t __Block_byref_object_copy__72948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PXSidebarRequestFolderImageForAssets_block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = *(*(a1[5] + 8) + 40);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithInteger:v3];
  [v4 setObject:v6 forKeyedSubscript:v7];

  v8 = a1[4];

  dispatch_group_leave(v8);
}

void __PXSidebarRequestFolderImageForAssets_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCA80] formatForTraitCollection:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v2 format:{*(a1 + 56), *(a1 + 64)}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PXSidebarRequestFolderImageForAssets_block_invoke_3;
  v5[3] = &unk_1E7734F90;
  v6 = *(a1 + 72);
  v5[4] = *(a1 + 48);
  v4 = [v3 imageWithActions:v5];
  (*(*(a1 + 40) + 16))();
}

void __PXSidebarRequestFolderImageForAssets_block_invoke_3(uint64_t a1, void *a2)
{
  v20[14] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v3 = *(a1 + 40);
  v4 = v3 + *(a1 + 48);
  v5 = v20;
  v18 = 0;
  v19 = 0;
  *v20 = v3;
  *&v20[1] = v3;
  *&v20[2] = v4;
  v20[3] = 0;
  *&v20[4] = v3;
  *&v20[5] = v3;
  v20[6] = 0;
  *&v20[7] = v4;
  *&v20[8] = v3;
  *&v20[9] = v3;
  *&v20[10] = v4;
  *&v20[11] = v4;
  *&v20[12] = v3;
  *&v20[13] = v3;
  v17[0] = xmmword_1A5380E70;
  v17[1] = xmmword_1A5380E80;
  v6 = [MEMORY[0x1E69DC888] systemGray5Color];
  [v6 set];

  for (i = 0; i != 4; ++i)
  {
    v9 = *(v5 - 2);
    v8 = *(v5 - 1);
    v11 = *v5;
    v10 = v5[1];
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v14 = [v12 objectForKeyedSubscript:v13];

    v15 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(v17 + i) byRoundingCorners:v9 cornerRadii:{v8, v11, v10, 1.0, 1.0}];
    [v15 addClip];
    if (v14)
    {
      [v14 size];
      PXSizeGetAspectRatio();
    }

    [v16 fillRect:{v9, v8, v11, v10}];
    CGContextResetClip([v16 CGContext]);

    v5 += 4;
  }
}

void sub_1A4CBC2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4CBCC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  objc_sync_exit(v59);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73827(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4CBE768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CBFFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PXOwningAppBundleIdentifierForSpotlightAsset(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 photoLibrary];
  v3 = [v2 wellKnownPhotoLibraryIdentifier];

  if (v3 == 3)
  {
    v4 = [v1 curationProperties];
    v5 = [v4 importedByBundleIdentifier];
    if (!v5)
    {
      v6 = PLUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        v12 = v1;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "PXPhotoKitAssetSpotlightActionPerformer: Could not locate bundle identifier for syndicated asset: %@ in the asset curation properties: %@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v5 = @"com.apple.mobileslideshow";
  }

  if ([(__CFString *)v5 length])
  {
    v7 = PLSyndicationAllEquivalentFileProviderLocalAndCloudBundleIDs();
    v8 = [v7 containsObject:v5];

    if (v8)
    {

      v5 = @"com.apple.DocumentsApp";
    }

    v5 = v5;
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void ProcessLevel(void *a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = [v5 allKeys];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __ProcessLevel_block_invoke;
  v27[3] = &unk_1E77458D0;
  v20 = v5;
  v28 = v20;
  v7 = [v6 sortedArrayUsingComparator:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if (([v12 hasPrefix:@"_"] & 1) == 0)
        {
          v14 = [v20 objectForKeyedSubscript:v12];
          v15 = a3;
          if (a3 >= 1)
          {
            do
            {
              [v4 appendString:@"    "];
              --v15;
            }

            while (v15);
          }

          v16 = [v14 objectForKeyedSubscript:@"_name"];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v12;
          }

          v19 = v18;

          [v4 appendString:v19];
          [v4 appendString:@"\n"];
          ProcessLevel(v4, v14, (a3 + 1));
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }
}

uint64_t __ProcessLevel_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0.0;
  v8 = 0.0;
  if (([v5 hasPrefix:@"_"] & 1) == 0)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v10 = [v9 objectForKeyedSubscript:@"_confidence"];
    [v10 doubleValue];
    v8 = v11;
  }

  if (([v6 hasPrefix:@"_"] & 1) == 0)
  {
    v12 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v13 = [v12 objectForKeyedSubscript:@"_confidence"];
    [v13 doubleValue];
    v7 = v14;
  }

  if (v8 <= v7)
  {
    if (v8 < v7)
    {
      v15 = 1;
    }

    else
    {
      v15 = [v5 compare:v6];
    }
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

void PXIncrementShareCountForAssets(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXIncrementShareCountForAssets(__strong id<PXFastEnumeration> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"PHAsset+PhotosUICore.m" lineNumber:1608 description:{@"Invalid parameter not satisfying: %@", @"assets"}];
  }

  v2 = [v1 firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;

    if (v3)
    {
      v4 = [v3 photoLibrary];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __PXIncrementShareCountForAssets_block_invoke;
      v7[3] = &unk_1E774C648;
      v8 = v1;
      [v4 performChanges:v7 completionHandler:&__block_literal_global_1613];
    }
  }

  else
  {

    v3 = 0;
  }
}

void __PXIncrementShareCountForAssets_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978648] changeRequestForAsset:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 incrementShareCount];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __PXIncrementShareCountForAssets_block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable to increment share count for assets: %@", &v6, 0xCu);
    }
  }
}

uint64_t PXDropSessionHasItemsNeedingImport(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 localDragSession];

  if (v2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v1 items];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (PXDragItemNeedsImport(*(*(&v10 + 1) + 8 * v7)))
          {
            v8 = 1;
            goto LABEL_12;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v3 = +[PXImportManager supportedTypeIdentifiers];
    v8 = [v1 hasItemsConformingToTypeIdentifiers:v3];
LABEL_12:
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

BOOL PXDragItemNeedsImport(void *a1)
{
  v1 = [a1 localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 assetReference];
    v3 = [v2 asset];

    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 sourceType] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PXDropSessionHasValidItems(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 localDragSession];

  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v1 items];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v12 + 1) + 8 * v7) localObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v10 = 1;
            goto LABEL_13;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  v3 = +[PXImportManager supportedTypeIdentifiers];
  v10 = [v1 hasItemsConformingToTypeIdentifiers:v3];
LABEL_13:

  return v10;
}

void sub_1A4CD3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76549(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AnchorableResourceIdentifiersInTimelineSegment(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeForSegmentWithIdentifier:a2];
  }

  v5 = [0 copy];

  return v5;
}

uint64_t MatchingScoreBetweenResourceIdentifierSets(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v7 += [v4 containsObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __AnchorableResourceIdentifiersInTimelineSegment_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >= 1)
  {
    v20 = v10;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v5;
    v26 = v11;
    v27 = v12;
    v14 = a2;
    do
    {
      v16 = [*(a1 + 32) clipWithIdentifier:{*a5, v20, v21, v22, v23, v24, v25, v26, v27}];
      v17 = [v16 resource];

      if (([v17 px_storyResourceKind] | 2) == 3)
      {
        v18 = *(a1 + 40);
        v19 = [v17 px_storyResourceIdentifier];
        [v18 addObject:v19];
      }

      a5 += 96;

      --v14;
    }

    while (v14);
  }
}

void sub_1A4CD4CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A4CD4EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4CD55C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A4CD5718(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A4CD5B44(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76722(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXApplicationVisibilityStateDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown %ti", a1];
  }

  else
  {
    v1 = off_1E77356C0[a1];
  }

  return v1;
}

__CFString *_PXCuratedLibraryActionTitle(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a3;
  v8 = a4;
  if ([v6 isEqualToString:@"PXCuratedLibraryActionEnterSelectMode"])
  {
    v9 = @"PXCuratedLibrarySelectButtonTitle";
LABEL_7:
    v10 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
    goto LABEL_8;
  }

  if ([v6 isEqualToString:@"PXCuratedLibraryActionCancelSelectMode"])
  {
    v9 = @"PXCuratedLibraryCancelSelectionButtonTitle";
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"PXCuratedLibraryActionShare"])
  {
    v9 = @"PXCuratedLibrarySharePhotosButtonTitle";
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"PXCuratedLibraryActionTapToRadar"])
  {
    v10 = @"Tap-to-Radar";
  }

  else if ([v6 isEqualToString:@"PXCuratedLibraryActionCurationDebug"])
  {
    v10 = @"Curation Debug";
  }

  else
  {
    if ([v6 isEqualToString:@"PXCuratedLibraryActionToggleIncludeScreenshotFilter"])
    {
      v9 = @"PXContentFilterMenu_IncludeScreenshots";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter"])
    {
      v9 = @"PXContentFilterMenu_IncludeSharedWithYou";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionToggleIncludeFromMyMacFilter"])
    {
      v9 = @"PXContentFilterMenu_IncludeFromMyMac";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
    {
      v9 = @"PXLibraryAllPhotosZoomIn";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"])
    {
      v9 = @"PXLibraryAllPhotosZoomOut";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionShowMap"])
    {
      v9 = @"PXLibraryShowMapAlertButtonTitle";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionShowFiltersMenu"])
    {
      v9 = @"PXPhotosGridsFilter";
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"PXCuratedLibraryActionShowFilters"])
    {
      v9 = @"PXPhotosGridsShowFilters";
      goto LABEL_7;
    }

    v10 = 0;
  }

LABEL_8:
  if (!v8)
  {
    goto LABEL_23;
  }

  if ([v6 isEqualToString:@"PXCuratedLibraryActionSelectAllToggle"])
  {
    v11 = [v7 currentDataSource];
    v12 = v11;
    v26 = 0u;
    v27 = 0u;
    if (v11)
    {
      [v11 indexPathForAssetCollectionReference:v8];
    }

    v25[0] = v26;
    v25[1] = v27;
    v13 = [v12 indexPathSetForItemsInIndexPath:v25];
    v14 = [v7 selectionSnapshot];
    v15 = [v14 selectedIndexPaths];
    v16 = [v13 isSubsetOfSet:v15];

    if (v16)
    {
      v17 = @"PXCuratedLibraryDeselectAllButtonTitle";
    }

    else
    {
      v17 = @"PXCuratedLibrarySelectAllButtonTitle";
    }

    v18 = PXLocalizedStringFromTable(v17, @"PhotosUICore");
  }

  else
  {
    if (![v6 isEqualToString:@"PXCuratedLibraryActionShowAll"])
    {
      goto LABEL_23;
    }

    v19 = [v7 assetsDataSourceManager];
    v12 = [v19 dataSource];

    [v8 indexPath];
    v20 = [v12 numberOfItemsInSection:v24];
    v21 = [v8 assetCollection];
    v22 = [v21 estimatedAssetCount];

    if (v22 > v20)
    {
      PXLocalizedStringFromTable(@"PXLibraryDaysShowAllButtonTitleFormat", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v18 = PXLocalizedStringFromInteger(v20);
  }

  v10 = v18;
LABEL_23:

  return v10;
}

__CFString *PXCuratedLibraryFilterActionIdentifierFromNumber(void *a1)
{
  if (a1 && (v1 = [a1 integerValue], v1 <= 7))
  {
    return off_1E7735700[v1];
  }

  else
  {
    return &stru_1F1741150;
  }
}

void sub_1A4CDBEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CDCEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double PXStoryDisplayAssetSuggestedCrop(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a6;
  v15 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  if ([v12 pixelWidth] && objc_msgSend(v12, "pixelHeight"))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4010000000;
    v48 = &unk_1A561E057;
    v49 = 0u;
    v50 = 0u;
    v34 = [v12 pixelWidth];
    v35 = [v12 pixelHeight];
    if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      PXSizeGetAspectRatio();
    }

    [v12 suggestedCropForTargetSize:a2 withFocusRegion:{a3, v15, v14, v17, v16}];
    v18 = *&buf[8];
    *(*&buf[8] + 32) = v19;
    v18[5] = v20;
    v18[6] = v21;
    v18[7] = v22;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __PXStoryDisplayAssetSuggestedCrop_block_invoke_2;
    v46[3] = &unk_1E7735810;
    v46[4] = buf;
    _PXEnumerateCropVariants(v12, a7 == 2, v46, a2, a3);
    if (a7)
    {
      [v12 faceAreaRect];
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      if (!CGRectIsNull(v52))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __PXStoryDisplayAssetSuggestedCrop_block_invoke_3;
        aBlock[3] = &__block_descriptor_64_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
        aBlock[4] = 0;
        aBlock[5] = 0;
        *&aBlock[6] = v34;
        *&aBlock[7] = v35;
        v27 = _Block_copy(aBlock);
        v53.origin.x = v27[2](x, y, width, height);
        v53.origin.y = v28;
        v53.size.width = v29;
        v53.size.height = v30;
        if (!CGRectContainsRect(*(*&buf[8] + 32), v53))
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __PXStoryDisplayAssetSuggestedCrop_block_invoke_4;
          v36[3] = &unk_1E7735838;
          v37 = v27;
          v38 = buf;
          v39 = a2;
          v40 = a3;
          v41 = 0;
          v42 = 0;
          v43 = v34;
          v44 = v35;
          [v13 requestIndividualFaceRectsInAsset:v12 options:0 resultHandler:v36];
        }
      }
    }

    v31 = *(*&buf[8] + 32);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v33 = PLStoryGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "CGRect PXStoryDisplayAssetSuggestedCrop(__strong id<PXDisplayAsset> _Nonnull, CGSize, CGRect, const PXStoryAssetContentInfo * _Nonnull, PXDisplayAssetPlaybackStyle, __strong id<PXStoryDisplayAssetCroppingContext> _Nonnull, PXStoryCroppingOptions)";
      _os_log_impl(&dword_1A3C1C000, v33, OS_LOG_TYPE_ERROR, "Unable to provide suggested crop for asset %@; %s", buf, 0x16u);
    }

    v31 = *off_1E77221F8;
  }

  return v31;
}

uint64_t __PXStoryDisplayAssetSuggestedCrop_block_invoke(uint64_t result, double a2, double a3, double a4, double a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  *a7 = 1;
  return result;
}

void _PXEnumerateCropVariants(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = MEMORY[0x1E69C1538];
  if (a4 == 0.0 || a5 == 0.0 || (a4 == *MEMORY[0x1E69BDDB0] ? (v12 = a5 == *(MEMORY[0x1E69BDDB0] + 8)) : (v12 = 0), v12))
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    v13 = 1.0;
    if (v14)
    {
      v39 = 1.0;
      *buf = 134218496;
      v43 = a4;
      v44 = 2048;
      v45 = a5;
      v46 = 2048;
      v47 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = fabs(a4 / a5);
  }

  v39 = v13;
LABEL_10:
  v15 = [v9 pixelWidth];
  v16 = [v9 pixelHeight];
  [v9 acceptableCropRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v9 preferredCropRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v9 faceAreaRect];
  v37 = [v11 cropVariantsFromSignalsPrefersFaceCrops:a2 aspectRatio:v15 sourcePixelWidth:v16 sourcePixelHeight:MEMORY[0x1E695E0F0] acceptableCropRect:1 preferredCropRect:v39 faceAreaRect:v18 objectSaliencyRects:v20 gazeAreaRect:v22 isDenormalized:{v24, v26, v28, v30, v32, v33, v34, v35, v36, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___PXEnumerateCropVariants_block_invoke;
  v40[3] = &unk_1E7735860;
  v41 = v10;
  v38 = v10;
  [v37 enumerateObjectsUsingBlock:v40];
}

uint64_t __PXStoryDisplayAssetSuggestedCrop_block_invoke_2(uint64_t result, double a2, double a3, double a4, double a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  *a7 = 1;
  return result;
}

uint64_t __PXStoryDisplayAssetSuggestedCrop_block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v3 = result;
    v4 = &v14[-4 * a2 + 2];
    v5 = (a3 + 16);
    v6 = a2;
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = v5[1];
      v5 += 4;
      *(v4 - 2) = (*(*(v3 + 32) + 16))(v7, v8, v9, v10);
      *(v4 - 1) = v11;
      *v4 = v12;
      *(v4 + 1) = v13;
      v4 += 4;
      --v6;
    }

    while (v6);
    PXSizeGetAspectRatio();
  }

  return result;
}

PXViewControllerEventTracker *PXMemoriesViewControllerEventTrackerCreate(void *a1)
{
  v1 = a1;
  v2 = [v1 userInterfaceFeature];
  if (v2 >= 3)
  {
    PXAssertGetLog();
  }

  v3 = [[PXViewControllerEventTracker alloc] initWithViewName:off_1E7735880[v2]];

  return v3;
}

void sub_1A4CE0958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PXStoryChapterCollectionDiagnosticDescptionWithAssets(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [v3 numberOfChapters];
  [v5 appendFormat:@"%ti Chapters:\n", v6];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v3 chapterAtIndex:i];
      v9 = [v8 diagnosticDescription];
      [v5 appendFormat:@"%ti %@\n", i, v9];
    }
  }

  v10 = [v4 count];
  [v5 appendFormat:@"\n%ti Assets:\n", v10];
  if (v10 >= 1)
  {
    for (j = 0; j != v10; ++j)
    {
      v12 = [v4 objectAtIndexedSubscript:j];
      v13 = [v3 containsChapterBeginningWithAsset:v12];
      v14 = [v3 chapterContainingAsset:v12];
      v27 = v14;
      v15 = [v12 uuid];
      v16 = [v12 localCreationDate];
      v17 = v13 == 0;
      v18 = v3;
      v19 = v5;
      v20 = v10;
      v21 = v4;
      if (v17)
      {
        v22 = @" ";
      }

      else
      {
        v22 = @"Y";
      }

      v23 = [v14 identifier];
      v26 = v22;
      v4 = v21;
      v10 = v20;
      v5 = v19;
      v3 = v18;
      [v5 appendFormat:@"%ti (uuid=%@ localCreationDate=%@) chapterBeginning=%@ chapter=%@\n", j, v15, v16, v26, v23];
    }
  }

  v24 = [v5 copy];

  return v24;
}

PXStoryConfiguration *PXStoryConfigurationForObjectReference(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 leafObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 assetCollection];
    if (!v4)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXStoryConfiguration * _Nullable PXStoryConfigurationForObjectReference(PXSectionedObjectReference *__strong _Nonnull)"];
      [v10 handleFailureInFunction:v11 file:@"PXStoryMemoryFeedDataSource.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"assetCollection != nil"}];
    }

    v5 = [PXStoryConfiguration alloc];
    v6 = [v3 keyAssetFetchResult];

    v7 = [(PXStoryConfiguration *)v5 initWithAssetCollection:v4 keyAsset:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PXStoryConfiguration alloc] initWithAssetCollection:v2];
    }

    else
    {
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v1;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "cannot create PXStoryConfiguration from %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  return v7;
}

id PXStoryObjectReferenceForDestinationInMemoryDataSource(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 type] == 9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 assetCollectionUUID];
      if (!v5)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXSectionedObjectReference * _Nullable PXStoryObjectReferenceForDestinationInMemoryDataSource(PXProgrammaticNavigationDestination *__strong _Nonnull, PXFeedDataSource *__strong _Nonnull)"}];
        [v17 handleFailureInFunction:v18 file:@"PXStoryMemoryFeedDataSource.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID != nil"}];
      }

      v6 = [v4 sectionedObjectReferenceForMemoryUUID:v5];
      if (v6)
      {
        v7 = v6;

        goto LABEL_19;
      }

      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "couldn't find memoryUUID %@ in %@", buf, 0x16u);
      }
    }
  }

  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "couldn't find %@ in feed data source %@, attempting graceful fallback", buf, 0x16u);
  }

  v10 = [v3 assetCollection];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = PLStoryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "falling back to asset collection %@", buf, 0xCu);
  }

  v13 = [off_1E77218C0 alloc];
  v14 = *(off_1E7722228 + 1);
  *buf = *off_1E7722228;
  *&buf[16] = v14;
  v7 = [v13 initWithSectionObject:0 itemObject:v11 subitemObject:0 indexPath:buf];

  if (!v7)
  {
LABEL_16:
    v15 = PLStoryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "couldn't find %@ in feed data source %@", buf, 0x16u);
    }

    v7 = 0;
  }

LABEL_19:

  return v7;
}

void sub_1A4CE80E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4CEF8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ConfigureFooterView(void *a1, void *a2)
{
  v3 = a2;
  v6 = [a1 textLabel];
  [v6 setTextAlignment:1];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:v4];

  v5 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:*MEMORY[0x1E69DDC38] withSymbolicTraits:0x8000];
  [v6 setFont:v5];

  [v6 setNumberOfLines:0];
  [v6 setText:v3];
}

void sub_1A4CF4F7C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1A4CF55EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CF7BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4CF7FE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A4CF8908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4CF92BC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A4CFA8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t PXErrorRecoveryEnumerateOptionsForError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v21 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXErrorRecoveryEnumerateOptionsForError(NSError *__strong _Nonnull, void (^ _Nullable __strong)(BOOL), void (^__strong _Nonnull)(NSString *__strong, PXAlertActionStyle, void (^__strong)(void)))"}];
    [v15 handleFailureInFunction:v16 file:@"PXErrorRecovery.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"error"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PXErrorRecoveryEnumerateOptionsForError(NSError *__strong _Nonnull, void (^ _Nullable __strong)(BOOL), void (^__strong _Nonnull)(NSString *__strong, PXAlertActionStyle, void (^__strong)(void)))"}];
  [v17 handleFailureInFunction:v18 file:@"PXErrorRecovery.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"recoveryOptionsIterator"}];

LABEL_3:
  v8 = [v5 recoveryAttempter];
  v20 = [v5 localizedRecoveryOptions];
  v9 = [v20 count];
  v19 = objc_opt_respondsToSelector() & (v9 != 0);
  if (v19 == 1)
  {
    v10 = 0;
    do
    {
      v11 = [v20 objectAtIndex:v10];
      if (objc_opt_respondsToSelector())
      {
        v12 = [v8 _alertActionStyleForRecoveryOptionAtIndex:v10];
      }

      else
      {
        v12 = 0;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __PXErrorRecoveryEnumerateOptionsForError_block_invoke;
      aBlock[3] = &unk_1E773DAC8;
      v25 = v21;
      v23 = v8;
      v24 = v5;
      v26 = v10;
      v13 = _Block_copy(aBlock);
      (v7)[2](v7, v11, v12, v13);

      ++v10;
    }

    while (v9 != v10);
  }

  return v19;
}

void __PXErrorRecoveryEnumerateOptionsForError_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = +[PXErrorRecoveryDelegate sharedErrorRecoveryDelegate];
  [v3 attemptRecoveryFromError:v4 optionIndex:v5 delegate:v6 didRecoverSelector:sel__didPresentErrorWithRecovery_contextInfo_ contextInfo:v2];
}

id StorageTipPXPhotosViewConfigurationForConfiguration(void *a1, char a2)
{
  v21[8] = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 setAllowedActions:{objc_msgSend(v3, "allowedActions") & 0xFFFFFFFFFFDFFFFBLL}];
  [v3 setAllowedActions:{objc_msgSend(v3, "allowedActions") | 0x20008031}];
  [v3 setAllowedBehaviors:{objc_msgSend(v3, "allowedBehaviors") & 0xFFFFFFFFFFFEFFDFLL}];
  if (a2)
  {
    v4 = [v3 assetActionManager];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = objc_opt_class();
        v6 = *off_1E7721BF8;
        [v4 registerPerformerClass:v5 forType:*off_1E7721BF8];

        goto LABEL_6;
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull StorageTipPXPhotosViewConfigurationForConfiguration(PXPhotosViewConfiguration *__strong _Nonnull, BOOL)"}];
      v19 = objc_opt_class();
      v18 = NSStringFromClass(v19);
      v20 = [v4 px_descriptionForAssertionMessage];
      [v15 handleFailureInFunction:v16 file:@"PXPhotosViewConfiguration+PXStorageTip.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"config.assetActionManager", v18, v20}];
    }

    else
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"PXPhotosViewConfiguration * _Nonnull StorageTipPXPhotosViewConfigurationForConfiguration(PXPhotosViewConfiguration *__strong _Nonnull, BOOL)"}];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v15 handleFailureInFunction:v16 file:@"PXPhotosViewConfiguration+PXStorageTip.m" lineNumber:22 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"config.assetActionManager", v18}];
    }

    goto LABEL_4;
  }

  v6 = *off_1E7721BF8;
LABEL_6:
  [v3 setAllowsInteractiveFavoriteBadges:0];
  [v3 setAllowsMultiSelectMenu:0];
  v7 = MEMORY[0x1E695DFD8];
  v21[0] = *off_1E7721B88;
  v21[1] = v6;
  v8 = *off_1E7721BE0;
  v21[2] = *off_1E7721A80;
  v21[3] = v8;
  v9 = *off_1E7721B00;
  v21[4] = *off_1E7721AF8;
  v21[5] = v9;
  v10 = *off_1E7721A90;
  v21[6] = *off_1E7721B98;
  v21[7] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:8];
  v12 = [v7 setWithArray:v11];
  v13 = [v3 assetActionManager];
  [v13 setAllowedActionTypes:v12];

  [v3 setNavBarStyle:6];
  [v3 setWantsContentFilterVisible:0];
  [v3 setWantsCPLStatus:0];
  if ((MEMORY[0x1A590D320]([v3 setWantsFileSizeBadge:1]) & 1) == 0)
  {
    [v3 setWantsModernNavBarButtons:1];
  }

  [v3 setWantsFooterVisibleImmediately:1];

  return v3;
}

id PXPhotosViewConfigurationForStorageTipWithDataSourceProvider(void *a1, char a2)
{
  v3 = PXPhotosViewConfigurationForDataSourceProvider(a1, 0);
  StorageTipPXPhotosViewConfigurationForConfiguration(v3, a2);
  objc_claimAutoreleasedReturnValue();

  return v3;
}

id PXPhotosViewConfigurationForStorageTipWithAssetCollection(void *a1, char a2)
{
  v3 = _PXPhotosViewConfigurationForAssetCollection(a1, 0, 0, 0, 0, 0, 0, 0);
  StorageTipPXPhotosViewConfigurationForConfiguration(v3, a2);
  objc_claimAutoreleasedReturnValue();

  return v3;
}

void PXTargetLibrarySetTypePreference(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  PXPreferencesSetValue(@"PXTargetLibrary", v1);
}

CFIndex PXTargetLibraryGetTypePreference()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"PXTargetLibrary", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

id PXTargetLibraryFetchLibraryScopeOrNil(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v1];
  if ([v2 hasSharedLibraryOrPreview])
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PXTargetLibrary", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    v4 = 0;
    if (keyExistsAndHasValidFormat && AppIntegerValue == 1)
    {
      v5 = [v2 sharedLibraryOrPreview];
      v6 = [v1 librarySpecificFetchOptions];
      v7 = MEMORY[0x1E69788A0];
      v8 = [v5 identifier];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v10 = [v7 fetchLibraryScopesWithLocalIdentifiers:v9 options:v6];

      v4 = [v10 firstObject];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A4D02D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__83664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMFMailComposeViewControllerClass_83739()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMailComposeViewControllerClass_softClass_83762;
  v7 = getMFMailComposeViewControllerClass_softClass_83762;
  if (!getMFMailComposeViewControllerClass_softClass_83762)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMFMailComposeViewControllerClass_block_invoke_83763;
    v3[3] = &unk_1E774BD00;
    v3[4] = &v4;
    __getMFMailComposeViewControllerClass_block_invoke_83763(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A4D03E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMailComposeViewControllerClass_block_invoke_83763(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary_83764)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MessageUILibraryCore_block_invoke_83765;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7736268;
    v8 = 0;
    MessageUILibraryCore_frameworkLibrary_83764 = _sl_dlopen();
  }

  if (!MessageUILibraryCore_frameworkLibrary_83764)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MessageUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXDebugMemoriesViewController.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MFMailComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMFMailComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXDebugMemoriesViewController.m" lineNumber:30 description:{@"Unable to find class %s", "MFMailComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getMFMailComposeViewControllerClass_softClass_83762 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke_83765()
{
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary_83764 = result;
  return result;
}

uint64_t __Block_byref_object_copy__84232(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXNavigationListItemCollectionIdentifier(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (!v2)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXNavigationListItemCollectionIdentifier(PHCollection *__strong _Nonnull)"];
      v13 = objc_opt_class();
      v6 = NSStringFromClass(v13);
      [v3 handleFailureInFunction:v4 file:@"PXNavigationListItem.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v6}];
LABEL_21:

      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXNavigationListItemCollectionIdentifier(PHCollection *__strong _Nonnull)"];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v2 px_descriptionForAssertionMessage];
      [v3 handleFailureInFunction:v4 file:@"PXNavigationListItem.m" lineNumber:68 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v6, v7}];
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (!v2)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXNavigationListItemCollectionIdentifier(PHCollection *__strong _Nonnull)"];
      v14 = objc_opt_class();
      v6 = NSStringFromClass(v14);
      [v3 handleFailureInFunction:v4 file:@"PXNavigationListItem.m" lineNumber:71 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v6}];
      goto LABEL_21;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXNavigationListItemCollectionIdentifier(PHCollection *__strong _Nonnull)"];
      v15 = objc_opt_class();
      v6 = NSStringFromClass(v15);
      v7 = [v2 px_descriptionForAssertionMessage];
      [v3 handleFailureInFunction:v4 file:@"PXNavigationListItem.m" lineNumber:71 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v6, v7}];
      goto LABEL_20;
    }

LABEL_8:
    v8 = [v2 transientIdentifier];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v2 localIdentifier];
    }

    v11 = v10;

    goto LABEL_13;
  }

  v11 = [v1 localIdentifier];
LABEL_13:

  return v11;
}

id PXNavigationListItemIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (v3)
    {
LABEL_3:
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v3, v4];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PXNavigationListItemIdentifier(NSString *__strong _Nullable, NSString *__strong _Nonnull)"}];
    [v6 handleFailureInFunction:v7 file:@"PXNavigationListItem.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"collectionIdentifier"}];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v5 = v4;
LABEL_6:
  v8 = v5;

  return v8;
}

PXNavigationListAssetCollectionItem *PXNavigationListItemWithObject(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[PXNavigationListAssetCollectionItem alloc] initWithAssetCollection:v9 accessoryTitle:v10 reorderable:a4 topLevelIdentifier:v11];
    [(PXNavigationListAssetCollectionItem *)v12 setLockState:a3];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[PXNavigationListCollectionListItem alloc] initWithCollectionList:v9 accessoryTitle:v10 reorderable:a4 topLevelIdentifier:v11];
LABEL_9:
    v12 = v13;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[PXNavigationSocialGroupListItem alloc] initWithSocialGroup:v9 reorderable:a4 topLevelIdentifier:v11];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[PXNavigationPersonListItem alloc] initWithPerson:v9 reorderable:a4 topLevelIdentifier:v11];
    goto LABEL_9;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

void sub_1A4D09DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A4D0BB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D0DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PXPhotoKitAssetCollectionSupportsNearbyAssetsAffordance(void *a1)
{
  v1 = a1;
  v2 = ([v1 px_isRecentsSmartAlbum] & 1) == 0 && (objc_msgSend(v1, "px_isAllPhotosSmartAlbum") & 1) == 0 && !objc_msgSend(v1, "px_isPlacesSmartAlbum");

  return v2;
}

void sub_1A4D0E6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85429(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_PXStoryDefaultStyleProducer *PXStoryDefaultStyleProducerForConfiguration(void *a1)
{
  v1 = a1;
  v2 = [v1 styleProducer];
  if (!v2)
  {
    v2 = [[_PXStoryDefaultStyleProducer alloc] initWithStoryConfiguration:v1];
  }

  return v2;
}

void sub_1A4D19A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D1ABB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86679(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D22334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t PXFlippedExploreHeroSide(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXExploreLayoutHeroSide PXFlippedExploreHeroSide(PXExploreLayoutHeroSide)"];
    [v6 handleFailureInFunction:v7 file:@"PXExploreLayoutGenerator.m" lineNumber:1103 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

void sub_1A4D23A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PXExploreLayoutTypeDescription(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"??";
  }

  else
  {
    return off_1E77368E0[a1];
  }
}

__CFString *PXExploreLayoutSubtypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7736918[a1];
  }
}

uint64_t PXExploreLayoutMetricsNumberOfGridColumns(void *a1)
{
  v1 = a1;
  v2 = [v1 layoutType];
  v3 = 3;
  if (v2 > 2)
  {
    if ((v2 - 4) < 3)
    {
LABEL_7:
      v3 = 4;
      goto LABEL_8;
    }

    if (v2 != 3)
    {
      goto LABEL_10;
    }
  }

  else if (v2 != 1)
  {
    if (v2 != 2)
    {
      if (!v2)
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger PXExploreLayoutMetricsNumberOfGridColumns(PXExploreLayoutMetrics *__strong _Nonnull)"];
        v6 = v4;
        v7 = v5;
        v8 = 1110;
        goto LABEL_11;
      }

LABEL_10:
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger PXExploreLayoutMetricsNumberOfGridColumns(PXExploreLayoutMetrics *__strong _Nonnull)"];
      v6 = v4;
      v7 = v5;
      v8 = 1122;
LABEL_11:
      [v6 handleFailureInFunction:v7 file:@"PXExploreLayoutGenerator.m" lineNumber:v8 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    goto LABEL_7;
  }

LABEL_8:

  return v3;
}

void sub_1A4D250AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__87719(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D28890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getCPLSyncProgressStateKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCPLSyncProgressStateKeySymbolLoc_ptr;
  v9 = getCPLSyncProgressStateKeySymbolLoc_ptr;
  if (!getCPLSyncProgressStateKeySymbolLoc_ptr)
  {
    v1 = CloudPhotoLibraryLibrary();
    v7[3] = dlsym(v1, "CPLSyncProgressStateKey");
    getCPLSyncProgressStateKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCPLSyncProgressStateKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PXCPLSyncActivity.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A4D2A340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCPLSyncProgressStateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudPhotoLibraryLibrary();
  result = dlsym(v2, "CPLSyncProgressStateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCPLSyncProgressStateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CloudPhotoLibraryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudPhotoLibraryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudPhotoLibraryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7736A78;
    v6 = 0;
    CloudPhotoLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudPhotoLibraryLibraryCore_frameworkLibrary;
  if (!CloudPhotoLibraryLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudPhotoLibraryLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PXCPLSyncActivity.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudPhotoLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudPhotoLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1A4D2AA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getCPLLibraryIdentifierSystemLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudPhotoLibraryLibrary();
  result = dlsym(v2, "CPLLibraryIdentifierSystemLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCPLLibraryIdentifierSystemLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A4D2F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPDFDocumentClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary_88705)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PDFKitLibraryCore_block_invoke_88706;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7736C10;
    v8 = 0;
    PDFKitLibraryCore_frameworkLibrary_88705 = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary_88705)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PDFKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXVisualDiagnosticsFactory.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PDFDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPDFDocumentClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXVisualDiagnosticsFactory.m" lineNumber:27 description:{@"Unable to find class %s", "PDFDocument"}];

LABEL_10:
    __break(1u);
  }

  getPDFDocumentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PDFKitLibraryCore_block_invoke_88706()
{
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary_88705 = result;
  return result;
}

void sub_1A4D30DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D31168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D32760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1A4D33370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getICQBannerViewClass_block_invoke_89673(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_89682)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __iCloudQuotaUILibraryCore_block_invoke_89683;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7736D28;
    v8 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_89682 = _sl_dlopen();
  }

  if (!iCloudQuotaUILibraryCore_frameworkLibrary_89682)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudQuotaUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXCloudQuotaOfferController.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICQBannerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICQBannerViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXCloudQuotaOfferController.m" lineNumber:30 description:{@"Unable to find class %s", "ICQBannerView"}];

LABEL_10:
    __break(1u);
  }

  getICQBannerViewClass_softClass_89672 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_89683()
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_89682 = result;
  return result;
}

id _SharedDefaults()
{
  if (_SharedDefaults_predicate != -1)
  {
    dispatch_once(&_SharedDefaults_predicate, &__block_literal_global_89704);
  }

  v1 = _SharedDefaults__sharedDefaults;

  return v1;
}

void sub_1A4D37C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D37E78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A4D38268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D38470(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A4D3871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D3A628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90385(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D3B030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id _localizedSuggestionTitleForDateInterval(void *a1)
{
  v1 = _localizedSuggestionTitleForDateInterval_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_localizedSuggestionTitleForDateInterval_onceToken, &__block_literal_global_560);
  }

  v3 = _localizedSuggestionTitleForDateInterval_calendar;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 component:4 fromDate:v4];

  v6 = _localizedSuggestionTitleForDateInterval_calendar;
  v7 = [v2 startDate];
  v8 = [v6 component:4 fromDate:v7];

  v9 = _localizedSuggestionTitleForDateInterval_calendar;
  v10 = [v2 endDate];
  v11 = [v9 component:4 fromDate:v10];

  v12 = v8 == v11 && v5 == v8;
  v13 = &_localizedSuggestionTitleForDateInterval_onlyMonthFormatter;
  if (!v12)
  {
    v13 = &_localizedSuggestionTitleForDateInterval_monthAndYearFormatter;
  }

  v14 = [*v13 stringFromDateInterval:v2];

  return v14;
}

void ___localizedSuggestionTitleForDateInterval_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB88]);
  v1 = _localizedSuggestionTitleForDateInterval_onlyMonthFormatter;
  _localizedSuggestionTitleForDateInterval_onlyMonthFormatter = v0;

  v2 = [_localizedSuggestionTitleForDateInterval_onlyMonthFormatter px_dateTemplateForGranularity:8 abbreviated:0 onlyCalendarUnit:1];
  [_localizedSuggestionTitleForDateInterval_onlyMonthFormatter setDateTemplate:v2];

  v3 = objc_alloc_init(MEMORY[0x1E696AB88]);
  v4 = _localizedSuggestionTitleForDateInterval_monthAndYearFormatter;
  _localizedSuggestionTitleForDateInterval_monthAndYearFormatter = v3;

  v5 = [_localizedSuggestionTitleForDateInterval_monthAndYearFormatter px_dateTemplateForGranularity:8 abbreviated:1 onlyCalendarUnit:0];
  [_localizedSuggestionTitleForDateInterval_monthAndYearFormatter setDateTemplate:v5];

  v6 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v7 = _localizedSuggestionTitleForDateInterval_calendar;
  _localizedSuggestionTitleForDateInterval_calendar = v6;
}

BOOL PXPPTIsRunningScrollTest(void *a1)
{
  if (a1)
  {
    *a1 = _PXPPTCurrentlyTestedScrollView;
  }

  return _PXPPTCurrentlyTestedScrollView != 0;
}

void PXPPTWillBeginScrollTestOnScrollView(void *a1)
{
  v1 = a1;
  if (_PXPPTCurrentlyTestedScrollView)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXPPTWillBeginScrollTestOnScrollView(PXScrollView *__strong _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"PXPPTDelegate.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"_PXPPTCurrentlyTestedScrollView == nil"}];

    v2 = _PXPPTCurrentlyTestedScrollView;
  }

  else
  {
    v2 = 0;
  }

  _PXPPTCurrentlyTestedScrollView = v1;
  v5 = v1;

  [off_1E77216A8 setRunningPPTScrollTest:1];
}

uint64_t PXPPTDidEndScrollTestOnScrollView(uint64_t a1)
{
  v1 = _PXPPTCurrentlyTestedScrollView;
  if (_PXPPTCurrentlyTestedScrollView != a1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PXPPTDidEndScrollTestOnScrollView(PXScrollView *__strong _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"PXPPTDelegate.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"scrollView == _PXPPTCurrentlyTestedScrollView"}];

    v1 = _PXPPTCurrentlyTestedScrollView;
  }

  _PXPPTCurrentlyTestedScrollView = 0;

  return [off_1E77216A8 setRunningPPTScrollTest:0];
}

void sub_1A4D47588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92265(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D4987C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D49C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D4A0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D4C5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D4CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A4D4DA58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_1A4D50800(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Unwind_Resume(a1);
}

void sub_1A4D54AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93289(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D56540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93747(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t operator||(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userData];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id _PXPhotoCollectionHeaderTitleLabelFontForStyle(uint64_t a1)
{
  if ((a1 - 1) < 2)
  {
    v2 = 3;
    v3 = 2;
LABEL_7:
    v1 = MEMORY[0x1A590C430](v2, v3, 9);
    goto LABEL_8;
  }

  if (!a1)
  {
    v2 = 5;
    v3 = 0x8000;
    goto LABEL_7;
  }

  if (a1 == -1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIFont *_PXPhotoCollectionHeaderTitleLabelFontForStyle(PXPhotosGridSectionHeaderStyle)"];
    [v5 handleFailureInFunction:v6 file:@"PXPhotosSectionHeaderView.m" lineNumber:71 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v1 = 0;
LABEL_8:

  return v1;
}

id _PXPhotoCollectionHeaderSubtitleFontForStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
    if (a1 == -1)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIFont *_PXPhotoCollectionHeaderSubtitleFontForStyle(PXPhotosGridSectionHeaderStyle)"];
      [v3 handleFailureInFunction:v4 file:@"PXPhotosSectionHeaderView.m" lineNumber:104 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1A590C430](6, 0x8000, 9);
  }

  return v1;
}

void _PXConfigurePhotoCollectionHeaderDateLabel(void *a1, unint64_t a2)
{
  v3 = a1;
  v5 = _PXPhotoCollectionHeaderSubtitleFontForStyle(a2);
  [v3 setFont:v5];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

void _PXConfigurePhotoCollectionHeaderLocationsLabel(void *a1, unint64_t a2)
{
  v3 = a1;
  v5 = _PXPhotoCollectionHeaderSubtitleFontForStyle(a2);
  [v3 setFont:v5];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setOpaque:0];
  [v3 setLineBreakMode:5];
  [v3 setNumberOfLines:1];
}

id _PXPhotoCollectionHeaderDisclosureIconForStyle(uint64_t a1)
{
  v1 = _PXPhotoCollectionHeaderTitleLabelFontForStyle(a1);
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:v1 scale:1];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.right"];
  v4 = [v3 imageByApplyingSymbolConfiguration:v2];

  v5 = [v4 imageFlippedForRightToLeftLayoutDirection];

  return v5;
}

void _PXConfigurePhotoCollectionHeaderTitleLabel(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = _PXPhotoCollectionHeaderTitleLabelFontForStyle(a2);
  [v3 setFont:v5];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

__CFString *PXLibraryFilterViewModeDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXLibraryFilterViewMode: %ld", a1];
  }

  else
  {
    v2 = off_1E7737850[a1];
  }

  return v2;
}

uint64_t PXLibraryFilterViewModeFromSharingFilter(unsigned int a1)
{
  if (a1 >= 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXLibraryFilterViewMode PXLibraryFilterViewModeFromSharingFilter(PHPhotosSharingFilter)"];
    [v6 handleFailureInFunction:v7 file:@"PXLibraryFilterCommon.m" lineNumber:42 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_1A5381B60[a1];
}

unint64_t PXSharingFilterFromPhotoLibrary(uint64_t a1)
{
  v1 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:a1];
  v2 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v1];
  v3 = PXSharingFilterFromLibraryFilterViewMode([(PXLibraryFilterState *)v2 observableViewMode]);

  return v3;
}

BOOL PXLibraryFilterViewModeFromItemTag(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

BOOL PXLibraryFilterItemTagFromViewMode(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

__CFString *PXLibraryFilterMenuImageNameForItemTagFilled(uint64_t a1, int a2)
{
  if (a1 == 2)
  {
    v3 = @"person.2";
    v4 = @"person.2.fill";
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        v2 = 0;
      }

      else
      {
        v2 = @"photo.on.rectangle";
      }

      goto LABEL_11;
    }

    v3 = @"person";
    v4 = @"person.fill";
  }

  if (a2)
  {
    v3 = v4;
  }

  v2 = v3;
LABEL_11:

  return v2;
}

id PXLibraryFilterMenuImageForItemTag(uint64_t a1)
{
  v1 = PXLibraryFilterMenuImageNameForItemTagFilled(a1, 0);
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PXLibraryFilterTitleForItemTag(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = PXLocalizedSharedLibraryString(off_1E774C6B0[a1]);
  }

  return v2;
}

id PXLibraryFilterShortTitleForItemTag(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = PXLocalizedSharedLibraryString(off_1E7737868[a1]);
  }

  return v2;
}

void *PXLibraryFilterHiddenTypesForAssetCollection(void *a1)
{
  v1 = a1;
  if (([v1 px_isSharedAlbum] & 1) != 0 || objc_msgSend(v1, "px_isAllLibraryDuplicatesSmartAlbum"))
  {
    v2 = &unk_1F1910798;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

void PXLibraryFilterSendAnalyticsForItemSelected(unint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 <= 2)
  {
    v5 = off_1E7737880[a1];
    v6 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E20];
    v9[0] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v6 sendEvent:v5 withPayload:v7];
  }
}

void PXLibraryFilterSendAnalyticsForDisplayedViewMode(unint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 <= 2)
  {
    v5 = off_1E7737898[a1];
    v6 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E20];
    v9[0] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v6 sendEvent:v5 withPayload:v7];
  }
}

uint64_t PXSharingFilterForLibraryFilter(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 != 1);
  }
}

uint64_t PXLibraryFilterViewModeFromLayoutVariant(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t PXLayoutVariantFromLibraryFilterViewMode(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void PXResetSuggestedMemories(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [a1 librarySpecificFetchOptions];
  v2 = [MEMORY[0x1E69788F0] fetchBlockedMemoriesWithOptions:v1];
  v3 = [MEMORY[0x1E69788F0] fetchMemoriesWithUserFeedbackWithOptions:v1];
  v4 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithState:4 withOptions:v1];
  if ([v2 count] || objc_msgSend(v3, "count") || objc_msgSend(v4, "count"))
  {
    v5 = [v2 fetchOptions];
    v6 = [v5 photoLibrary];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PXResetSuggestedMemories_block_invoke;
    v11[3] = &unk_1E774A1B8;
    v12 = v2;
    v13 = v3;
    v14 = v4;
    v10 = 0;
    v7 = [v6 performChangesAndWait:v11 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = PLUIGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "PXMemoriesSettings: Resetting Blacklisted Memories failed with error: %@", buf, 0xCu);
      }
    }
  }
}

void __PXResetSuggestedMemories_block_invoke(id *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 blacklistedFeature];
        v10 = [v9 type];

        if (v10 != 1)
        {
          if ([v8 category] == 401)
          {
            [v2 addObject:v8];
          }

          else
          {
            v11 = [MEMORY[0x1E6978900] changeRequestForMemory:v8];
            [v11 setBlacklistedFeature:0];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6978900] deleteMemories:v2];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = a1[5];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x1E6978900] changeRequestForMemory:{*(*(&v18 + 1) + 8 * j), v18}];
        [v17 setUserFeedback:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if ([a1[6] count])
  {
    [MEMORY[0x1E6978AF0] deleteSuggestions:a1[6]];
  }
}

void __PXResetPeopleFeedback_block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "SettingsBaseController: resetting blocked persons failed with error: %@", &v6, 0xCu);
    }
  }
}

void sub_1A4D66758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A4D66ACC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t PXDetailsViewCurationLengthFromDisplayAssetCollectionCurationLength(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A5381B88[a1 - 1];
  }
}

void sub_1A4D67A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__96121(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXCuratedLibraryAnalyticsIntervalNameForAllPhotosWithColumns(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.curatedLibraryAllPhotos%liColumnsDisplayed", a1];

  return v1;
}

void sub_1A4D68EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4D693FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__96433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A4D6A104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 208));
  _Unwind_Resume(a1);
}

void sub_1A4D6B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_1A4D6DB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4D6F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_1A4D6FA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A4D750DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97425(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXSmartAlbumPhotoTypeDebugDescription(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PXSmartAlbumPhotoTypeDebugDescription(PXSmartAlbumPhotoType)"];
      [v6 handleFailureInFunction:v7 file:@"PXSmartAlbumPhotoType.m" lineNumber:23 description:@"Code which should be unreachable has been reached"];

      abort();
    case 1:
      result = @"adjusted";
      break;
    case 2:
      result = @"animated";
      break;
    case 3:
      result = @"burst";
      break;
    case 4:
      result = @"favorite";
      break;
    case 5:
      result = @"hdr";
      break;
    case 6:
      result = @"hidden";
      break;
    case 7:
      result = @"live";
      break;
    case 8:
      result = @"movie";
      break;
    case 9:
      result = @"panorama";
      break;
    case 10:
      result = @"raw";
      break;
    case 11:
      result = @"referenced";
      break;
    case 12:
      result = @"sdof";
      break;
    case 13:
      result = @"screenshot";
      break;
    case 14:
      result = @"selfie";
      break;
    case 15:
      result = @"slo-mo";
      break;
    case 16:
      result = @"tagged-with-gps";
      break;
    case 17:
      result = @"time-lapse";
      break;
    case 18:
      result = @"unable-to-upload-to-icloud";
      break;
    case 19:
      result = @"proRes";
      break;
    case 20:
      result = @"screen-recording";
      break;
    case 21:
      result = @"long-exposure";
      break;
    case 22:
      result = @"cinematic";
      break;
    case 23:
      result = @"spatial";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t PXSmartAlbumPhotoTypeForSingleQuery(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSmartAlbumPhotoType PXSmartAlbumPhotoTypeForSingleQuery(PLSingleQuery *__strong _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"PXSmartAlbumPhotoType.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"singleQuery"}];
  }

  v2 = [v1 key];
  if (v2 > 4)
  {
    if (v2 <= 8)
    {
      if (v2 == 5)
      {
        switch([v1 integerValue])
        {
          case 0u:
            v7 = [MEMORY[0x1E696AAA8] currentHandler];
            v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSmartAlbumPhotoType PXSmartAlbumPhotoTypeForSingleQuery(PLSingleQuery *__strong _Nonnull)"];
            v9 = v7;
            v10 = v8;
            v11 = 127;
            goto LABEL_45;
          case 1u:
            PXAssertGetLog();
          case 2u:
            v3 = 8;
            goto LABEL_27;
          case 3u:
            v3 = 7;
            goto LABEL_27;
          case 4u:
            v3 = 9;
            goto LABEL_27;
          case 5u:
            v3 = 17;
            goto LABEL_27;
          case 6u:
            v3 = 15;
            goto LABEL_27;
          case 7u:
            v3 = 13;
            goto LABEL_27;
          case 8u:
            v3 = 12;
            goto LABEL_27;
          case 9u:
            v3 = 5;
            goto LABEL_27;
          case 0xAu:
            v3 = 2;
            goto LABEL_27;
          case 0xBu:
            v3 = 14;
            goto LABEL_27;
          case 0xCu:
            v3 = 3;
            goto LABEL_27;
          case 0xDu:
            PXAssertGetLog();
          case 0xEu:
            v3 = 20;
            goto LABEL_27;
          case 0xFu:
            v3 = 21;
            goto LABEL_27;
          case 0x10u:
            v3 = 22;
            goto LABEL_27;
          case 0x11u:
            v3 = 23;
            goto LABEL_27;
          default:
            v3 = 0;
            goto LABEL_27;
        }
      }

      if (v2 == 6)
      {
        v3 = 11;
        goto LABEL_27;
      }
    }

    else
    {
      switch(v2)
      {
        case 9:
          v3 = 19;
          goto LABEL_27;
        case 319:
          v3 = 16;
          goto LABEL_27;
        case 1000:
          v3 = 18;
          goto LABEL_27;
      }
    }

LABEL_25:
    PXAssertGetLog();
  }

  if (v2 <= 2)
  {
    switch(v2)
    {
      case 1:
        v3 = 4;
        goto LABEL_27;
      case 2:
        v3 = 6;
        goto LABEL_27;
      case 0:
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXSmartAlbumPhotoType PXSmartAlbumPhotoTypeForSingleQuery(PLSingleQuery *__strong _Nonnull)"];
        v9 = v7;
        v10 = v8;
        v11 = 105;
LABEL_45:
        [v9 handleFailureInFunction:v10 file:@"PXSmartAlbumPhotoType.m" lineNumber:v11 description:@"Code which should be unreachable has been reached"];

        abort();
    }

    goto LABEL_25;
  }

  if (v2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 10;
  }

LABEL_27:

  return v3;
}

void sub_1A4D77720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PXContentSyndicationDataSourceTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"PXContentSyndicationDataSourceTypeDefault";
  }

  else
  {
    return off_1E7738158[a1 - 1];
  }
}

void sub_1A4D7AA98(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  objc_destroyWeak(&STACK[0x2D8]);
  objc_destroyWeak(&STACK[0x2E0]);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Unwind_Resume(a1);
}

void sub_1A4D7B6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

Class __getAAUIGenericTermsRemoteUIClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppleAccountUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E77382A8;
    v8 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PXCloudPhotoWelcomeViewController.m" lineNumber:53 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AAUIGenericTermsRemoteUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAAUIGenericTermsRemoteUIClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PXCloudPhotoWelcomeViewController.m" lineNumber:54 description:{@"Unable to find class %s", "AAUIGenericTermsRemoteUI"}];

LABEL_10:
    __break(1u);
  }

  getAAUIGenericTermsRemoteUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}