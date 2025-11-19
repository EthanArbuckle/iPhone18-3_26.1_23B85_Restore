@interface VoiceDialDataProvider
- (BOOL)_sequenceNumberIsValid:(int)a3;
- (BOOL)_shouldUseCompositeNamesOnly;
- (BOOL)getValue:(id *)a3 weight:(int64_t *)a4 atIndex:(int64_t)a5 forClassWithIdentifier:(id)a6 inModelWithIdentifier:(id)a7;
- (BOOL)isCacheValidityIdentifierValid:(id)a3;
- (VoiceDialDataProvider)init;
- (id)_facetimeLabels;
- (id)_namesSource;
- (id)_phoneLabels;
- (id)cacheValidityIdentifier;
- (id)phoneticValueAtIndex:(int64_t)a3 forClassWithIdentifier:(id)a4 inModelWithIdentifier:(id)a5;
- (int64_t)_totalPeople;
- (int64_t)valueCountForClassWithIdentifier:(id)a3 inModelWithIdentifier:(id)a4;
- (void)_addressBook;
- (void)_handleAddressBookChanged;
- (void)_voiceDialRecordAtIndex:(int64_t)a3;
- (void)beginReportingChanges;
- (void)dealloc;
- (void)getLabels:(id *)a3 andWeightedLabels:(id *)a4 ForABProperty:(int)a5;
- (void)stopReportingChanges;
@end

@implementation VoiceDialDataProvider

- (VoiceDialDataProvider)init
{
  v9.receiver = self;
  v9.super_class = VoiceDialDataProvider;
  v2 = [(VoiceDialDataProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, 2u, 0);

    v5 = dispatch_queue_create("com.apple.mobilephone.VoiceDialDataProvider", v4);
    v6 = *(v2 + 14);
    *(v2 + 14) = v5;

    *(v2 + 9) = -1;
    *(v2 + 56) = xmmword_295FE1AE0;
    if (MGGetBoolAnswer())
    {
      v2[104] |= 4u;
    }

    v7 = [MEMORY[0x29EDC1128] sharedInstance];
    [v7 addListenerID:@"com.apple.voicedial" forService:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDC1128] sharedInstance];
  [v3 removeListenerID:@"com.apple.voicedial" forService:0];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    ABAddressBookUnregisterExternalChangeCallback(addressBook, _VoiceDialAddressBookChangedCallBack, self);
    CFRelease(self->_addressBook);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  }

  people = self->_people;
  if (people)
  {
    CFRelease(people);
  }

  lastDatabaseUUID = self->_lastDatabaseUUID;
  if (lastDatabaseUUID)
  {
    CFRelease(lastDatabaseUUID);
  }

  v8.receiver = self;
  v8.super_class = VoiceDialDataProvider;
  [(VoiceDialDataProvider *)&v8 dealloc];
}

- (void)_addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    error = 0;
    v4 = ABAddressBookCreateWithOptions(0, &error);
    self->_addressBook = v4;
    if (!v4)
    {
      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(VoiceDialResultHandler *)&error _addressBook];
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    return self->_addressBook;
  }

  return result;
}

- (id)_namesSource
{
  namesSource = self->_namesSource;
  if (!namesSource)
  {
    v4 = VSPreferencesCopySpokenLanguageIdentifier();
    v5 = [VoiceDialNameDataSource nameDataSourceForLanguageIdentifier:v4];
    v6 = self->_namesSource;
    self->_namesSource = v5;

    [(VoiceDialNameDataSource *)self->_namesSource setUseCompositeNamesOnly:[(VoiceDialDataProvider *)self _shouldUseCompositeNamesOnly]];
    namesSource = self->_namesSource;
  }

  return namesSource;
}

