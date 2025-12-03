@interface WBSFormTelemetryDataMonitor
+ (int64_t)formFieldTypeForFormControlMetadata:(id)metadata formMetadata:(id)formMetadata;
- (BOOL)_isMonitoringTextFieldWithID:(id)d forFormID:(int64_t)iD;
- (WBSFormTelemetryDataMonitor)initWithWebpageLocale:(id)locale;
- (unint64_t)_elementTypeForFormControlMetadata:(id)metadata;
- (void)_sendModificationTelemetryEventsPerForm;
- (void)_sendModificationTelemetryEventsPerFormField;
- (void)_sendUsageTelemetryEventsPerForm;
- (void)_updateAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormID:(int64_t)iD;
- (void)_updateMonitorDataWithFormMetadata:(id)metadata;
- (void)_updateMonitorDataWithTextFieldMetadata:(id)metadata textFieldValueLength:(unint64_t)length forFormID:(int64_t)d;
- (void)_updateTelemetryFieldData:(id)data withTextFieldMetadata:(id)metadata textFieldValueLength:(unint64_t)length;
- (void)sendTelemetryEventsOnFormSubmission;
- (void)updateAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormMetadata:(id)metadata;
- (void)updateFormTelemetryWithFormMetadata:(id)metadata textFieldMetadata:(id)fieldMetadata textFieldValueLength:(unint64_t)length;
@end

@implementation WBSFormTelemetryDataMonitor

- (WBSFormTelemetryDataMonitor)initWithWebpageLocale:(id)locale
{
  localeCopy = locale;
  v10.receiver = self;
  v10.super_class = WBSFormTelemetryDataMonitor;
  v5 = [(WBSFormTelemetryDataMonitor *)&v10 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    webpageLocale = v5->_webpageLocale;
    v5->_webpageLocale = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateFormTelemetryWithFormMetadata:(id)metadata textFieldMetadata:(id)fieldMetadata textFieldValueLength:(unint64_t)length
{
  metadataCopy = metadata;
  fieldMetadataCopy = fieldMetadata;
  v9 = fieldMetadataCopy;
  if (fieldMetadataCopy)
  {
    uniqueID = [fieldMetadataCopy uniqueID];
    v11 = -[WBSFormTelemetryDataMonitor _isMonitoringTextFieldWithID:forFormID:](self, "_isMonitoringTextFieldWithID:forFormID:", uniqueID, [metadataCopy uniqueID]);

    if (!v11)
    {
      [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:metadataCopy];
    }

    -[WBSFormTelemetryDataMonitor _updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:](self, "_updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:", v9, length, [metadataCopy uniqueID]);
  }

  else
  {
    [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:metadataCopy];
  }
}

- (void)_updateMonitorDataWithFormMetadata:(id)metadata
{
  v48 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  if (!self->_formIDToFormData)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    formIDToFormData = self->_formIDToFormData;
    self->_formIDToFormData = dictionary;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(metadataCopy, "uniqueID")}];
  v8 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = -[WBSFormTelemetryData initWithFormType:formID:]([WBSFormTelemetryData alloc], "initWithFormType:formID:", [metadataCopy type], objc_msgSend(v7, "intValue"));
    [(NSMutableDictionary *)self->_formIDToFormData setObject:v9 forKeyedSubscript:v7];
  }

  controls = [metadataCopy controls];
  v11 = [controls count];
  v12 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
  fieldIDToSingleFieldData = [v12 fieldIDToSingleFieldData];
  v14 = [fieldIDToSingleFieldData count];

  if (v11 == v14)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    controls2 = [metadataCopy controls];
    v16 = [controls2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(controls2);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          value = [v20 value];
          -[WBSFormTelemetryDataMonitor _updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:](self, "_updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:", v20, [value length], objc_msgSend(v7, "intValue"));
        }

        v17 = [controls2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v17);
    }
  }

  else
  {
    controls2 = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = metadataCopy;
    obj = [metadataCopy controls];
    v22 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = *v43;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v42 + 1) + 8 * j);
          uniqueID = [v25 uniqueID];
          v27 = v7;
          v28 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
          fieldIDToSingleFieldData2 = [v28 fieldIDToSingleFieldData];
          v30 = [fieldIDToSingleFieldData2 objectForKeyedSubscript:uniqueID];

          if (v30)
          {
            [controls2 setObject:v30 forKeyedSubscript:uniqueID];
          }

          else
          {
            v31 = -[WBSSingleFieldTelemetryData initWithFieldType:fieldID:elementType:]([WBSSingleFieldTelemetryData alloc], "initWithFieldType:fieldID:elementType:", [objc_opt_class() formFieldTypeForFormControlMetadata:v25 formMetadata:v35], uniqueID, -[WBSFormTelemetryDataMonitor _elementTypeForFormControlMetadata:](self, "_elementTypeForFormControlMetadata:", v25));
            [controls2 setObject:v31 forKeyedSubscript:uniqueID];
          }

          v32 = [controls2 objectForKeyedSubscript:uniqueID];
          value2 = [v25 value];
          -[WBSFormTelemetryDataMonitor _updateTelemetryFieldData:withTextFieldMetadata:textFieldValueLength:](self, "_updateTelemetryFieldData:withTextFieldMetadata:textFieldValueLength:", v32, v25, [value2 length]);

          v7 = v27;
        }

        v23 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v23);
    }

    v34 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
    [v34 setFieldIDToSingleFieldData:controls2];

    metadataCopy = v35;
  }
}

