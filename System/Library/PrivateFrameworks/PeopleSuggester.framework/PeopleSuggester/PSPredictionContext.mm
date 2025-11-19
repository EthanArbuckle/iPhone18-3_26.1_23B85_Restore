@interface PSPredictionContext
@end

@implementation PSPredictionContext

void __46___PSPredictionContext_supportsZKWSuggestions__block_invoke()
{
  v15 = MEMORY[0x1E695DFD8];
  v22 = +[_PSConstants mobileMessagesBundleId];
  v14 = +[_PSConstants mobileMessagesComposeBundleId];
  v21 = +[_PSConstants mobileFacetimeBundleId];
  v13 = +[_PSConstants macFacetimeBundleId];
  v20 = +[_PSConstants mobilePhoneBundleId];
  v12 = +[_PSConstants mobileSharePlayPeoplePickerBundleId];
  v19 = +[_PSConstants macSharePlayPeoplePickerBundleId];
  v18 = +[_PSConstants mobileMailAccountSettingsBundleId];
  v17 = +[_PSConstants preferencesBundleId];
  v16 = +[_PSConstants findMyBundleId];
  v11 = +[_PSConstants passwordsAppBundleId];
  v10 = +[_PSConstants macSafariBundleId];
  v0 = +[_PSConstants macSafariTechnologyPreviewBundleId];
  v9 = +[_PSConstants macSafariPlatformSupportBundleId];
  v1 = +[_PSConstants realityLauncherBundleId];
  v2 = +[_PSConstants realityChromeBundleId];
  v3 = +[_PSConstants togetherdBundleId];
  v4 = +[_PSConstants peoplePickerBundleId];
  v5 = +[_PSConstants peoplePickerTesterBundleId];
  v6 = +[_PSConstants CKTesterBundleId];
  v7 = [v15 setWithObjects:{v22, v14, v21, v13, v20, v12, v19, v18, v17, v16, v11, v10, v0, v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = supportsZKWSuggestions_supportedBundleIds;
  supportsZKWSuggestions_supportedBundleIds = v7;
}

@end