- (void)getLabels:(id *)a3 andWeightedLabels:(id *)a4 ForABProperty:(int)a5
{
  v69 = *MEMORY[0x29EDCA608];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy_;
  v59 = __Block_byref_object_dispose_;
  v60 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy_;
  v53[4] = __Block_byref_object_dispose_;
  v54 = 0;
  if (!a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v6 = 0;
    goto LABEL_72;
  }

  v6 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v7 = [(VoiceDialDataProvider *)self _addressBook];
  v8 = [(VoiceDialDataProvider *)self serialQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __67__VoiceDialDataProvider_getLabels_andWeightedLabels_ForABProperty___block_invoke;
  block[3] = &unk_29EDEC150;
  block[4] = v53;
  block[5] = &v55;
  block[6] = &v61;
  block[7] = v7;
  dispatch_sync(v8, block);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v62[5];
  v10 = 0;
  v11 = 0;
  v12 = [v9 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = *v49;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v49 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v48 + 1) + 8 * i);
      v16 = v56[5];
      if (v16)
      {
        v17 = [v16 objectForKey:*(*(&v48 + 1) + 8 * i)];

        if (v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v18 = v15;
      if (v18)
      {
        v17 = v18;
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x29EDB8E20]);
        }

        [v11 addObject:v17];
LABEL_15:
        [v6 addObject:v17];
        v10 = v17;
        continue;
      }

      v10 = 0;
    }

    v12 = [v9 countByEnumeratingWithState:&v48 objects:v68 count:16];
  }

  while (v12);
LABEL_19:

  v19 = v56[5];
  if (!v19)
  {

    v20 = *MEMORY[0x29EDBE240];
    goto LABEL_24;
  }

  v20 = *MEMORY[0x29EDBE240];
  v21 = [v19 objectForKey:*MEMORY[0x29EDBE240]];

  if (v21)
  {
LABEL_28:
    [v6 addObject:v21];
  }

  else
  {
LABEL_24:
    v20 = v20;
    if (v20)
    {
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      }

      [v11 addObject:v20];
      v21 = v20;
      goto LABEL_28;
    }

    v21 = 0;
  }

  v26 = v56[5];
  if (!v26)
  {

    v27 = *MEMORY[0x29EDBE248];
    goto LABEL_34;
  }

  v27 = *MEMORY[0x29EDBE248];
  v28 = [v26 objectForKey:*MEMORY[0x29EDBE248]];

  if (v28)
  {
LABEL_38:
    [v6 addObject:v28];
  }

  else
  {
LABEL_34:
    v28 = v27;
    if (v28)
    {
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      }

      [v11 addObject:v28];
      goto LABEL_38;
    }
  }

  v29 = v56[5];
  if (!v29)
  {

    v30 = *MEMORY[0x29EDBE1C8];
    goto LABEL_43;
  }

  v30 = *MEMORY[0x29EDBE1C8];
  v31 = [v29 objectForKey:*MEMORY[0x29EDBE1C8]];

  if (v31)
  {
LABEL_47:
    [v6 addObject:v31];
  }

  else
  {
LABEL_43:
    v31 = v30;
    if (v31)
    {
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      }

      [v11 addObject:v31];
      goto LABEL_47;
    }
  }

  v32 = v56[5];
  if (!v32)
  {

    v33 = *MEMORY[0x29EDBE258];
    goto LABEL_52;
  }

  v33 = *MEMORY[0x29EDBE258];
  v24 = [v32 objectForKey:*MEMORY[0x29EDBE258]];

  if (v24)
  {
LABEL_56:
    [v6 addObject:v24];
  }

  else
  {
LABEL_52:
    v24 = v33;
    if (v24)
    {
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      }

      [v11 addObject:v24];
      goto LABEL_56;
    }
  }

  [v11 removeObject:v20];
  v34 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v25 = VSRecognitionModelCopyLanguageResourceURL();

  if (v25 && (v35 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfURL:v25]) != 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v35;
    v23 = 0;
    v36 = [v22 countByEnumeratingWithState:&v44 objects:v67 count:16];
    if (v36)
    {
      v37 = *v45;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v22);
          }

          v39 = [v22 objectForKey:*(*(&v44 + 1) + 8 * j)];

          v23 = v39;
          if (v39)
          {
            [v6 addObjectsFromArray:v39];
          }
        }

        v36 = [v22 countByEnumeratingWithState:&v44 objects:v67 count:16];
      }

      while (v36);
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *a3 = [v6 allObjects];
  if (a4)
  {
    v40 = v11;
    *a4 = v11;
  }

LABEL_72:
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  v41 = *MEMORY[0x29EDCA608];
}