- (BOOL)_isMonitoringTextFieldWithID:(id)d forFormID:(int64_t)iD
{
  dCopy = d;
  formIDToFormData = self->_formIDToFormData;
  if (formIDToFormData)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:iD];
    v9 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v8];

    if (v9)
    {
      fieldIDToSingleFieldData = [v9 fieldIDToSingleFieldData];
      v11 = [fieldIDToSingleFieldData objectForKeyedSubscript:dCopy];
      LOBYTE(formIDToFormData) = v11 != 0;
    }

    else
    {
      LOBYTE(formIDToFormData) = 0;
    }
  }

  return formIDToFormData;
}

- (void)_updateMonitorDataWithTextFieldMetadata:(id)metadata textFieldValueLength:(unint64_t)length forFormID:(int64_t)d
{
  formIDToFormData = self->_formIDToFormData;
  v9 = MEMORY[0x1E696AD98];
  metadataCopy = metadata;
  v11 = [v9 numberWithInteger:d];
  v12 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v11];
  fieldIDToSingleFieldData = [v12 fieldIDToSingleFieldData];
  uniqueID = [metadataCopy uniqueID];
  v15 = [fieldIDToSingleFieldData objectForKeyedSubscript:uniqueID];

  [(WBSFormTelemetryDataMonitor *)self _updateTelemetryFieldData:v15 withTextFieldMetadata:metadataCopy textFieldValueLength:length];
}

- (void)_updateTelemetryFieldData:(id)data withTextFieldMetadata:(id)metadata textFieldValueLength:(unint64_t)length
{
  dataCopy = data;
  metadataCopy = metadata;
  wasPreviouslyAutoFilled = [dataCopy wasPreviouslyAutoFilled];
  isAutoFilledTextField = [metadataCopy isAutoFilledTextField];
  isUserEditedTextField = [metadataCopy isUserEditedTextField];
  v11 = 1;
  if (!isUserEditedTextField)
  {
    v11 = 2;
  }

  if (!length)
  {
    v11 = 0;
  }

  v12 = 4;
  if (length)
  {
    v12 = 5;
  }

  if (wasPreviouslyAutoFilled)
  {
    v11 = v12;
  }

  if (isAutoFilledTextField)
  {
    v13 = 3;
  }

  else
  {
    v13 = v11;
  }

  [dataCopy setModificationType:v13];
  [dataCopy setIsAutoFilled:isAutoFilledTextField];
  if (length)
  {
    v14 = isUserEditedTextField;
  }

  else
  {
    v14 = 0;
  }

  [dataCopy setIsManuallyFilledByUser:v14];
  if (![dataCopy fieldType] && objc_msgSend(metadataCopy, "looksLikeOneTimeCodeField"))
  {
    [dataCopy setFieldType:24];
  }

  if (isAutoFilledTextField && [dataCopy fieldType] == 24)
  {
    [dataCopy setAutoFillOfferedType:2];
  }
}

