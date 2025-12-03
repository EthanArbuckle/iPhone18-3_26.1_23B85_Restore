@interface PXPhotoKitPersonSuggestion
+ (id)personSuggestionWithPerson:(id)person;
+ (id)personSuggestionWithPerson:(id)person keyFaceFetchResult:(id)result;
+ (id)personSuggestionWithPerson:(id)person keyFaceFetchResult:(id)result keyAssetFetchResult:(id)fetchResult;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesRecipientInRecipients:(id)recipients;
- (NSString)description;
- (PXPhotoKitPersonSuggestion)init;
- (PXPhotoKitPersonSuggestion)initWithPerson:(id)person keyFaceFetchResult:(id)result keyAssetFetchResult:(id)fetchResult;
- (id)_linkedContactForPerson:(id)person;
- (id)personSuggestionUpdatedKeyAssetFetchResult:(id)result;
- (id)personSuggestionUpdatedKeyFaceFetchResult:(id)result;
- (id)personSuggestionUpdatedPerson:(id)person;
- (unint64_t)hash;
- (void)_fetchQueue_fetchLinkedContactForPerson:(id)person;
- (void)_prefetchLinkedContactInBackgroundForPerson:(id)person;
- (void)fetchContactAndBestTransport:(id)transport;
- (void)setPrefetchedContact:(id)contact;
@end

@implementation PXPhotoKitPersonSuggestion

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PXPhotoKitPersonSuggestion;
  v3 = [(PXPhotoKitPersonSuggestion *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" localized name: %@ person: %@, key face: %@, key asset: %@>", self->_localizedName, self->_person, self->_keyFaceFetchResult, self->_keyAssetFetchResult];

  return v4;
}

- (unint64_t)hash
{
  person = [(PXPhotoKitPersonSuggestion *)self person];
  v3 = [person hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    person = [(PXPhotoKitPersonSuggestion *)self person];
    person2 = [v5 person];

    v8 = [person isEqual:person2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_prefetchLinkedContactInBackgroundForPerson:(id)person
{
  personCopy = person;
  v5 = _ContactFetchQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PXPhotoKitPersonSuggestion__prefetchLinkedContactInBackgroundForPerson___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = personCopy;
  v6 = personCopy;
  dispatch_async(v5, v7);
}

- (void)_fetchQueue_fetchLinkedContactForPerson:(id)person
{
  personCopy = person;
  v4 = _ContactFetchQueue();
  dispatch_assert_queue_V2(v4);

  fetchQueue_prefetchedContact = self->_fetchQueue_prefetchedContact;
  if (self->_fetchQueue_checkedForLinkedContact)
  {
    if (!fetchQueue_prefetchedContact)
    {
      goto LABEL_9;
    }

    self->_fetchQueue_checkedForLinkedContact = 1;
    goto LABEL_5;
  }

  self->_fetchQueue_checkedForLinkedContact = 1;
  if (fetchQueue_prefetchedContact)
  {
LABEL_5:
    v6 = fetchQueue_prefetchedContact;
    goto LABEL_7;
  }

  v6 = [(PXPhotoKitPersonSuggestion *)self _linkedContactForPerson:personCopy];
LABEL_7:
  fetchQueue_linkedContact = self->_fetchQueue_linkedContact;
  self->_fetchQueue_linkedContact = v6;

  if (self->_fetchQueue_linkedContact)
  {
    v8 = [PXRecipientTransportUtilities px_bestMessagingTransportForContact:?];
    fetchQueue_bestTransport = self->_fetchQueue_bestTransport;
    self->_fetchQueue_bestTransport = v8;
  }

LABEL_9:
}

- (id)_linkedContactForPerson:(id)person
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C330];
  v10 = *MEMORY[0x1E695C208];
  v11 = v3;
  v4 = MEMORY[0x1E695D148];
  personCopy = person;
  descriptorForRequiredKeys = [v4 descriptorForRequiredKeys];
  v12 = descriptorForRequiredKeys;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];

  v8 = [personCopy linkedContactWithKeysToFetch:v7];

  return v8;
}