void __67__VoiceDialDataProvider_getLabels_andWeightedLabels_ForABProperty___block_invoke(void *a1)
{
  v2 = MEMORY[0x29C2553B0]();
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = ABAddressBookCopyLocalizedStringsForLanguageArray();
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1[5] + 8) + 40), v8);
  if (v6)
  {
  }

  v9 = a1[7];
  if (v9)
  {
    v10 = *MEMORY[0x29EDBE250];
    v11 = a1[7];
    v12 = ABAddressBookCopyAllLabelsForProperty();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  objc_storeStrong((*(a1[6] + 8) + 40), v12);
  if (v9)
  {
  }
}

- (id)_phoneLabels
{
  phoneLabels = self->_phoneLabels;
  if (!phoneLabels)
  {
    v10 = 0;
    v11 = 0;
    [(VoiceDialDataProvider *)self getLabels:&v11 andWeightedLabels:&v10 ForABProperty:*MEMORY[0x29EDBE250]];
    v4 = v11;
    v5 = v10;
    v6 = self->_phoneLabels;
    self->_phoneLabels = v4;
    v7 = v4;

    weightedPhoneLabels = self->_weightedPhoneLabels;
    self->_weightedPhoneLabels = v5;

    phoneLabels = self->_phoneLabels;
  }

  return phoneLabels;
}

- (id)_facetimeLabels
{
  facetimeLabels = self->_facetimeLabels;
  if (facetimeLabels)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    [(VoiceDialDataProvider *)self getLabels:&v17 andWeightedLabels:&v16 ForABProperty:*MEMORY[0x29EDBE250]];
    v5 = v17;
    v7 = v16;
    v14 = 0;
    v15 = 0;
    [(VoiceDialDataProvider *)self getLabels:&v15 andWeightedLabels:&v14 ForABProperty:*MEMORY[0x29EDBE1D0]];
    v6 = v15;
    v8 = v14;
    v3 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithArray:v5];
    [v3 addObjectsFromArray:v6];
    v4 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithSet:v7];
    [v4 unionSet:v8];
    v10 = [v3 allObjects];
    v11 = self->_facetimeLabels;
    self->_facetimeLabels = v10;

    objc_storeStrong(&self->_weightedFacetimeLabels, v4);
    facetimeLabels = self->_facetimeLabels;
  }

  v12 = facetimeLabels;

  return facetimeLabels;
}

- (int64_t)_totalPeople
{
  result = self->_totalPeople;
  if (result == -1)
  {
    v4 = [(VoiceDialDataProvider *)self _addressBook];
    v5 = [(VoiceDialDataProvider *)self serialQueue];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __37__VoiceDialDataProvider__totalPeople__block_invoke;
    v6[3] = &unk_29EDEC178;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(v5, v6);

    return self->_totalPeople;
  }

  return result;
}

const void *__37__VoiceDialDataProvider__totalPeople__block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = ABAddressBookGetPersonCount(result);
    *(*(a1 + 32) + 72) = result;
  }

  return result;
}

- (void)_voiceDialRecordAtIndex:(int64_t)a3
{
  v5 = [(VoiceDialDataProvider *)self _totalPeople];
  v6 = v5 - a3;
  if (v5 <= a3)
  {
    return 0;
  }

  v7 = [(VoiceDialDataProvider *)self _addressBook];
  result = self->_people;
  if (result)
  {
    location = self->_peopleRange.location;
    if (location == -1 || location <= a3 && self->_peopleRange.length + location > a3)
    {
      return CFArrayGetValueAtIndex(result, a3 - self->_peopleRange.location);
    }

    CFRelease(result);
    self->_people = 0;
    if (!v7)
    {
      v17 = 50;
      if (v6 < 50)
      {
        v17 = v6;
      }

      self->_peopleRange.length = v17;
      p_length = &self->_peopleRange.length;
      self->_peopleRange.location = a3;
      goto LABEL_22;
    }

    v10 = [(VoiceDialDataProvider *)self serialQueue];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __49__VoiceDialDataProvider__voiceDialRecordAtIndex___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v7;
    dispatch_sync(v10, block);

    result = self->_people;
    if (result)
    {
      return CFArrayGetValueAtIndex(result, a3 - self->_peopleRange.location);
    }

    v11 = 50;
    if (v6 < 50)
    {
      v11 = v6;
    }

    self->_peopleRange.length = v11;
    p_length = &self->_peopleRange.length;
    self->_peopleRange.location = a3;
  }

  else
  {
    v13 = 50;
    if (v6 < 50)
    {
      v13 = v6;
    }

    self->_peopleRange.length = v13;
    p_length = &self->_peopleRange.length;
    self->_peopleRange.location = a3;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  v14 = [(VoiceDialDataProvider *)self serialQueue];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __49__VoiceDialDataProvider__voiceDialRecordAtIndex___block_invoke_2;
  v18[3] = &unk_29EDEC178;
  v18[4] = self;
  v18[5] = v7;
  dispatch_sync(v14, v18);

  people = self->_people;
  if (!people)
  {
LABEL_22:
    *p_length = 0;
LABEL_23:
    result = 0;
    self->_people = 0;
    return result;
  }

  Count = CFArrayGetCount(people);
  self->_peopleRange.length = Count;
  result = self->_people;
  if (!Count)
  {
    if (result)
    {
      CFRelease(result);
    }

    goto LABEL_23;
  }

  if (result)
  {
    return CFArrayGetValueAtIndex(result, a3 - self->_peopleRange.location);
  }

  return result;
}

uint64_t __49__VoiceDialDataProvider__voiceDialRecordAtIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  result = ABCopyArrayOfPeopleAtOffset();
  *(*(a1 + 32) + 16) = result;
  return result;
}