- (void)updateAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormMetadata:(id)metadata
{
  dCopy = d;
  metadataCopy = metadata;
  if (!-[WBSFormTelemetryDataMonitor _isMonitoringTextFieldWithID:forFormID:](self, "_isMonitoringTextFieldWithID:forFormID:", dCopy, [metadataCopy uniqueID]))
  {
    [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:metadataCopy];
  }

  -[WBSFormTelemetryDataMonitor _updateAutoFillOfferedType:forTextFieldWithID:forFormID:](self, "_updateAutoFillOfferedType:forTextFieldWithID:forFormID:", type, dCopy, [metadataCopy uniqueID]);
}

- (void)_updateAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormID:(int64_t)iD
{
  formIDToFormData = self->_formIDToFormData;
  v8 = MEMORY[0x1E696AD98];
  dCopy = d;
  v10 = [v8 numberWithInteger:iD];
  v11 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v10];
  fieldIDToSingleFieldData = [v11 fieldIDToSingleFieldData];
  v13 = [fieldIDToSingleFieldData objectForKeyedSubscript:dCopy];

  [v13 setAutoFillOfferedType:type];
}

- (void)sendTelemetryEventsOnFormSubmission
{
  [(WBSFormTelemetryDataMonitor *)self _sendModificationTelemetryEventsPerFormField];
  [(WBSFormTelemetryDataMonitor *)self _sendModificationTelemetryEventsPerForm];

  [(WBSFormTelemetryDataMonitor *)self _sendUsageTelemetryEventsPerForm];
}

- (void)_sendModificationTelemetryEventsPerForm
{
  formIDToFormData = self->_formIDToFormData;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerForm__block_invoke;
  v3[3] = &unk_1E7FC6550;
  v3[4] = self;
  [(NSMutableDictionary *)formIDToFormData enumerateKeysAndObjectsUsingBlock:v3];
}

void __70__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerForm__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59[7] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 formType] != 2 && objc_msgSend(v6, "formType"))
  {
    v28 = [v6 fieldIDToSingleFieldData];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerForm__block_invoke_2;
    v29[3] = &unk_1E7FC6528;
    v29[4] = &v54;
    v29[5] = &v50;
    v29[6] = &v30;
    v29[7] = &v34;
    v29[8] = &v42;
    v29[9] = &v46;
    v29[10] = &v38;
    [v28 enumerateKeysAndObjectsUsingBlock:v29];
    if (v55[3])
    {
      v7 = [v6 formType];
      v8 = v51[3];
      v9 = v55[3];
      v10 = v31[3];
      v11 = v35[3];
      v12 = v10 + v8 + v11;
      if (v12)
      {
        v13 = (v11 * 100.0 / v12);
        v14 = (v10 * 100.0 / v12);
      }

      else
      {
        v13 = -1;
        v14 = -1;
      }

      v15 = v43[3];
      v16 = v47[3];
      v17 = v39[3];
      v58[0] = @"totalNumberOfFields";
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v9, v7}];
      v59[0] = v27;
      v58[1] = @"percentageOfFieldsAutoFilled";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v8 * 100.0 / v9)];
      v59[1] = v18;
      v58[2] = @"percentageOfFieldsManuallyFilledByUser";
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v15 * 100.0 / v9)];
      v59[2] = v19;
      v58[3] = @"percentageOfFieldsManuallyFilledByWebsite";
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v16 * 100.0 / v9)];
      v59[3] = v20;
      v58[4] = @"percentageOfBlankFields";
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v17 * 100.0 / v9)];
      v59[4] = v21;
      v58[5] = @"percentageOfFieldsAutofilledThenModifiedOverFieldsEverAutoFilled";
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      v59[5] = v22;
      v58[6] = @"percentageOfFieldsAutoFilledThenClearedOverFieldsEverAutoFilled";
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      v59[6] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:7];

      v25 = [MEMORY[0x1E69C8810] sharedLogger];
      [v25 didSubmitFormOfType:v26 withPerFormModificationsDictionary:v24 webpageLocale:*(*(a1 + 32) + 16)];
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
  }
}

