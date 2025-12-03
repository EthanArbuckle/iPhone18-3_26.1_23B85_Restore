@interface SPUISDataDetectorResultGenerator
- (id)buildCardSectionForEmail:(id)email;
- (id)buildCardSectionForPhoneNumber:(id)number;
- (id)buildPersonBasedSubtitleButtonItemWithTitle:(id)title person:(id)person;
- (id)buildResultSectionForTrackingNumber:(id)number carrier:(id)carrier url:(id)url queryId:(unint64_t)id;
- (id)buildResultSectionWithCardSections:(id)sections queryId:(unint64_t)id resultBundleId:(id)bundleId sectionTitle:(id)title completion:(id)completion;
- (id)buttonItemWithTitle:(id)title symbol:(id)symbol command:(id)command;
- (id)personWithPhoneNumber:(id)number email:(id)email;
- (void)buildResultSectionsForDateTimeFromResult:(id)result querString:(id)string completion:(id)completion queryId:(unint64_t)id searchString:(id)searchString;
- (void)buildResultSectionsForEmailFromResult:(id)result completion:(id)completion queryId:(unint64_t)id;
- (void)buildResultSectionsForPhoneNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id;
- (void)buildResultSectionsForTrackingNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id;
- (void)cancel;
- (void)getResultSections:(id)sections queryId:(unint64_t)id completion:(id)completion;
@end

@implementation SPUISDataDetectorResultGenerator

void __73__SPUISDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 firstObject];
  v3 = [v5 type];
  if (!v3 || (v4 = *(a1 + 32)) != 0 && (*(v4 + 8) & 1) != 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    __73__SPUISDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke_cold_1(v5, a1, v3, (a1 + 32));
  }
}

- (void)buildResultSectionsForTrackingNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  resultCopy = result;
  subResults = [resultCopy subResults];
  firstObject = [subResults firstObject];
  type = [firstObject type];

  [resultCopy coreResult];
  v13 = DDResultGetShipmentTrackingUrlString();
  v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  value = [resultCopy value];

  v16 = [(SPUISDataDetectorResultGenerator *)self buildResultSectionForTrackingNumber:value carrier:type url:v14 queryId:id];

  v19[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  completionCopy[2](completionCopy, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)buildResultSectionForTrackingNumber:(id)number carrier:(id)carrier url:(id)url queryId:(unint64_t)id
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D4C598];
  urlCopy = url;
  carrierCopy = carrier;
  v33 = [v8 textWithString:number];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277D4C550] punchoutWithURL:urlCopy];

  v30 = v11;
  [v11 setPunchout:v12];

  v13 = objc_opt_new();
  [v13 setSymbolName:@"shippingbox.fill"];
  v31 = v13;
  [v13 setIsTemplate:1];
  v14 = objc_opt_new();
  [v14 setTitle:v33];
  v15 = [MEMORY[0x277D4C598] textWithString:carrierCopy];

  v36[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v14 setDescriptions:v16];

  [v14 setThumbnail:v13];
  [v14 setCommand:v11];
  v17 = objc_opt_new();
  [v17 setRedComponent:0.635294118];
  [v17 setGreenComponent:0.517647059];
  [v17 setBlueComponent:0.368627451];
  [v17 setColorTintStyle:1];
  [v14 setBackgroundColor:v17];
  v35 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v19 = *MEMORY[0x277D65A58];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"QUICK_ACTION_PACKAGE_TRACKING_SECTION_TITLE" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"QUICK_ACTION_PACKAGE_TRACKING_COMPLETION" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v24 = [(SPUISDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v18 queryId:id resultBundleId:v19 sectionTitle:v21 completion:v23];

  punchout = [v30 punchout];
  results = [v24 results];
  firstObject = [results firstObject];
  [firstObject setPunchout:punchout];

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)buildResultSectionsForPhoneNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v32[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v29 = 0;
  v9 = [result getPhoneValue:&v29 label:0];
  v10 = v29;
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v10];
    v12 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v11];
    v13 = objc_opt_new();
    v32[0] = *MEMORY[0x277CBD098];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v15 = [v13 unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:0];
    v16 = [v15 count];

    if (!v10 || v16)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    }

    else
    {
      v27 = [(SPUISDataDetectorResultGenerator *)self buildCardSectionForPhoneNumber:v10];
      v31 = v27;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      v26 = *MEMORY[0x277D65A50];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      idCopy = id;
      [v17 localizedStringForKey:@"QUICK_ACTION_PHONE_NUMBER_SECTION_TITLE" value:&stru_287C50EE8 table:@"SpotlightServices"];
      v19 = v28 = v11;
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"QUICK_ACTION_PHONE_NUMBER_COMPLETION" value:&stru_287C50EE8 table:@"SpotlightServices"];
      v22 = [(SPUISDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v25 queryId:idCopy resultBundleId:v26 sectionTitle:v19 completion:v21];

      v30 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      (completionCopy)[2](completionCopy, v23);

      v11 = v28;
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)buildCardSectionForPhoneNumber:(id)number
{
  v18[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = [(SPUISDataDetectorResultGenerator *)self personWithPhoneNumber:numberCopy email:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ADD_NUMBER" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v8 = [(SPUISDataDetectorResultGenerator *)self buildPersonBasedSubtitleButtonItemWithTitle:v7 person:v5];

  v9 = objc_opt_new();
  [v9 setPerson:v5];
  v10 = TUNetworkCountryCode();
  v11 = TUFormattedPhoneNumber();

  v12 = objc_opt_new();
  v13 = [MEMORY[0x277D4C598] textWithString:v11];
  [v12 setTitle:v13];

  [v12 setSubtitleButtonItem:v8];
  v18[0] = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v12 setTrailingButtonItems:v14];

  v15 = objc_opt_new();
  [v15 setPhoneNumber:numberCopy];

  [v12 setCommand:v15];
  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)buildResultSectionsForEmailFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v30[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v27 = 0;
  v9 = [result getMailValue:&v27 label:0];
  v10 = v27;
  if (v9)
  {
    v11 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v10];
    v12 = objc_opt_new();
    v30[0] = *MEMORY[0x277CBCFC0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v14 = [v12 unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:0];
    v15 = [v14 count];

    if (!v10 || v15)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
    }

    else
    {
      v26 = [(SPUISDataDetectorResultGenerator *)self buildCardSectionForEmail:v10];
      v29 = v26;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v25 = *MEMORY[0x277D65A48];
      idCopy = id;
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"QUICK_ACTION_EMAIL_SECTION_TITLE" value:&stru_287C50EE8 table:@"SpotlightServices"];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"QUICK_ACTION_EMAIL_COMPLETION" value:&stru_287C50EE8 table:@"SpotlightServices"];
      v20 = [(SPUISDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v24 queryId:idCopy resultBundleId:v25 sectionTitle:v17 completion:v19];

      v28 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      (completionCopy)[2](completionCopy, v21);
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)buildCardSectionForEmail:(id)email
{
  v16[1] = *MEMORY[0x277D85DE8];
  emailCopy = email;
  v5 = [(SPUISDataDetectorResultGenerator *)self personWithPhoneNumber:0 email:emailCopy];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ADD_EMAIL" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v8 = [(SPUISDataDetectorResultGenerator *)self buildPersonBasedSubtitleButtonItemWithTitle:v7 person:v5];

  v9 = objc_opt_new();
  [v9 setPerson:v5];
  v10 = objc_opt_new();
  v11 = [MEMORY[0x277D4C598] textWithString:emailCopy];
  [v10 setTitle:v11];

  [v10 setSubtitleButtonItem:v8];
  v16[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v10 setTrailingButtonItems:v12];

  v13 = objc_opt_new();
  [v13 setEmail:emailCopy];

  [v10 setCommand:v13];
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)buildPersonBasedSubtitleButtonItemWithTitle:(id)title person:(id)person
{
  v20[2] = *MEMORY[0x277D85DE8];
  personCopy = person;
  titleCopy = title;
  v8 = objc_opt_new();
  [v8 setAddToExistingContact:0];
  [v8 setPerson:personCopy];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CREATE_NEW_CONTACT" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v11 = [(SPUISDataDetectorResultGenerator *)self buttonItemWithTitle:v10 symbol:@"person.crop.circle" command:v8];

  v12 = objc_opt_new();
  [v12 setAddToExistingContact:1];
  [v12 setPerson:personCopy];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ADD_TO_EXISTING_CONTACT" value:&stru_287C50EE8 table:@"SpotlightServices"];
  v15 = [(SPUISDataDetectorResultGenerator *)self buttonItemWithTitle:v14 symbol:@"person.crop.circle.badge.plus" command:v12];

  v16 = [(SPUISDataDetectorResultGenerator *)self buttonItemWithTitle:titleCopy symbol:0 command:0];

  v20[0] = v11;
  v20[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v16 setPreviewButtonItems:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)personWithPhoneNumber:(id)number email:(id)email
{
  v13[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  emailCopy = email;
  v7 = objc_opt_new();
  if (numberCopy)
  {
    v13[0] = numberCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v7 setPhoneNumbers:v8];
  }

  if (emailCopy)
  {
    v12 = emailCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [v7 setEmailAddresses:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)buildResultSectionsForDateTimeFromResult:(id)result querString:(id)string completion:(id)completion queryId:(unint64_t)id searchString:(id)searchString
{
  v89[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  stringCopy = string;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v85 = 0;
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v15 = [MEMORY[0x277CBEAA8] now];
  type = [resultCopy type];
  v77 = *MEMORY[0x277D04190];
  if ([type isEqualToString:?])
  {

LABEL_4:
    v83 = 0;
    v84 = 0;
    v19 = [resultCopy extractStartDate:&v84 startTimezone:0 endDate:&v83 endTimezone:0 allDayRef:&v85 referenceDate:v15 referenceTimezone:systemTimeZone];
    v20 = v84;
    v21 = v83;
    v22 = v21;
    if ((v19 & 1) == 0)
    {
      completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
      goto LABEL_32;
    }

    v79 = v15;
    v80 = v21;
    v23 = resultCopy;
    v24 = v20;
    idCopy2 = id;
    v25 = completionCopy;
    v26 = systemTimeZone;
    goto LABEL_6;
  }

  type2 = [resultCopy type];
  v18 = [type2 isEqualToString:*MEMORY[0x277D040A0]];

  if (v18)
  {
    goto LABEL_4;
  }

  idCopy2 = id;
  v36 = v15;
  v25 = completionCopy;
  v79 = v36;
  v37 = [resultCopy dateFromReferenceDate:? referenceTimezone:? timezoneRef:? allDayRef:?];
  v80 = 0;
  v23 = resultCopy;
  v26 = systemTimeZone;
  if (v37)
  {
    v27 = currentCalendar;
    v24 = v37;
    v80 = [currentCalendar dateByAddingUnit:32 value:1 toDate:? options:?];
    goto LABEL_7;
  }

  v24 = 0;
LABEL_6:
  v27 = currentCalendar;
LABEL_7:
  v28 = MEMORY[0x277CCACA8];
  v29 = v23;
  value = [v23 value];
  v31 = [v28 stringWithFormat:@"%@ ", value];
  v32 = [stringCopy stringByReplacingOccurrencesOfString:v31 withString:&stru_287C50EE8];

  v33 = v29;
  value2 = [v29 value];
  v35 = [v32 stringByReplacingOccurrencesOfString:value2 withString:&stru_287C50EE8];

  v20 = v24;
  if (!v24 || self && self->_canceled)
  {
    v25[2](v25, MEMORY[0x277CBEBF8]);

    currentCalendar = v27;
    systemTimeZone = v26;
    completionCopy = v25;
    resultCopy = v33;
    v15 = v79;
    v22 = v80;
    goto LABEL_32;
  }

  v38 = v27;
  resultCopy = v33;
  if (v80)
  {
    systemTimeZone = v26;
    if ([v80 compare:v20] == -1)
    {
      v39 = v80;

      v80 = v20;
      v20 = v39;
    }
  }

  else
  {
    v80 = 0;
    systemTimeZone = v26;
  }

  completionCopy = v25;
  if ([v20 compare:v79] == -1 && objc_msgSend(v38, "isDateInToday:", v20))
  {
    type3 = [v33 type];
    if ([type3 isEqualToString:*MEMORY[0x277D04198]])
    {

LABEL_24:
      v46 = [v38 dateByAddingUnit:16 value:1 toDate:v20 options:0];

      v47 = v80;
      if (v80)
      {
        v48 = [v38 dateByAddingUnit:16 value:1 toDate:v80 options:0];

        v47 = v48;
      }

      v20 = v46;
      goto LABEL_28;
    }

    [v33 type];
    v41 = v20;
    selfCopy = self;
    v44 = v43 = v38;
    v45 = [v44 isEqualToString:v77];

    v38 = v43;
    self = selfCopy;
    v20 = v41;
    resultCopy = v33;

    if (v45)
    {
      goto LABEL_24;
    }
  }

  v47 = v80;
LABEL_28:
  v49 = objc_opt_new();
  v75 = v38;
  if ([v35 length])
  {
    [v49 setTitle:v35];
  }

  else
  {
    v50 = [SPUISUtilities localizedStringForKey:@"NEW_EVENT"];
    [v49 setTitle:v50];
  }

  [v49 setStartDate:v20];
  [v49 setEndDate:v47];
  [v49 setIsAllDay:v85];
  v81 = v47;
  v51 = objc_opt_new();
  [v51 setEvent:v49];
  v78 = v20;
  v52 = objc_opt_new();
  v74 = v49;
  v53 = MEMORY[0x277D4C598];
  title = [v49 title];
  v55 = [v53 textWithString:title];
  [v52 setTitle:v55];

  v56 = [objc_alloc(MEMORY[0x277D4C220]) initWithDate:v78];
  [v52 setThumbnail:v56];

  v57 = [SPUISUtilities localizedStringForKey:@"ADD"];
  v58 = v51;
  v73 = v51;
  v59 = [(SPUISDataDetectorResultGenerator *)self buttonItemWithTitle:v57 symbol:0 command:v51];
  v89[0] = v59;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:1];
  [v52 setButtonItems:v60];

  [v52 setButtonItemsAreTrailing:1];
  [v52 setCommand:v58];
  v61 = MEMORY[0x277D4C598];
  v62 = [SPUISDateFormatManager stringsFromDate:v78 toDate:v81 isAllDay:v85];
  v63 = [v62 componentsJoinedByString:@" · "];
  v72 = [v61 textWithString:v63];

  v88 = v72;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  [v52 setDescriptions:v64];

  v87 = v52;
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v66 = *MEMORY[0x277D65A40];
  v67 = [SPUISUtilities localizedStringForKey:@"QUICK_ACTION_CALENDAR_EVENT_SECTION_TITLE"];
  v68 = [SPUISUtilities localizedStringForKey:@"QUICK_ACTION_CALENDAR_EVENT_COMPLETION"];
  v69 = [(SPUISDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v65 queryId:idCopy2 resultBundleId:v66 sectionTitle:v67 completion:v68];

  v86 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  (completionCopy)[2](completionCopy, v70);

  v22 = v81;
  v20 = v78;

  currentCalendar = v75;
  v15 = v79;
LABEL_32:

  v71 = *MEMORY[0x277D85DE8];
}

- (id)buildResultSectionWithCardSections:(id)sections queryId:(unint64_t)id resultBundleId:(id)bundleId sectionTitle:(id)title completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277D65A38];
  completionCopy = completion;
  titleCopy = title;
  bundleIdCopy = bundleId;
  sectionsCopy = sections;
  v16 = objc_opt_new();
  [v16 setCardSections:sectionsCopy];

  v17 = objc_alloc_init(MEMORY[0x277D65850]);
  [v17 setInlineCard:v16];
  [v17 setTopHit:SSSetTopHitWithReasonString()];
  [v17 setResultBundleId:bundleIdCopy];

  [v17 setSectionBundleIdentifier:v11];
  [v17 setSectionHeader:titleCopy];
  [v17 setQueryId:id];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%llu", v11, id];
  [v17 setIdentifier:v18];

  [v17 setCompletion:completionCopy];
  [v17 setApplicationBundleIdentifier:v11];
  [v17 setType:2];
  v19 = objc_alloc_init(MEMORY[0x277D65848]);
  v23[0] = v17;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v19 setResults:v20];

  [v19 setBundleIdentifier:v11];
  [v19 setDomain:10];
  [v19 setTitle:titleCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)buttonItemWithTitle:(id)title symbol:(id)symbol command:(id)command
{
  symbolCopy = symbol;
  commandCopy = command;
  titleCopy = title;
  v10 = objc_opt_new();
  [v10 setTitle:titleCopy];

  if (symbolCopy)
  {
    v11 = objc_opt_new();
    [v11 setIsTemplate:1];
    [v11 setSymbolName:symbolCopy];
    [v10 setImage:v11];
  }

  [v10 setCommand:commandCopy];

  return v10;
}

- (void)cancel
{
  if (self)
  {
    ddJobIdentifier = self->_ddJobIdentifier;
  }

  else
  {
    ddJobIdentifier = 0;
  }

  [MEMORY[0x277D04220] cancelJob:ddJobIdentifier];
}

- (void)getResultSections:(id)sections queryId:(unint64_t)id completion:(id)completion
{
  sectionsCopy = sections;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  [v10 setResultsOptions:{objc_msgSend(v10, "resultsOptions") | 0x1000}];
  v11 = [sectionsCopy length];
  v12 = MEMORY[0x277D04220];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SPUISDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke;
  v16[3] = &unk_279D0C0E8;
  v18 = completionCopy;
  v19 = 0;
  v20 = v11;
  idCopy = id;
  v16[4] = self;
  v17 = sectionsCopy;
  v13 = sectionsCopy;
  v14 = completionCopy;
  v15 = [v12 scanString:v13 range:0 configuration:v11 completionBlock:{v10, v16}];
  if (self)
  {
    self->_ddJobIdentifier = v15;
  }
}

void __73__SPUISDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke_cold_1(void *a1, void *a2, void *a3, id *a4)
{
  [a1 coreResult];
  HasProperties = DDResultHasProperties();
  v11 = [a1 range] == a2[7] && v9 == a2[8];
  if ((HasProperties & 1) == 0 && !v11)
  {
LABEL_9:
    v12 = *(a2[6] + 16);

    v12();
    return;
  }

  if (v11)
  {
    if ([a3 isEqualToString:*MEMORY[0x277D041B0]])
    {
      v13 = OUTLINED_FUNCTION_0_0();

      [v13 buildResultSectionsForTrackingNumberFromResult:? completion:? queryId:?];
      return;
    }

    if ([a3 isEqualToString:*MEMORY[0x277D04160]])
    {
      [a1 coreResult];
      if (DDResultIsValidPhoneNumber())
      {
        v16 = OUTLINED_FUNCTION_0_0();

        [v16 buildResultSectionsForPhoneNumberFromResult:? completion:? queryId:?];
        return;
      }
    }
  }

  else
  {
    [a3 isEqualToString:*MEMORY[0x277D04160]];
  }

  if ([a3 isEqualToString:*MEMORY[0x277D040C8]])
  {
    v14 = OUTLINED_FUNCTION_0_0();

    [v14 buildResultSectionsForEmailFromResult:? completion:? queryId:?];
  }

  else
  {
    if (![a3 isEqualToString:*MEMORY[0x277D040A8]] && (objc_msgSend(a3, "isEqualToString:", *MEMORY[0x277D04198]) & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", *MEMORY[0x277D040B0]) & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", *MEMORY[0x277D04190]) & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", *MEMORY[0x277D040A0]) & 1) == 0)
    {
      goto LABEL_9;
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    v15 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [a1 coreResult];
    if (DDResultIsPastDate())
    {
      (*(a2[6] + 16))();
    }

    else
    {
      [*a4 buildResultSectionsForDateTimeFromResult:a1 querString:a2[5] completion:a2[6] queryId:a2[9] searchString:a2[5]];
    }
  }
}

@end