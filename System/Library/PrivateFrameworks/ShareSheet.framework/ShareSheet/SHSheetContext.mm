@interface SHSheetContext
- (SHSheetContext)initWithActivityViewController:(id)controller activityItems:(id)items;
- (UIActivityViewController)activityViewController;
- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate;
- (id)description;
@end

@implementation SHSheetContext

- (UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectManipulationDelegate);

  return WeakRetained;
}

- (SHSheetContext)initWithActivityViewController:(id)controller activityItems:(id)items
{
  v17[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = SHSheetContext;
  v8 = [(SHSheetContext *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_activityViewController, controllerCopy);
    v10 = [itemsCopy copy];
    activityItems = v9->_activityItems;
    v9->_activityItems = v10;

    v17[0] = @"com.apple.UIKit.activity.RemoteExtension";
    v17[1] = @"com.apple.UIKit.activity.RemoteOpenInApplication";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    activityTypesToCreateInShareService = v9->_activityTypesToCreateInShareService;
    v9->_activityTypesToCreateInShareService = v12;

    if (_ShareSheetHostCanRenderInProcess())
    {
      IsAppleApp = _ShareSheetIsAppleApp();
      if (IsAppleApp)
      {
        LOBYTE(IsAppleApp) = _ShareSheetCanAccessContactsInCurrentProcess();
      }

      v9->_instantShareSheet = IsAppleApp;
    }

    else
    {
      v9->_useRemoteUIService = 1;
    }
  }

  return v9;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v33.receiver = self;
  v33.super_class = SHSheetContext;
  v32 = [(SHSheetContext *)&v33 description];
  activityViewController = [(SHSheetContext *)self activityViewController];
  activityItems = [(SHSheetContext *)self activityItems];
  applicationActivities = [(SHSheetContext *)self applicationActivities];
  activityTypesToCreateInShareService = [(SHSheetContext *)self activityTypesToCreateInShareService];
  sharingStyle = [(SHSheetContext *)self sharingStyle];
  activityTypeOrder = [(SHSheetContext *)self activityTypeOrder];
  excludedActivityTypes = [(SHSheetContext *)self excludedActivityTypes];
  includedActivityTypes = [(SHSheetContext *)self includedActivityTypes];
  excludedActivityCategories = [(SHSheetContext *)self excludedActivityCategories];
  [(SHSheetContext *)self allowsEmbedding];
  v26 = NSStringFromBOOL();
  [(SHSheetContext *)self configureForCloudSharing];
  v25 = NSStringFromBOOL();
  [(SHSheetContext *)self configureForPhotosEdit];
  v15 = NSStringFromBOOL();
  [(SHSheetContext *)self hideHeaderView];
  v24 = NSStringFromBOOL();
  [(SHSheetContext *)self hideSuggestions];
  v14 = NSStringFromBOOL();
  [(SHSheetContext *)self isContentManaged];
  v23 = NSStringFromBOOL();
  [(SHSheetContext *)self shouldSuggestFamilyMembers];
  v22 = NSStringFromBOOL();
  [(SHSheetContext *)self showKeyboardAutomatically];
  v13 = NSStringFromBOOL();
  [(SHSheetContext *)self whitelistActionActivitiesOnly];
  v12 = NSStringFromBOOL();
  photosHeaderMetadata = [(SHSheetContext *)self photosHeaderMetadata];
  objectManipulationDelegate = [(SHSheetContext *)self objectManipulationDelegate];
  [(SHSheetContext *)self instantShareSheet];
  v9 = NSStringFromBOOL();
  [(SHSheetContext *)self useRemoteUIService];
  v3 = NSStringFromBOOL();
  peopleSuggestionBundleIds = [(SHSheetContext *)self peopleSuggestionBundleIds];
  collaborationModeRestriction = [(SHSheetContext *)self collaborationModeRestriction];
  managedFileURL = [(SHSheetContext *)self managedFileURL];
  [(SHSheetContext *)self showCustomScene];
  v7 = NSStringFromBOOL();
  v21 = [v20 stringWithFormat:@"<%@ activityViewController:%@ activityItems:%@ applicationActivities:%@ activityTypesToCreateInShareService:%@ sharingStyle:%ld activityTypeOrder:%@ excludedActivityTypes:%@ includedActivityTypes:%@ excludedActivityCategories:%ld allowsEmbedding:%@ configureForCloudSharing:%@ configureForPhotosEdit:%@ hideHeaderView:%@ hideSuggestions:%@ isContentManaged:%@ shouldSuggestFamilyMembers:%@ showKeyboardAutomatically:%@ whitelistActionActivitiesOnly:%@ photosHeaderMetadata:%@ objectManipulationDelegate:%@ instantShareSheet:%@ useRemoteUIService:%@ peopleSuggestionBundleIds:%@ collaborationModeRestriction:%@ managedFileURL:%@ showCustomScene:%@ xrRenderingMode:%lu>", v32, activityViewController, activityItems, applicationActivities, activityTypesToCreateInShareService, sharingStyle, activityTypeOrder, excludedActivityTypes, includedActivityTypes, excludedActivityCategories, v26, v25, v15, v24, v14, v23, v22, v13, v12, photosHeaderMetadata, objectManipulationDelegate, v9, v3, peopleSuggestionBundleIds, collaborationModeRestriction, managedFileURL, v7, -[SHSheetContext xrRenderingMode](self, "xrRenderingMode")];

  return v21;
}

@end