void __70__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerForm__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 elementType] == 3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v4 = [v6 modificationType];
    if (v4 <= 5)
    {
      v5 = *(*(a1 + qword_1BB914658[v4]) + 8);
      ++*(v5 + 24);
    }
  }
}

- (void)_sendModificationTelemetryEventsPerFormField
{
  formIDToFormData = self->_formIDToFormData;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerFormField__block_invoke;
  v3[3] = &unk_1E7FC6550;
  v3[4] = self;
  [(NSMutableDictionary *)formIDToFormData enumerateKeysAndObjectsUsingBlock:v3];
}

void __75__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerFormField__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 fieldIDToSingleFieldData];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerFormField__block_invoke_2;
  v8[3] = &unk_1E7FC6578;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __75__WBSFormTelemetryDataMonitor__sendModificationTelemetryEventsPerFormField__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 elementType] == 3)
  {
    v4 = [MEMORY[0x1E69C8810] sharedLogger];
    [v4 didSubmitFormOfType:objc_msgSend(*(a1 + 32) withFieldType:"formType") elementType:objc_msgSend(v5 isAutoFilled:"fieldType") isManuallyFilledByUser:objc_msgSend(v5 modificationType:"elementType") autoFillOfferedType:objc_msgSend(v5 webpageLocale:{"isAutoFilled"), objc_msgSend(v5, "isManuallyFilledByUser"), objc_msgSend(v5, "modificationType"), objc_msgSend(v5, "autoFillOfferedType"), *(*(a1 + 40) + 16)}];
  }
}

- (void)_sendUsageTelemetryEventsPerForm
{
  formIDToFormData = self->_formIDToFormData;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__WBSFormTelemetryDataMonitor__sendUsageTelemetryEventsPerForm__block_invoke;
  v3[3] = &unk_1E7FC6550;
  v3[4] = self;
  [(NSMutableDictionary *)formIDToFormData enumerateKeysAndObjectsUsingBlock:v3];
}

