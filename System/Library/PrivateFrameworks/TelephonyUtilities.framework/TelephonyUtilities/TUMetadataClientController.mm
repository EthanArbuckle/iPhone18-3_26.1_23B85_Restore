@interface TUMetadataClientController
+ (TUMetadataClientController)sharedInstance;
- (TUMetadataClientController)init;
- (id)_metadataDestinationIdForSearchItem:(id)item;
- (id)directoryLabelForDestinationID:(id)d;
- (id)directoryLabelForSearchItem:(id)item;
- (id)locationForDestinationID:(id)d;
- (id)locationForSearchItem:(id)item;
- (id)suggestionForDestinationID:(id)d;
- (id)suggestionForSearchItem:(id)item;
- (void)updateMetadataForCall:(id)call completion:(id)completion;
- (void)updateMetadataForDestinationID:(id)d completion:(id)completion;
- (void)updateMetadataForRecentCalls:(id)calls completion:(id)completion;
@end

@implementation TUMetadataClientController

+ (TUMetadataClientController)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TUMetadataClientController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __44__TUMetadataClientController_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TUMetadataClientController)init
{
  v13.receiver = self;
  v13.super_class = TUMetadataClientController;
  v2 = [(TUMetadataClientController *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
    v5 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
    v6 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
    v7 = [v3 arrayWithObjects:{v4, v5, v6, 0}];

    v8 = [TUMetadataCache alloc];
    v9 = [v7 copy];
    v10 = [(TUMetadataCache *)v8 initWithDataProviders:v9];
    metadataCache = v2->_metadataCache;
    v2->_metadataCache = v10;
  }

  return v2;
}

- (id)suggestionForDestinationID:(id)d
{
  dCopy = d;
  metadataCache = [(TUMetadataClientController *)self metadataCache];
  v6 = [metadataCache metadataForDestinationID:dCopy];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)locationForDestinationID:(id)d
{
  dCopy = d;
  metadataCache = [(TUMetadataClientController *)self metadataCache];
  v6 = [metadataCache metadataForDestinationID:dCopy];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)directoryLabelForDestinationID:(id)d
{
  dCopy = d;
  metadataCache = [(TUMetadataClientController *)self metadataCache];
  v6 = [metadataCache metadataForDestinationID:dCopy];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)suggestionForSearchItem:(id)item
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:item];
  if (v4)
  {
    v5 = [(TUMetadataClientController *)self suggestionForDestinationID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)locationForSearchItem:(id)item
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:item];
  if (v4)
  {
    v5 = [(TUMetadataClientController *)self locationForDestinationID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)directoryLabelForSearchItem:(id)item
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:item];
  if (v4)
  {
    v5 = [(TUMetadataClientController *)self directoryLabelForDestinationID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_metadataDestinationIdForSearchItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recentCall = [itemCopy recentCall];
    v5 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:recentCall];
    firstObject = [v5 firstObject];
LABEL_13:
    v8 = firstObject;
    goto LABEL_14;
  }

  recentCall = [itemCopy destinationId];
  if (![recentCall length])
  {
    v8 = 0;
    goto LABEL_15;
  }

  if ([recentCall destinationIdIsEmailAddress])
  {
    v7 = [TUHandle normalizedEmailAddressHandleForValue:recentCall];
    goto LABEL_11;
  }

  if (![recentCall destinationIdIsPhoneNumber])
  {
    v7 = [TUHandle normalizedGenericHandleForValue:recentCall];
LABEL_11:
    v5 = v7;
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  isoCountryCode = [itemCopy isoCountryCode];
  v5 = [TUHandle normalizedPhoneNumberHandleForValue:recentCall isoCountryCode:isoCountryCode];

  if (v5)
  {
LABEL_12:
    firstObject = [[TUMetadataDestinationID alloc] initWithHandle:v5];
    goto LABEL_13;
  }

LABEL_9:
  v8 = 0;
LABEL_14:

LABEL_15:

  return v8;
}

- (void)updateMetadataForCall:(id)call completion:(id)completion
{
  completionCopy = completion;
  v6 = [TUMetadataDestinationID metadataDestinationIDForCall:call];
  if (v6)
  {
    [(TUMetadataClientController *)self updateMetadataForDestinationID:v6 completion:completionCopy];
  }
}

- (void)updateMetadataForRecentCalls:(id)calls completion:(id)completion
{
  completionCopy = completion;
  v6 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:calls];
  if ([v6 count])
  {
    metadataCache = [(TUMetadataClientController *)self metadataCache];
    [metadataCache updateCacheWithDestinationIDs:v6 completion:completionCopy];
  }
}

- (void)updateMetadataForDestinationID:(id)d completion:(id)completion
{
  v11[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dCopy = d;
  metadataCache = [(TUMetadataClientController *)self metadataCache];
  v11[0] = dCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [metadataCache updateCacheForEmptyDataProvidersWithDestinationIDs:v9 completion:completionCopy];
  v10 = *MEMORY[0x1E69E9840];
}

@end