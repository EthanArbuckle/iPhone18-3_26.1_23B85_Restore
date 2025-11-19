@interface TUMetadataClientController
+ (TUMetadataClientController)sharedInstance;
- (TUMetadataClientController)init;
- (id)_metadataDestinationIdForSearchItem:(id)a3;
- (id)directoryLabelForDestinationID:(id)a3;
- (id)directoryLabelForSearchItem:(id)a3;
- (id)locationForDestinationID:(id)a3;
- (id)locationForSearchItem:(id)a3;
- (id)suggestionForDestinationID:(id)a3;
- (id)suggestionForSearchItem:(id)a3;
- (void)updateMetadataForCall:(id)a3 completion:(id)a4;
- (void)updateMetadataForDestinationID:(id)a3 completion:(id)a4;
- (void)updateMetadataForRecentCalls:(id)a3 completion:(id)a4;
@end

@implementation TUMetadataClientController

+ (TUMetadataClientController)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TUMetadataClientController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)suggestionForDestinationID:(id)a3
{
  v4 = a3;
  v5 = [(TUMetadataClientController *)self metadataCache];
  v6 = [v5 metadataForDestinationID:v4];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)locationForDestinationID:(id)a3
{
  v4 = a3;
  v5 = [(TUMetadataClientController *)self metadataCache];
  v6 = [v5 metadataForDestinationID:v4];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)directoryLabelForDestinationID:(id)a3
{
  v4 = a3;
  v5 = [(TUMetadataClientController *)self metadataCache];
  v6 = [v5 metadataForDestinationID:v4];

  v7 = [v6 metadataForProvider:objc_opt_class()];

  return v7;
}

- (id)suggestionForSearchItem:(id)a3
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:a3];
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

- (id)locationForSearchItem:(id)a3
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:a3];
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

- (id)directoryLabelForSearchItem:(id)a3
{
  v4 = [(TUMetadataClientController *)self _metadataDestinationIdForSearchItem:a3];
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

- (id)_metadataDestinationIdForSearchItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recentCall];
    v5 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v4];
    v6 = [v5 firstObject];
LABEL_13:
    v8 = v6;
    goto LABEL_14;
  }

  v4 = [v3 destinationId];
  if (![v4 length])
  {
    v8 = 0;
    goto LABEL_15;
  }

  if ([v4 destinationIdIsEmailAddress])
  {
    v7 = [TUHandle normalizedEmailAddressHandleForValue:v4];
    goto LABEL_11;
  }

  if (![v4 destinationIdIsPhoneNumber])
  {
    v7 = [TUHandle normalizedGenericHandleForValue:v4];
LABEL_11:
    v5 = v7;
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v9 = [v3 isoCountryCode];
  v5 = [TUHandle normalizedPhoneNumberHandleForValue:v4 isoCountryCode:v9];

  if (v5)
  {
LABEL_12:
    v6 = [[TUMetadataDestinationID alloc] initWithHandle:v5];
    goto LABEL_13;
  }

LABEL_9:
  v8 = 0;
LABEL_14:

LABEL_15:

  return v8;
}

- (void)updateMetadataForCall:(id)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [TUMetadataDestinationID metadataDestinationIDForCall:a3];
  if (v6)
  {
    [(TUMetadataClientController *)self updateMetadataForDestinationID:v6 completion:v7];
  }
}

- (void)updateMetadataForRecentCalls:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:a3];
  if ([v6 count])
  {
    v7 = [(TUMetadataClientController *)self metadataCache];
    [v7 updateCacheWithDestinationIDs:v6 completion:v8];
  }
}

- (void)updateMetadataForDestinationID:(id)a3 completion:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(TUMetadataClientController *)self metadataCache];
  v11[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [v8 updateCacheForEmptyDataProvidersWithDestinationIDs:v9 completion:v6];
  v10 = *MEMORY[0x1E69E9840];
}

@end