void __63__WBSFormTelemetryDataMonitor__sendUsageTelemetryEventsPerForm__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75[7] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 formType] != 2 && objc_msgSend(v6, "formType"))
  {
    v28 = [v6 fieldIDToSingleFieldData];
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__WBSFormTelemetryDataMonitor__sendUsageTelemetryEventsPerForm__block_invoke_2;
    v29[3] = &unk_1E7FC65A0;
    v29[4] = *(a1 + 32);
    v29[5] = &v70;
    v29[6] = &v62;
    v29[7] = &v66;
    v29[8] = &v50;
    v29[9] = &v34;
    v29[10] = &v46;
    v29[11] = &v30;
    v29[12] = &v58;
    v29[13] = &v42;
    v29[14] = &v54;
    v29[15] = &v38;
    [v28 enumerateKeysAndObjectsUsingBlock:v29];
    if (v67[3])
    {
      v7 = [v6 formType];
      v8 = v51[3];
      if (v8)
      {
        v9 = (v35[3] * 100.0 / v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v47[3];
      if (v10)
      {
        v11 = (v31[3] * 100.0 / v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v59[3];
      if (v12)
      {
        v13 = (v43[3] * 100.0 / v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v55[3];
      v26 = v7;
      if (v14)
      {
        v15 = (v39[3] * 100.0 / v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v63[3];
      v17 = v67[3];
      v74[0] = @"totalNumberOfFields";
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v71[3]];
      v75[0] = v27;
      v74[1] = @"totalNumberOfFieldsWhereAutoFillWasOffered";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67[3]];
      v75[1] = v18;
      v74[2] = @"percentageOfFieldsWhereAutoFillWasUsedOverOffered";
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:(v16 * 100.0 / v17)];
      v75[2] = v19;
      v74[3] = @"percentageOfFieldsWherePasswordAutoFillWasUsedOverOffered";
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v75[3] = v20;
      v74[4] = @"percentageOfFieldsWhereOneTimeCodeAutoFillWasUsedOverOffered";
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v75[4] = v21;
      v74[5] = @"percentageOfFieldsWhereCreditCardAutoFillWasUsedOverOffered";
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
      v75[5] = v22;
      v74[6] = @"percentageOfFieldsWhereContactAutoFillWasUsedOverOffered";
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v75[6] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:7];

      v25 = [MEMORY[0x1E69C8810] sharedLogger];
      [v25 didSubmitFormOfType:v26 withPerFormUsageDictionary:v24 webpageLocale:*(*(a1 + 32) + 16)];
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);
  }
}

void __63__WBSFormTelemetryDataMonitor__sendUsageTelemetryEventsPerForm__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 elementType] == 3)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v4 = [*(a1 + 32) _wasAutoFillUsedForModificationType:{objc_msgSend(v7, "modificationType")}];
    if (v4)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    v5 = [v7 autoFillOfferedType];
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        ++*(*(*(a1 + 96) + 8) + 24);
        if ((v4 & 1) == 0)
        {
          goto LABEL_18;
        }

        v6 = 104;
        goto LABEL_17;
      }

      if (v5 == 4)
      {
        ++*(*(*(a1 + 112) + 8) + 24);
        if (v4)
        {
          v6 = 120;
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (v5 == 1)
      {
        ++*(*(*(a1 + 64) + 8) + 24);
        if ((v4 & 1) == 0)
        {
          goto LABEL_18;
        }

        v6 = 72;
        goto LABEL_17;
      }

      if (v5 == 2)
      {
        ++*(*(*(a1 + 80) + 8) + 24);
        if (v4)
        {
          v6 = 88;
LABEL_17:
          ++*(*(*(a1 + v6) + 8) + 24);
        }
      }
    }
  }

LABEL_18:
}