- (BOOL)matchesRecipientInRecipients:(id)recipients
{
  v20 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  person = [(PXPhotoKitPersonSuggestion *)self person];
  px_localizedName = [person px_localizedName];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = recipientsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        contact = [*(*(&v15 + 1) + 8 * i) contact];
        v12 = [MEMORY[0x1E6978980] px_localizedNameFromContact:contact];
        v13 = [px_localizedName isEqualToString:v12];

        if (v13)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)fetchContactAndBestTransport:(id)transport
{
  transportCopy = transport;
  if (!transportCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonSuggestion.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__98987;
  v24 = __Block_byref_object_dispose__98988;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__98987;
  v18 = __Block_byref_object_dispose__98988;
  v19 = 0;
  person = [(PXPhotoKitPersonSuggestion *)self person];
  v7 = _ContactFetchQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXPhotoKitPersonSuggestion_fetchContactAndBestTransport___block_invoke;
  block[3] = &unk_1E773AD98;
  block[4] = self;
  v8 = person;
  v11 = v8;
  v12 = &v20;
  v13 = &v14;
  dispatch_sync(v7, block);

  transportCopy[2](transportCopy, v21[5], v15[5]);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __59__PXPhotoKitPersonSuggestion_fetchContactAndBestTransport___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchQueue_fetchLinkedContactForPerson:*(a1 + 40)];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 32);
  v3 = (*(*(a1 + 56) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)setPrefetchedContact:(id)contact
{
  contactCopy = contact;
  v5 = _ContactFetchQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXPhotoKitPersonSuggestion_setPrefetchedContact___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = contactCopy;
  v6 = contactCopy;
  dispatch_sync(v5, v7);
}

- (id)personSuggestionUpdatedPerson:(id)person
{
  personCopy = person;
  v5 = [[PXPhotoKitPersonSuggestion alloc] initWithPerson:personCopy keyFaceFetchResult:self->_keyFaceFetchResult keyAssetFetchResult:self->_keyAssetFetchResult];

  return v5;
}

- (id)personSuggestionUpdatedKeyAssetFetchResult:(id)result
{
  resultCopy = result;
  v5 = [[PXPhotoKitPersonSuggestion alloc] initWithPerson:self->_person keyFaceFetchResult:self->_keyFaceFetchResult keyAssetFetchResult:resultCopy];

  return v5;
}

- (id)personSuggestionUpdatedKeyFaceFetchResult:(id)result
{
  v11[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([resultCopy count])
  {
    v5 = MEMORY[0x1E6978630];
    firstObject = [resultCopy firstObject];
    v11[0] = firstObject;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [v5 fetchAssetsForFaces:v7 options:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[PXPhotoKitPersonSuggestion alloc] initWithPerson:self->_person keyFaceFetchResult:resultCopy keyAssetFetchResult:v8];

  return v9;
}

- (PXPhotoKitPersonSuggestion)initWithPerson:(id)person keyFaceFetchResult:(id)result keyAssetFetchResult:(id)fetchResult
{
  personCopy = person;
  resultCopy = result;
  fetchResultCopy = fetchResult;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonSuggestion.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v20.receiver = self;
  v20.super_class = PXPhotoKitPersonSuggestion;
  v13 = [(PXPhotoKitPersonSuggestion *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_person, person);
    px_localizedName = [personCopy px_localizedName];
    v16 = [px_localizedName copy];
    localizedName = v14->_localizedName;
    v14->_localizedName = v16;

    objc_storeStrong(&v14->_keyFaceFetchResult, result);
    objc_storeStrong(&v14->_keyAssetFetchResult, fetchResult);
    [(PXPhotoKitPersonSuggestion *)v14 _prefetchLinkedContactInBackgroundForPerson:personCopy];
  }

  return v14;
}

- (PXPhotoKitPersonSuggestion)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonSuggestion.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXPhotoKitPersonSuggestion init]"}];

  abort();
}

+ (id)personSuggestionWithPerson:(id)person keyFaceFetchResult:(id)result keyAssetFetchResult:(id)fetchResult
{
  fetchResultCopy = fetchResult;
  resultCopy = result;
  personCopy = person;
  v10 = [[PXPhotoKitPersonSuggestion alloc] initWithPerson:personCopy keyFaceFetchResult:resultCopy keyAssetFetchResult:fetchResultCopy];

  return v10;
}

+ (id)personSuggestionWithPerson:(id)person keyFaceFetchResult:(id)result
{
  v13[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  resultCopy = result;
  if ([resultCopy count])
  {
    v7 = MEMORY[0x1E6978630];
    firstObject = [resultCopy firstObject];
    v13[0] = firstObject;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [v7 fetchAssetsForFaces:v9 options:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:personCopy keyFaceFetchResult:resultCopy keyAssetFetchResult:v10];

  return v11;
}

+ (id)personSuggestionWithPerson:(id)person
{
  v3 = MEMORY[0x1E69787C8];
  personCopy = person;
  v5 = [v3 fetchKeyFaceForPerson:personCopy options:0];
  v6 = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:personCopy keyFaceFetchResult:v5];

  return v6;
}

@end