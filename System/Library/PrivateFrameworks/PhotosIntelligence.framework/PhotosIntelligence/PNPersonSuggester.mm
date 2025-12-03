@interface PNPersonSuggester
+ (BOOL)_isMePersonWithLocalIdentifier:(id)identifier inPhotoLibrary:(id)library error:(id *)error;
+ (id)_logger;
+ (id)_meContactIdentifierWithError:(id *)error;
+ (id)fetchAutonamingSuggestionForPerson:(id)person checkIsMe:(BOOL)me withError:(id *)error;
+ (void)_logIntelligencePlatformUserFeedback:(int64_t)feedback forSuggestion:(id)suggestion;
+ (void)logUserFeedback:(int64_t)feedback forSuggestion:(id)suggestion;
@end

@implementation PNPersonSuggester

+ (void)_logIntelligencePlatformUserFeedback:(int64_t)feedback forSuggestion:(id)suggestion
{
  v19 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  _logger = [self _logger];
  clientService = [getGDViewServiceClass() clientService];
  v9 = getGDAutonamingViewPhotosAutonamingViewName();
  v16 = 0;
  v10 = [clientService autonamingViewWithViewName:v9 error:&v16];
  v11 = v16;

  if (v10)
  {
    personLocalIdentifier = [suggestionCopy personLocalIdentifier];
    v13 = [v10 personForIdentifier:personLocalIdentifier];

    if (v13)
    {
      if (feedback == 1)
      {
        personLocalIdentifier2 = [suggestionCopy personLocalIdentifier];
        [v10 rejectWithIdentifier:personLocalIdentifier2 person:v13 confirmationType:1];
      }

      else
      {
        if (feedback)
        {
LABEL_12:

          goto LABEL_13;
        }

        personLocalIdentifier2 = [suggestionCopy personLocalIdentifier];
        [v10 confirmWithIdentifier:personLocalIdentifier2 person:v13 confirmationType:1];
      }
    }

    else
    {
      personLocalIdentifier2 = _logger;
      if (os_log_type_enabled(personLocalIdentifier2, OS_LOG_TYPE_ERROR))
      {
        personLocalIdentifier3 = [suggestionCopy personLocalIdentifier];
        *buf = 138543362;
        v18 = personLocalIdentifier3;
        _os_log_error_impl(&dword_1C6F5C000, personLocalIdentifier2, OS_LOG_TYPE_ERROR, "Failed to get graph person view for logging user action on suggestion for person %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(_logger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v18 = v11;
    _os_log_error_impl(&dword_1C6F5C000, _logger, OS_LOG_TYPE_ERROR, "Failed to get autonaming view with error %@", buf, 0xCu);
  }

LABEL_13:
}

+ (void)logUserFeedback:(int64_t)feedback forSuggestion:(id)suggestion
{
  v12 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  _logger = [self _logger];
  if (os_log_type_enabled(_logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    feedbackCopy = feedback;
    v10 = 2114;
    v11 = suggestionCopy;
    _os_log_impl(&dword_1C6F5C000, _logger, OS_LOG_TYPE_DEFAULT, "Logging feedback %ld for suggestion %{public}@", &v8, 0x16u);
  }

  if ([suggestionCopy suggestionSource] == 1)
  {
    [self _logIntelligencePlatformUserFeedback:feedback forSuggestion:suggestionCopy];
  }
}

+ (id)_meContactIdentifierWithError:(id *)error
{
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedContactStore];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1015;
  v22 = __Block_byref_object_dispose__1016;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1015;
  v16 = __Block_byref_object_dispose__1016;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PNPersonSuggester__meContactIdentifierWithError___block_invoke;
  v8[3] = &unk_1E82A1FF8;
  v5 = mEMORY[0x1E69789A8];
  v9 = v5;
  v10 = &v18;
  v11 = &v12;
  [v5 requestAccessForEntityType:0 completionHandler:v8];
  if (error)
  {
    *error = v13[5];
  }

  v6 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

void __51__PNPersonSuggester__meContactIdentifierWithError___block_invoke(void *a1, int a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2)
  {
    v7 = a1[4];
    v17[0] = *MEMORY[0x1E695C258];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16 = 0;
    v9 = [v7 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [v9 identifier];
      v12 = *(a1[5] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      v14 = *(a1[6] + 8);
      v15 = v10;
      v13 = *(v14 + 40);
      *(v14 + 40) = v15;
    }

    goto LABEL_8;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), a3);
LABEL_9:
}

+ (BOOL)_isMePersonWithLocalIdentifier:(id)identifier inPhotoLibrary:(id)library error:(id *)error
{
  identifierCopy = identifier;
  v8 = [library suggestedMePersonIdentifierWithError:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isEqualToString:identifierCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fetchAutonamingSuggestionForPerson:(id)person checkIsMe:(BOOL)me withError:(id *)error
{
  meCopy = me;
  personCopy = person;
  _logger = [self _logger];
  v10 = os_signpost_id_generate(_logger);
  v11 = _logger;
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "fetchAutonamingSuggestionForPerson", "", buf, 2u);
  }

  spid = v10;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!meCopy)
  {
    goto LABEL_10;
  }

  localIdentifier = [personCopy localIdentifier];
  photoLibrary = [personCopy photoLibrary];
  v37 = 0;
  v17 = [self _isMePersonWithLocalIdentifier:localIdentifier inPhotoLibrary:photoLibrary error:&v37];
  v18 = v37;

  if (v18)
  {
    [v14 addObject:v18];
  }

  if (!v17)
  {
LABEL_10:
    clientService = [getGDViewServiceClass() clientService];
    v23 = getGDAutonamingViewPhotosAutonamingViewName();
    v35 = 0;
    v19 = [clientService autonamingViewWithViewName:v23 error:&v35];
    v21 = v35;

    if (v19)
    {
      localIdentifier2 = [personCopy localIdentifier];
      v25 = [v19 personForIdentifier:localIdentifier2];

      if (v25)
      {
        localIdentifier3 = [personCopy localIdentifier];
        v27 = [PNPersonSuggestion suggestionWithPersonLocalIdentifier:localIdentifier3 personView:v25];

        goto LABEL_18;
      }
    }

    else
    {
      if (v21)
      {
        [v14 addObject:v21];
      }

      else
      {
        v28 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"Autonaming view is nil"];
        [v14 addObject:v28];
      }

      v19 = 0;
    }

    goto LABEL_17;
  }

  v36 = 0;
  v19 = [self _meContactIdentifierWithError:&v36];
  v20 = v36;
  if (v20)
  {
    v21 = v20;
    [v14 addObject:v20];
LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  if (!v19)
  {
    v21 = 0;
    goto LABEL_17;
  }

  localIdentifier4 = [personCopy localIdentifier];
  v27 = [PNPersonSuggestion suggestionWithPersonLocalIdentifier:localIdentifier4 meContactIdentifier:v19];

  v21 = 0;
LABEL_18:

  if (error)
  {
    if ([v14 count] == 1)
    {
      firstObject = [v14 firstObject];
LABEL_23:
      *error = firstObject;
      goto LABEL_24;
    }

    if ([v14 count] >= 2)
    {
      firstObject = [MEMORY[0x1E696ABC0] pn_genericErrorWithMultipleUnderlyingErrors:v14 localizedDescription:@"Multiple errors occured during autonaming suggestion"];
      goto LABEL_23;
    }
  }

LABEL_24:
  v30 = v12;
  v31 = v30;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v31, OS_SIGNPOST_INTERVAL_END, spid, "fetchAutonamingSuggestionForPerson", "", buf, 2u);
  }

  return v27;
}

+ (id)_logger
{
  if (_logger_onceToken != -1)
  {
    dispatch_once(&_logger_onceToken, &__block_literal_global_1024);
  }

  v3 = _logger__log;

  return v3;
}

uint64_t __28__PNPersonSuggester__logger__block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BFF50], "PersonSuggester");
  v2 = _logger__log;
  _logger__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v2, v1);
}

@end