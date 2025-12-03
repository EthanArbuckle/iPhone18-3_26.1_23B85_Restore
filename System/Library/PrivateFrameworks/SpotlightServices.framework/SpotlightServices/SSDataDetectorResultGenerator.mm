@interface SSDataDetectorResultGenerator
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
@end

@implementation SSDataDetectorResultGenerator

void __70__SSDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 firstObject];
  v3 = [v5 type];
  if (!v3 || (v4 = *(a1 + 32)) != 0 && (*(v4 + 8) & 1) != 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    __70__SSDataDetectorResultGenerator_getResultSections_queryId_completion___block_invoke_cold_1(v5, a1, v3, (a1 + 32));
  }
}

- (void)buildResultSectionsForTrackingNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v19[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  resultCopy = result;
  subResults = [resultCopy subResults];
  firstObject = [subResults firstObject];
  type = [firstObject type];

  [resultCopy coreResult];
  v13 = DDResultGetShipmentTrackingUrlString();
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
  value = [resultCopy value];

  v16 = [(SSDataDetectorResultGenerator *)self buildResultSectionForTrackingNumber:value carrier:type url:v14 queryId:id];

  v19[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  completionCopy[2](completionCopy, v17);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)buildResultSectionForTrackingNumber:(id)number carrier:(id)carrier url:(id)url queryId:(unint64_t)id
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69CA3A0];
  urlCopy = url;
  carrierCopy = carrier;
  v32 = [v8 textWithString:number];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E69CA320] punchoutWithURL:urlCopy];

  v29 = v11;
  [v11 setPunchout:v12];

  v13 = objc_opt_new();
  [v13 setSymbolName:@"shippingbox.fill"];
  v30 = v13;
  [v13 setIsTemplate:1];
  v14 = objc_opt_new();
  [v14 setTitle:v32];
  v15 = [MEMORY[0x1E69CA3A0] textWithString:carrierCopy];

  v35[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v14 setDescriptions:v16];

  [v14 setThumbnail:v13];
  [v14 setCommand:v11];
  v17 = objc_opt_new();
  [v17 setRedComponent:0.635294118];
  [v17 setGreenComponent:0.517647059];
  [v17 setBlueComponent:0.368627451];
  [v17 setColorTintStyle:1];
  [v14 setBackgroundColor:v17];
  v34 = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"QUICK_ACTION_PACKAGE_TRACKING_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"QUICK_ACTION_PACKAGE_TRACKING_COMPLETION" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v23 = [(SSDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v18 queryId:id resultBundleId:@"com.apple.datadetector.quick_actions.tracking_number" sectionTitle:v20 completion:v22];

  punchout = [v29 punchout];
  results = [v23 results];
  firstObject = [results firstObject];
  [firstObject setPunchout:punchout];

  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)buildResultSectionsForPhoneNumberFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v31[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v28 = 0;
  v9 = [result getPhoneValue:&v28 label:0];
  v10 = v28;
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E695CF50]) initWithStringValue:v10];
    v12 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v11];
    v13 = objc_opt_new();
    v31[0] = *MEMORY[0x1E695C330];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v15 = [v13 unifiedContactsMatchingPredicate:v12 keysToFetch:v14 error:0];
    v16 = [v15 count];

    if (!v10 || v16)
    {
      completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
    }

    else
    {
      v26 = [(SSDataDetectorResultGenerator *)self buildCardSectionForPhoneNumber:v10];
      v30 = v26;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      idCopy = id;
      [v17 localizedStringForKey:@"QUICK_ACTION_PHONE_NUMBER_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v19 = v27 = v11;
      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"QUICK_ACTION_PHONE_NUMBER_COMPLETION" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v22 = [(SSDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v25 queryId:idCopy resultBundleId:@"com.apple.datadetector.quick_actions.phone_number" sectionTitle:v19 completion:v21];

      v29 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      (completionCopy)[2](completionCopy, v23);

      v11 = v27;
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)buildCardSectionForPhoneNumber:(id)number
{
  v18[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v5 = [(SSDataDetectorResultGenerator *)self personWithPhoneNumber:numberCopy email:0];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ADD_NUMBER" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v8 = [(SSDataDetectorResultGenerator *)self buildPersonBasedSubtitleButtonItemWithTitle:v7 person:v5];

  v9 = objc_opt_new();
  [v9 setPerson:v5];
  v10 = TUNetworkCountryCode();
  v11 = TUFormattedPhoneNumber();

  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E69CA3A0] textWithString:v11];
  [v12 setTitle:v13];

  [v12 setSubtitleButtonItem:v8];
  v18[0] = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v12 setTrailingButtonItems:v14];

  v15 = objc_opt_new();
  [v15 setPhoneNumber:numberCopy];

  [v12 setCommand:v15];
  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)buildResultSectionsForEmailFromResult:(id)result completion:(id)completion queryId:(unint64_t)id
{
  v29[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v26 = 0;
  v9 = [result getMailValue:&v26 label:0];
  v10 = v26;
  if (v9)
  {
    v11 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v10];
    v12 = objc_opt_new();
    v29[0] = *MEMORY[0x1E695C208];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v14 = [v12 unifiedContactsMatchingPredicate:v11 keysToFetch:v13 error:0];
    v15 = [v14 count];

    if (!v10 || v15)
    {
      completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
    }

    else
    {
      v25 = [(SSDataDetectorResultGenerator *)self buildCardSectionForEmail:v10];
      v28 = v25;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      idCopy = id;
      v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"QUICK_ACTION_EMAIL_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"QUICK_ACTION_EMAIL_COMPLETION" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v20 = [(SSDataDetectorResultGenerator *)self buildResultSectionWithCardSections:v24 queryId:idCopy resultBundleId:@"com.apple.datadetector.quick_actions.email" sectionTitle:v17 completion:v19];

      v27 = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      (completionCopy)[2](completionCopy, v21);
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)buildCardSectionForEmail:(id)email
{
  v16[1] = *MEMORY[0x1E69E9840];
  emailCopy = email;
  v5 = [(SSDataDetectorResultGenerator *)self personWithPhoneNumber:0 email:emailCopy];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ADD_EMAIL" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v8 = [(SSDataDetectorResultGenerator *)self buildPersonBasedSubtitleButtonItemWithTitle:v7 person:v5];

  v9 = objc_opt_new();
  [v9 setPerson:v5];
  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E69CA3A0] textWithString:emailCopy];
  [v10 setTitle:v11];

  [v10 setSubtitleButtonItem:v8];
  v16[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v10 setTrailingButtonItems:v12];

  v13 = objc_opt_new();
  [v13 setEmail:emailCopy];

  [v10 setCommand:v13];
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)buildPersonBasedSubtitleButtonItemWithTitle:(id)title person:(id)person
{
  v20[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  titleCopy = title;
  v8 = objc_opt_new();
  [v8 setAddToExistingContact:0];
  [v8 setPerson:personCopy];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CREATE_NEW_CONTACT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v11 = [(SSDataDetectorResultGenerator *)self buttonItemWithTitle:v10 symbol:@"person.crop.circle" command:v8];

  v12 = objc_opt_new();
  [v12 setAddToExistingContact:1];
  [v12 setPerson:personCopy];

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ADD_TO_EXISTING_CONTACT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v15 = [(SSDataDetectorResultGenerator *)self buttonItemWithTitle:v14 symbol:@"person.crop.circle.badge.plus" command:v12];

  v16 = [(SSDataDetectorResultGenerator *)self buttonItemWithTitle:titleCopy symbol:0 command:0];

  v20[0] = v11;
  v20[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v16 setPreviewButtonItems:v17];

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)personWithPhoneNumber:(id)number email:(id)email
{
  v13[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  emailCopy = email;
  v7 = objc_opt_new();
  if (numberCopy)
  {
    v13[0] = numberCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v7 setPhoneNumbers:v8];
  }

  if (emailCopy)
  {
    v12 = emailCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [v7 setEmailAddresses:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)buildResultSectionsForDateTimeFromResult:(id)result querString:(id)string completion:(id)completion queryId:(unint64_t)id searchString:(id)searchString
{
  v86[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  stringCopy = string;
  completionCopy = completion;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v82 = 0;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  v14 = [MEMORY[0x1E695DF00] now];
  type = [resultCopy type];
  v16 = *MEMORY[0x1E6999A40];
  v77 = v14;
  v79 = resultCopy;
  selfCopy = self;
  if ([type isEqualToString:*MEMORY[0x1E6999A40]])
  {
  }

  else
  {
    type2 = [resultCopy type];
    v19 = [type2 isEqualToString:*MEMORY[0x1E69999A8]];

    if (!v19)
    {
      v25 = [resultCopy dateFromReferenceDate:v14 referenceTimezone:systemTimeZone timezoneRef:0 allDayRef:&v82];
      v22 = 0;
      v76 = systemTimeZone;
      v73 = v16;
      if ((v82 & 1) != 0 || !v25)
      {
        v23 = v25;
      }

      else
      {
        v23 = v25;
        v22 = [currentCalendar dateByAddingUnit:32 value:1 toDate:? options:?];
      }

LABEL_11:
      v26 = MEMORY[0x1E696AEC0];
      value = [v79 value];
      v28 = [v26 stringWithFormat:@"%@ ", value];
      v29 = [stringCopy stringByReplacingOccurrencesOfString:v28 withString:&stru_1F556FE60];

      value2 = [v79 value];
      v31 = [v29 stringByReplacingOccurrencesOfString:value2 withString:&stru_1F556FE60];

      v21 = v23;
      if (!v23 || (v32 = selfCopy) != 0 && selfCopy->_canceled)
      {
        v24 = completionCopy;
        (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);

LABEL_31:
        systemTimeZone = v76;
        goto LABEL_32;
      }

      v24 = completionCopy;
      if (v22)
      {
        v33 = [v22 compare:v23];
        v34 = v73;
        if (v33 == -1)
        {
          v35 = v22;

          v22 = v21;
          v21 = v35;
        }
      }

      else
      {
        v34 = v73;
      }

      if ([v21 compare:v77] == -1 && objc_msgSend(currentCalendar, "isDateInToday:", v21))
      {
        type3 = [v79 type];
        if ([type3 isEqualToString:*MEMORY[0x1E6999A48]])
        {

LABEL_24:
          v39 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v21 options:0];

          if (v22)
          {
            v40 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v22 options:0];

            v22 = v40;
          }

          v21 = v39;
          goto LABEL_27;
        }

        type4 = [v79 type];
        v38 = [type4 isEqualToString:v34];

        if (v38)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      v41 = objc_opt_new();
      v72 = v31;
      if ([v31 length])
      {
        [v41 setTitle:v31];
      }

      else
      {
        v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v43 = [v42 localizedStringForKey:@"NEW_EVENT" value:&stru_1F556FE60 table:@"SpotlightServices"];
        [v41 setTitle:v43];
      }

      [v41 setStartDate:v21];
      [v41 setEndDate:v22];
      [v41 setIsAllDay:v82];
      v44 = v41;
      v45 = objc_opt_new();
      v71 = v44;
      [v45 setEvent:v44];
      v74 = v22;
      v46 = objc_opt_new();
      v47 = MEMORY[0x1E69CA3A0];
      title = [v44 title];
      v49 = [v47 textWithString:title];
      [v46 setTitle:v49];

      v50 = [objc_alloc(MEMORY[0x1E69C9EF0]) initWithDate:v21];
      [v46 setThumbnail:v50];

      v51 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"ADD" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v53 = v45;
      v70 = v45;
      v54 = [(SSDataDetectorResultGenerator *)v32 buttonItemWithTitle:v52 symbol:0 command:v45];
      v86[0] = v54;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
      v55 = v69 = v32;
      [v46 setButtonItems:v55];

      [v46 setButtonItemsAreTrailing:1];
      [v46 setCommand:v53];
      v56 = MEMORY[0x1E69CA3A0];
      v57 = [SSDateFormatManager stringsFromDate:v21 toDate:v22 isAllDay:v82];
      v58 = [v57 componentsJoinedByString:@" · "];
      v68 = [v56 textWithString:v58];

      v85 = v68;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      [v46 setDescriptions:v59];

      v84 = v46;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
      v61 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v62 = [v61 localizedStringForKey:@"QUICK_ACTION_CALENDAR_EVENT_SECTION_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v63 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v64 = [v63 localizedStringForKey:@"QUICK_ACTION_CALENDAR_EVENT_COMPLETION" value:&stru_1F556FE60 table:@"SpotlightServices"];
      v65 = [(SSDataDetectorResultGenerator *)v69 buildResultSectionWithCardSections:v60 queryId:id resultBundleId:@"com.apple.datadetector.quick_actions.calendar" sectionTitle:v62 completion:v64];

      v83 = v65;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
      (v24)[2](v24, v66);

      v22 = v74;
      goto LABEL_31;
    }
  }

  v80 = 0;
  v81 = 0;
  v20 = [resultCopy extractStartDate:&v81 startTimezone:0 endDate:&v80 endTimezone:0 allDayRef:&v82 referenceDate:v14 referenceTimezone:systemTimeZone];
  v21 = v81;
  v22 = v80;
  if (v20)
  {
    v73 = v16;
    v23 = v21;
    v76 = systemTimeZone;
    goto LABEL_11;
  }

  v24 = completionCopy;
  (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
LABEL_32:

  v67 = *MEMORY[0x1E69E9840];
}

- (id)buildResultSectionWithCardSections:(id)sections queryId:(unint64_t)id resultBundleId:(id)bundleId sectionTitle:(id)title completion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  titleCopy = title;
  bundleIdCopy = bundleId;
  sectionsCopy = sections;
  v15 = objc_opt_new();
  [v15 setCardSections:sectionsCopy];

  v16 = objc_alloc_init(SFSearchResult_SpotlightExtras);
  [(SFSearchResult_SpotlightExtras *)v16 setInlineCard:v15];
  [(SFSearchResult_SpotlightExtras *)v16 setTopHit:SSSetTopHitWithReasonString(2, v16, @"SSDataDetectorResultGenerator direct", 1)];
  [(SFSearchResult_SpotlightExtras *)v16 setResultBundleId:bundleIdCopy];

  [(SFSearchResult_SpotlightExtras *)v16 setSectionBundleIdentifier:@"com.apple.datadetector.quick_actions"];
  [(SFSearchResult_SpotlightExtras *)v16 setSectionHeader:titleCopy];
  [(SFSearchResult_SpotlightExtras *)v16 setQueryId:id];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%llu", @"com.apple.datadetector.quick_actions", id];
  [(SFSearchResult_SpotlightExtras *)v16 setIdentifier:v17];

  [(SFSearchResult_SpotlightExtras *)v16 setCompletion:completionCopy];
  [(SFSearchResult_SpotlightExtras *)v16 setApplicationBundleIdentifier:@"com.apple.datadetector.quick_actions"];
  [(SFSearchResult_SpotlightExtras *)v16 setType:2];
  v18 = objc_alloc_init(SFMutableResultSection);
  v22[0] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [(SFMutableResultSection *)v18 setResults:v19];

  [(SFResultSection *)v18 setBundleIdentifier:@"com.apple.datadetector.quick_actions"];
  [(SFMutableResultSection *)v18 setDomain:10];
  [(SFResultSection *)v18 setTitle:titleCopy];

  v20 = *MEMORY[0x1E69E9840];

  return v18;
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

@end