- (int64_t)valueCountForClassWithIdentifier:(id)a3 inModelWithIdentifier:(id)a4
{
  if ([a3 isEqualToString:{@"label", a4}])
  {
    if ((*&self->_voiceDialProviderFlags & 4) != 0)
    {
      [(VoiceDialDataProvider *)self _facetimeLabels];
    }

    else
    {
      [(VoiceDialDataProvider *)self _phoneLabels];
    }
    v6 = ;
    v7 = [v6 count];
  }

  else
  {
    v5 = [(VoiceDialDataProvider *)self _totalPeople];
    v6 = [(VoiceDialDataProvider *)self _namesSource];
    v7 = [v6 personNameCount] * v5;
  }

  return v7;
}

- (BOOL)getValue:(id *)a3 weight:(int64_t *)a4 atIndex:(int64_t)a5 forClassWithIdentifier:(id)a6 inModelWithIdentifier:(id)a7
{
  if (![a6 isEqualToString:@"label"])
  {
    v11 = [(VoiceDialDataProvider *)self _namesSource];
    v12 = [v11 personNameCount];
    v13 = [(VoiceDialDataProvider *)self _voiceDialRecordAtIndex:a5 / v12];
    if (v13)
    {
      v21 = 0;
      [v11 getName:&v21 phoneticName:0 atIndex:a5 % v12 forPerson:v13];
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    v17 = 0;
    v18 = 0;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((*&self->_voiceDialProviderFlags & 4) != 0)
  {
    [(VoiceDialDataProvider *)self _facetimeLabels];
  }

  else
  {
    [(VoiceDialDataProvider *)self _phoneLabels];
  }
  v15 = ;
  v16 = 48;
  if ((*&self->_voiceDialProviderFlags & 4) == 0)
  {
    v16 = 40;
  }

  v17 = *(&self->super.isa + v16);
  if (v15 && [v15 count] > a5)
  {
    v14 = [v15 objectAtIndex:a5];
    v11 = 0;
    if ([v17 containsObject:v14])
    {
      v18 = -15;
    }

    else
    {
      v18 = 0;
    }

    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = 0;
  v18 = 0;
  v11 = 0;
  if (a3)
  {
LABEL_20:
    v19 = v14;
    *a3 = v14;
  }

LABEL_21:
  if (a4)
  {
    *a4 = v18;
  }

  return v14 != 0;
}

- (id)phoneticValueAtIndex:(int64_t)a3 forClassWithIdentifier:(id)a4 inModelWithIdentifier:(id)a5
{
  if ([a4 isEqualToString:@"name"])
  {
    v7 = [(VoiceDialDataProvider *)self _namesSource];
    v8 = [v7 personNameCount];
    v9 = [(VoiceDialDataProvider *)self _voiceDialRecordAtIndex:a3 / v8];
    if (v9)
    {
      v12 = 0;
      [v7 getName:0 phoneticName:&v12 atIndex:a3 % v8 forPerson:v9];
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  return v10;
}

- (BOOL)_shouldUseCompositeNamesOnly
{
  voiceDialProviderFlags = self->_voiceDialProviderFlags;
  if ((voiceDialProviderFlags & 1) == 0)
  {
    CFPreferencesAppSynchronize(@"com.apple.voicedial");
    if (CFPreferencesGetAppBooleanValue(@"CompositeNameOnly", @"com.apple.voicedial", 0))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    voiceDialProviderFlags = v4 | *&self->_voiceDialProviderFlags & 0xFC;
    *&self->_voiceDialProviderFlags = voiceDialProviderFlags;
  }

  return (voiceDialProviderFlags >> 1) & 1;
}

- (id)cacheValidityIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v3 = [(VoiceDialDataProvider *)self _addressBook];
  v4 = [(VoiceDialDataProvider *)self serialQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __48__VoiceDialDataProvider_cacheValidityIdentifier__block_invoke;
  block[3] = &unk_29EDEC1C0;
  block[4] = self;
  block[5] = &v8;
  block[6] = v3;
  dispatch_sync(v4, block);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __48__VoiceDialDataProvider_cacheValidityIdentifier__block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = ABAddressBookCopyUniqueIdentifier();
    v3 = *(a1 + 48);
    SequenceNumber = ABAddressBookGetSequenceNumber();
    CompositeNameFormatForRecord = ABPersonGetCompositeNameFormatForRecord(0);
    if (v2)
    {
      v6 = CompositeNameFormatForRecord;
      v12 = [objc_alloc(MEMORY[0x29EDBA070]) initWithInt:SequenceNumber];
      v7 = [objc_alloc(MEMORY[0x29EDBA070]) initWithUnsignedInt:v6];
      v8 = [objc_alloc(MEMORY[0x29EDBA070]) initWithBool:{objc_msgSend(*(a1 + 32), "_shouldUseCompositeNamesOnly")}];
      v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{v2, @"dbid", v12, @"seq", v7, @"name-order", v8, @"comp-only", 0}];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      CFRelease(v2);
    }
  }
}

- (BOOL)_sequenceNumberIsValid:(int)a3
{
  if (![(VoiceDialDataProvider *)self _addressBook])
  {
    return 1;
  }

  v3 = ABAddressBookCopyChangesSinceSequenceNumber();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if (CFDictionaryGetValue(v3, *MEMORY[0x29EDBE1B8]) || MGGetBoolAnswer() && CFDictionaryGetValue(v4, *MEMORY[0x29EDBE1C0]))
  {
    v5 = 0;
  }

  else if (MGGetBoolAnswer())
  {
    v5 = CFDictionaryGetValue(v4, *MEMORY[0x29EDBE1B0]) == 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  return v5;
}

- (BOOL)isCacheValidityIdentifierValid:(id)a3
{
  v4 = a3;
  v5 = v4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v22 = 0;
  if (v4)
  {
    v6 = [v4 objectForKey:@"dbid"];
    if (v6)
    {
      v7 = [(VoiceDialDataProvider *)self _addressBook];
      v8 = [(VoiceDialDataProvider *)self serialQueue];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __56__VoiceDialDataProvider_isCacheValidityIdentifierValid___block_invoke;
      block[3] = &unk_29EDEC1E8;
      v19 = v7;
      v20 = v6;
      v14 = v25;
      v15 = v23;
      v12 = v5;
      v13 = self;
      v16 = v26;
      v17 = v21;
      v18 = &v28;
      dispatch_sync(v8, block);
    }
  }

  v9 = *(v29 + 24);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  return v9;
}

void __56__VoiceDialDataProvider_isCacheValidityIdentifierValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v2 = ABAddressBookCopyUniqueIdentifier();
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v3)
  {
    if (CFStringCompare(v3, *(a1 + 96), 0) == kCFCompareEqualTo)
    {
      v5 = [*(a1 + 32) objectForKey:@"seq"];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(*(*(a1 + 56) + 8) + 40);
      if (v8)
      {
        *(*(*(a1 + 64) + 8) + 24) = [v8 intValue];
        v9 = *(*(*(a1 + 64) + 8) + 24);
        v10 = *(a1 + 88);
        if (v9 == ABAddressBookGetSequenceNumber() || [*(a1 + 40) _sequenceNumberIsValid:*(*(*(a1 + 64) + 8) + 24)])
        {
          v11 = [*(a1 + 32) objectForKey:@"name-order"];
          v12 = *(*(a1 + 72) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          v14 = *(*(*(a1 + 72) + 8) + 40);
          if (v14)
          {
            v15 = [v14 unsignedIntValue];
            if (v15 == ABPersonGetCompositeNameFormatForRecord(0))
            {
              v16 = [*(a1 + 40) _shouldUseCompositeNamesOnly];
              v17 = [*(a1 + 32) objectForKey:@"comp-only"];
              *(*(*(a1 + 80) + 8) + 24) = v16 ^ [v17 BOOLValue] ^ 1;
            }
          }
        }
      }
    }

    v4 = *(*(*(a1 + 48) + 8) + 24);

    CFRelease(v4);
  }
}

- (void)beginReportingChanges
{
  v3 = [(VoiceDialDataProvider *)self _addressBook];
  v4 = [(VoiceDialDataProvider *)self serialQueue];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __46__VoiceDialDataProvider_beginReportingChanges__block_invoke;
  v5[3] = &unk_29EDEC178;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

void __46__VoiceDialDataProvider_beginReportingChanges__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    SequenceNumber = ABAddressBookGetSequenceNumber();
    v3 = *(a1 + 40);
    *(*(a1 + 32) + 88) = SequenceNumber;
    *(*(a1 + 32) + 96) = ABAddressBookCopyUniqueIdentifier();
    ABAddressBookRegisterExternalChangeCallback(*(a1 + 40), _VoiceDialAddressBookChangedCallBack, *(a1 + 32));
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _VoiceDialAddressBookPrefsChangedCallBack, @"com.apple.AddressBook.PreferenceChanged", 0, CFNotificationSuspensionBehaviorDrop);
  v5 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _VoiceDialPreferencesChangedCallBack, @"com.apple.voicedial.prefschanged", 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)stopReportingChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(VoiceDialDataProvider *)self _addressBook];
  v5 = [(VoiceDialDataProvider *)self serialQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __45__VoiceDialDataProvider_stopReportingChanges__block_invoke;
  block[3] = &unk_29EDEC210;
  block[4] = self;
  block[5] = v4;
  block[6] = DarwinNotifyCenter;
  dispatch_async(v5, block);
}

void __45__VoiceDialDataProvider_stopReportingChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    ABAddressBookUnregisterExternalChangeCallback(v2, _VoiceDialAddressBookChangedCallBack, *(a1 + 32));
  }

  v3 = *(a1 + 32);
  v4 = v3[12];
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 96) = 0;
    v3 = *(a1 + 32);
  }

  CFNotificationCenterRemoveObserver(*(a1 + 48), v3, @"com.apple.AddressBook.PreferenceChanged", 0);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);

  CFNotificationCenterRemoveObserver(v5, v6, @"com.apple.voicedial.prefschanged", 0);
}

