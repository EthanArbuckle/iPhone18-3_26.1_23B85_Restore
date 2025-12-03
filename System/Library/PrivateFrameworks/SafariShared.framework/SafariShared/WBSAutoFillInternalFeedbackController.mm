@interface WBSAutoFillInternalFeedbackController
+ (id)placeholderForFeedbackDetailType:(id)type;
+ (id)titleForAttachmentsType:(unint64_t)type;
+ (id)titleForFeedbackCategory:(unint64_t)category;
- (BOOL)canContinueInTapToRadar;
- (NSOrderedSet)detailTypesForSelectedFeedbackCategory;
- (NSString)attachmentDetailsText;
- (NSURL)continueInTapToRadarURL;
- (WBSAutoFillInternalFeedbackController)initWithDiagnosticsData:(id)data;
- (id)_radarTitleComponentForDetails;
- (id)responseForDetailType:(id)type;
- (void)setResponse:(id)response forDetailType:(id)type;
@end

@implementation WBSAutoFillInternalFeedbackController

+ (id)titleForFeedbackCategory:(unint64_t)category
{
  if (category > 3)
  {
    if (category >= 8)
    {
      goto LABEL_6;
    }
  }

  else if ((category & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

  self = _WBSLocalizedString();
LABEL_6:

  return self;
}

+ (id)placeholderForFeedbackDetailType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedFormPurpose"] || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedExpectedAutoFillInformationTypes") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedFormPurpose") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedUnexpectedAutoFillInformationTypes") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFillingFailedUnfilledFieldsExpectingFilling") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataIncorrectFields") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataExpectedFilledData") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatIncorrectFields") || objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatExpectedFormat"))
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v4 = &stru_1F3A5E418;
    if (([typeCopy isEqualToString:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillOtherIssue"] & 1) == 0 && !objc_msgSend(typeCopy, "isEqualToString:", @"WBSAutoFillInternalFeedbackDetailTypeAutoFillMultipleIssues"))
    {
      v4 = @"unknown detail type placeholder";
    }
  }

  return v4;
}

+ (id)titleForAttachmentsType:(unint64_t)type
{
  if (type <= 1)
  {
    self = _WBSLocalizedString();
  }

  return self;
}

- (WBSAutoFillInternalFeedbackController)initWithDiagnosticsData:(id)data
{
  dataCopy = data;
  result = [MEMORY[0x1E69C8880] isInternalInstall];
  if (result)
  {
    v12.receiver = self;
    v12.super_class = WBSAutoFillInternalFeedbackController;
    v7 = [(WBSAutoFillInternalFeedbackController *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_diagnosticsData, data);
      v8->_selectedFeedbackCategory = 0;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      detailResponses = v8->_detailResponses;
      v8->_detailResponses = dictionary;

      v8->_selectedAttachmentsType = 1;
      v11 = v8;
    }

    return v8;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

- (NSOrderedSet)detailTypesForSelectedFeedbackCategory
{
  v21 = *MEMORY[0x1E69E9840];
  selectedFeedbackCategory = self->_selectedFeedbackCategory;
  if (selectedFeedbackCategory > 3)
  {
    if (selectedFeedbackCategory > 5)
    {
      if (selectedFeedbackCategory == 6)
      {
        v4 = MEMORY[0x1E695DFB8];
        v11 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillOtherIssue";
        v5 = MEMORY[0x1E695DEC8];
        v6 = &v11;
      }

      else
      {
        if (selectedFeedbackCategory != 7)
        {
          goto LABEL_21;
        }

        v4 = MEMORY[0x1E695DFB8];
        v10 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillMultipleIssues";
        v5 = MEMORY[0x1E695DEC8];
        v6 = &v10;
      }

      goto LABEL_19;
    }

    v4 = MEMORY[0x1E695DFB8];
    if (selectedFeedbackCategory == 4)
    {
      v14 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataIncorrectFields";
      v15 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataExpectedFilledData";
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v14;
    }

    else
    {
      v12 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatIncorrectFields";
      v13 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatExpectedFormat";
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v12;
    }
  }

  else
  {
    if (selectedFeedbackCategory <= 1)
    {
      if (!selectedFeedbackCategory)
      {
        orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
        goto LABEL_21;
      }

      if (selectedFeedbackCategory != 1)
      {
        goto LABEL_21;
      }

      v4 = MEMORY[0x1E695DFB8];
      v19 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedFormPurpose";
      v20 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedExpectedAutoFillInformationTypes";
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v19;
      goto LABEL_17;
    }

    if (selectedFeedbackCategory != 2)
    {
      v4 = MEMORY[0x1E695DFB8];
      v16 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFillingFailedUnfilledFieldsExpectingFilling";
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v16;
LABEL_19:
      v7 = 1;
      goto LABEL_20;
    }

    v4 = MEMORY[0x1E695DFB8];
    v17 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedFormPurpose";
    v18 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedUnexpectedAutoFillInformationTypes";
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v17;
  }

LABEL_17:
  v7 = 2;
LABEL_20:
  v8 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
  orderedSet = [v4 orderedSetWithArray:v8];

LABEL_21:

  return orderedSet;
}

- (NSString)attachmentDetailsText
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _WBSLocalizedString();
  diagnosticsData = [(WBSAutoFillInternalFeedbackController *)self diagnosticsData];
  v6 = [diagnosticsData url];
  v7 = [v3 localizedStringWithFormat:v4, v6];

  return v7;
}

- (BOOL)canContinueInTapToRadar
{
  if (!self->_selectedFeedbackCategory)
  {
    return 0;
  }

  detailTypesForSelectedFeedbackCategory = [(WBSAutoFillInternalFeedbackController *)self detailTypesForSelectedFeedbackCategory];
  v4 = [detailTypesForSelectedFeedbackCategory set];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__WBSAutoFillInternalFeedbackController_canContinueInTapToRadar__block_invoke;
  v7[3] = &unk_1E7FB69A0;
  v7[4] = self;
  v5 = [v4 safari_allObjectsPassTest:v7];

  return v5;
}

BOOL __64__WBSAutoFillInternalFeedbackController_canContinueInTapToRadar__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_radarTitleComponentForDetails
{
  selectedFeedbackCategory = self->_selectedFeedbackCategory;
  v3 = &stru_1F3A5E418;
  if (selectedFeedbackCategory <= 3)
  {
    if (selectedFeedbackCategory == 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [(NSMutableDictionary *)self->_detailResponses objectForKeyedSubscript:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillNotOfferedExpectedAutoFillInformationTypes"];
      [v9 stringWithFormat:@"Expected: %@", v10];
      v3 = LABEL_18:;

      goto LABEL_19;
    }

    if (selectedFeedbackCategory == 2)
    {
      v11 = MEMORY[0x1E696AEC0];
      v10 = [(NSMutableDictionary *)self->_detailResponses objectForKeyedSubscript:@"WBSAutoFillInternalFeedbackDetailTypeAutoFillIncorrectlyOfferedUnexpectedAutoFillInformationTypes"];
      [v11 stringWithFormat:@"Unexpected: %@", v10];
      goto LABEL_18;
    }

    if (selectedFeedbackCategory != 3)
    {
      goto LABEL_19;
    }

    v4 = MEMORY[0x1E696AEC0];
    detailResponses = self->_detailResponses;
    v6 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFillingFailedUnfilledFieldsExpectingFilling";
LABEL_14:
    v10 = [(NSMutableDictionary *)detailResponses objectForKeyedSubscript:v6];
    [v4 stringWithFormat:@"Fields: %@", v10];
    goto LABEL_18;
  }

  if (selectedFeedbackCategory <= 5)
  {
    v4 = MEMORY[0x1E696AEC0];
    detailResponses = self->_detailResponses;
    if (selectedFeedbackCategory == 4)
    {
      v6 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectDataIncorrectFields";
    }

    else
    {
      v6 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillFilledIncorrectFormatIncorrectFields";
    }

    goto LABEL_14;
  }

  if (selectedFeedbackCategory == 6)
  {
    v7 = self->_detailResponses;
    v8 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillOtherIssue";
  }

  else
  {
    if (selectedFeedbackCategory != 7)
    {
      goto LABEL_19;
    }

    v7 = self->_detailResponses;
    v8 = @"WBSAutoFillInternalFeedbackDetailTypeAutoFillMultipleIssues";
  }

  v3 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v8];
LABEL_19:

  return v3;
}

- (NSURL)continueInTapToRadarURL
{
  v55 = *MEMORY[0x1E69E9840];
  if (self->_regression)
  {
    if ([(NSString *)self->_knownWorkingBuild length])
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"REGRESSION(last worked in %@) ", self->_knownWorkingBuild];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Marked as regression by filer as last working in %@.", self->_knownWorkingBuild];
    }

    else
    {
      v3 = @"REGRESSION ";
      v4 = @"Marked as regression by filer with no last known working version.";
    }
  }

  else
  {
    v4 = 0;
    v3 = &stru_1F3A5E418;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = self->_selectedFeedbackCategory - 1;
  v46 = v4;
  if (v6 > 6)
  {
    v7 = @"No issue";
  }

  else
  {
    v7 = off_1E7FB69E0[v6];
  }

  v8 = [(WBSAutoFillInternalFeedbackDiagnosticsData *)self->_diagnosticsData url];
  host = [v8 host];
  _radarTitleComponentForDetails = [(WBSAutoFillInternalFeedbackController *)self _radarTitleComponentForDetails];
  v47 = v3;
  v45 = [v5 stringWithFormat:@"Safari AutoFill [in-app feedback]: %@%@ on %@ (%@)", v3, v7, host, _radarTitleComponentForDetails];

  array = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy = self;
  obj = [(WBSAutoFillInternalFeedbackController *)self detailTypesForSelectedFeedbackCategory];
  v13 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = MEMORY[0x1E696AEC0];
        v19 = titleForFeedbackDetailType(v17, 0);
        v20 = [v18 stringWithFormat:@" * %@", v19];
        [array addObject:v20];

        v21 = MEMORY[0x1E696AEC0];
        v22 = [(NSMutableDictionary *)selfCopy->_detailResponses objectForKeyedSubscript:v17];
        v23 = [v21 stringWithFormat:@"%@\n", v22];
        [array addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v14);
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = selfCopy;
  v26 = [(WBSAutoFillInternalFeedbackDiagnosticsData *)selfCopy->_diagnosticsData url];
  v27 = [v24 stringWithFormat:@"URL: %@\n", v26];
  [array addObject:v27];

  if (v46)
  {
    [array addObject:v46];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  if (v25->_selectedAttachmentsType == 1)
  {
    writeTemporaryFileWithFormMetadata = [(WBSAutoFillInternalFeedbackDiagnosticsData *)v25->_diagnosticsData writeTemporaryFileWithFormMetadata];
    if (writeTemporaryFileWithFormMetadata)
    {
      [array2 addObject:writeTemporaryFileWithFormMetadata];
      v30 = @"Form metadata attached.";
    }

    else
    {
      v30 = @"Safari was unable to attach form metadata for this issue.";
    }

    [array addObject:v30];
  }

  v31 = MEMORY[0x1E696AEC0];
  creationDateString = [(WBSAutoFillInternalFeedbackDiagnosticsData *)v25->_diagnosticsData creationDateString];
  v33 = [v31 stringWithFormat:@"Diagnostics collection was triggered at %@", creationDateString];
  [array addObject:v33];

  v34 = [array componentsJoinedByString:@"\n"];
  v35 = v25->_selectedFeedbackCategory - 1;
  if (v35 > 6)
  {
    v36 = @"1723118";
  }

  else
  {
    v36 = off_1E7FB6A18[v35];
  }

  v53 = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v38 = [v37 mutableCopy];

  if (v25->_regression)
  {
    [v38 addObject:@"1804822"];
  }

  v39 = [WBSInternalFeedbackRadar alloc];
  v40 = +[WBSInternalFeedbackRadarComponent safariAutoFill];
  v41 = [(WBSInternalFeedbackRadar *)v39 initWithComponent:v40 title:v45 descriptionTemplate:v34];

  [(WBSInternalFeedbackRadar *)v41 setClassification:@"Serious Bug"];
  [(WBSInternalFeedbackRadar *)v41 setReproducibility:@"Not Applicable"];
  [(WBSInternalFeedbackRadar *)v41 setKeywords:v38];
  v42 = [array2 safari_mapObjectsUsingBlock:&__block_literal_global_1];
  [(WBSInternalFeedbackRadar *)v41 setAttachmentPaths:v42];

  continueInTapToRadarURL = [(WBSInternalFeedbackRadar *)v41 continueInTapToRadarURL];

  return continueInTapToRadarURL;
}

- (id)responseForDetailType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_detailResponses objectForKeyedSubscript:type];
  v4 = [v3 copy];

  return v4;
}

- (void)setResponse:(id)response forDetailType:(id)type
{
  typeCopy = type;
  v7 = [response copy];
  [(NSMutableDictionary *)self->_detailResponses setObject:v7 forKeyedSubscript:typeCopy];
}

@end