+ (int64_t)formFieldTypeForFormControlMetadata:(id)metadata formMetadata:(id)formMetadata
{
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  if (([metadataCopy looksLikeOneTimeCodeField] & 1) == 0)
  {
    v8 = [formMetadataCopy type] - 3;
    classification = [metadataCopy classification];
    if ([metadataCopy isSecureTextField] & 1) != 0 || (WBSIsEqual())
    {
      if (v8 >= 3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = WBSIsEqual();
      if (v8 > 2 || (v10 & 1) == 0)
      {
LABEL_6:
        if ([WBSFormDataController isFieldUnidentified:metadataCopy]|| [WBSFormDataController textFieldLooksLikeCreditCardFormField:metadataCopy])
        {
          if (WBSIsEqual())
          {
            v7 = 2;
LABEL_13:

            goto LABEL_14;
          }

          if (WBSIsEqual())
          {
            v7 = 6;
            goto LABEL_13;
          }

          if (WBSIsEqual())
          {
            v7 = 4;
            goto LABEL_13;
          }

          if (WBSIsEqual())
          {
            v7 = 3;
            goto LABEL_13;
          }

          if (WBSIsEqual())
          {
            v7 = 5;
            goto LABEL_13;
          }
        }

        addressBookLabel = [metadataCopy addressBookLabel];
        v13 = [addressBookLabel isEqualToString:@"email"];

        isLabeledUsernameField = [metadataCopy isLabeledUsernameField];
        if ([formMetadataCopy type] == 4 && ((v13 | isLabeledUsernameField) & 1) != 0)
        {
          v7 = 23;
          goto LABEL_13;
        }

        userNameElementUniqueID = [formMetadataCopy userNameElementUniqueID];
        uniqueID = [metadataCopy uniqueID];
        if ([formMetadataCopy type] == 3 && (objc_msgSend(userNameElementUniqueID, "isEqualToString:", uniqueID) & 1) != 0)
        {
          v7 = 23;
LABEL_63:

          goto LABEL_13;
        }

        addressBookLabel2 = [metadataCopy addressBookLabel];
        v18 = addressBookLabel2;
        if (addressBookLabel2)
        {
          lowercaseString = [addressBookLabel2 lowercaseString];
          v20 = [WBSFormDataController specifierForAddressBookLabel:lowercaseString];

          property = [v20 property];
          v22 = [property isEqualToString:*MEMORY[0x1E69C8AD8]];

          if (v22)
          {
            v7 = 7;
LABEL_48:

LABEL_62:
            goto LABEL_63;
          }

          property2 = [v20 property];
          v24 = [property2 isEqualToString:*MEMORY[0x1E69C8AC0]];

          if (v24)
          {
            v7 = 8;
            goto LABEL_48;
          }

          property3 = [v20 property];
          v26 = [property3 isEqualToString:*MEMORY[0x1E69C8AD0]];

          if (v26)
          {
            v7 = 9;
            goto LABEL_48;
          }

          property4 = [v20 property];
          v28 = [property4 isEqualToString:*MEMORY[0x1E69C8AC8]];

          if (v28)
          {
            v7 = 10;
            goto LABEL_48;
          }

          property5 = [v20 property];
          v30 = [property5 isEqualToString:*MEMORY[0x1E69C8AA0]];

          if (v30)
          {
            v7 = 18;
            goto LABEL_48;
          }

          property6 = [v20 property];
          v32 = [property6 isEqualToString:*MEMORY[0x1E69C8AB8]];

          if (v32)
          {
            v7 = 19;
            goto LABEL_48;
          }

          property7 = [v20 property];
          v34 = [property7 isEqualToString:*MEMORY[0x1E69C8A98]];

          if (v34)
          {
            v7 = 17;
            goto LABEL_48;
          }

          property8 = [v20 property];
          v36 = [property8 isEqualToString:*MEMORY[0x1E69C8AB0]];

          if (v36)
          {
            v7 = 20;
            goto LABEL_48;
          }

          property9 = [v20 property];
          v38 = [property9 isEqualToString:@"URLs"];

          if (v38)
          {
            v7 = 21;
            goto LABEL_48;
          }

          property10 = [v20 property];
          v40 = [property10 isEqualToString:*MEMORY[0x1E69C8A90]];

          if (v40)
          {
            component = [v20 component];
            v42 = [component isEqualToString:@"Street"];

            if (v42)
            {
              v7 = 12;
              goto LABEL_48;
            }

            component2 = [v20 component];
            v44 = [component2 isEqualToString:@"City"];

            if (v44)
            {
              v7 = 13;
              goto LABEL_48;
            }

            component3 = [v20 component];
            v46 = [component3 isEqualToString:@"State"];

            if (v46)
            {
              v7 = 14;
              goto LABEL_48;
            }

            component4 = [v20 component];
            v48 = [component4 isEqualToString:@"Country"];

            if (v48)
            {
              v7 = 15;
              goto LABEL_48;
            }

            component5 = [v20 component];
            v50 = [component5 isEqualToString:@"ZIP"];

            if (v50)
            {
              v7 = 16;
              goto LABEL_48;
            }
          }
        }

        v7 = WBSIsEqual();
        goto LABEL_62;
      }
    }

    v7 = 22;
    goto LABEL_13;
  }

  v7 = 24;
LABEL_14:

  return v7;
}

- (unint64_t)_elementTypeForFormControlMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy isTextField])
  {
    tagName = [metadataCopy tagName];
    if ([tagName isEqualToString:@"TEXTAREA"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    radioButtonInfo = [metadataCopy radioButtonInfo];

    if (radioButtonInfo)
    {
      v5 = 2;
    }

    else
    {
      selectElementInfo = [metadataCopy selectElementInfo];

      v5 = selectElementInfo != 0;
    }
  }

  return v5;
}

@end