- (void)_handleAddressBookChanged
{
  v3 = [(VoiceDialDataProvider *)self _addressBook];
  v4 = [(VoiceDialDataProvider *)self serialQueue];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __50__VoiceDialDataProvider__handleAddressBookChanged__block_invoke;
  v5[3] = &unk_29EDEC178;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(v4, v5);
}

void __50__VoiceDialDataProvider__handleAddressBookChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return;
  }

  v3 = *(*(a1 + 32) + 88);
  ABAddressBookRevert(v2);
  v4 = *(a1 + 40);
  v5 = ABAddressBookCopyUniqueIdentifier();
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  if (v5 != v8)
  {
    if (v5)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_9;
    }

    if (CFStringCompare(v5, v8, 0))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 96);
LABEL_9:
      if (v8)
      {
        CFRelease(v8);
        v7 = *(a1 + 32);
      }

      *(v7 + 96) = v6;
      v10 = *(*(a1 + 32) + 96);
      if (v10)
      {
        CFRetain(v10);
      }

      v11 = *(a1 + 40);
      *(*(a1 + 32) + 88) = ABAddressBookGetSequenceNumber();
      goto LABEL_14;
    }
  }

  v12 = *(a1 + 40);
  *(*(a1 + 32) + 88) = ABAddressBookGetSequenceNumber();
  v13 = *(a1 + 32);
  if (v13[22] != v3 && ([v13 _sequenceNumberIsValid:v3] & 1) == 0)
  {
LABEL_14:
    VSRecognitionModelDataProviderChanged();
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

@end