@interface WBSFormTelemetryDataMonitor
+ (int64_t)formFieldTypeForFormControlMetadata:(id)a3 formMetadata:(id)a4;
- (BOOL)_isMonitoringTextFieldWithID:(id)a3 forFormID:(int64_t)a4;
- (WBSFormTelemetryDataMonitor)initWithWebpageLocale:(id)a3;
- (unint64_t)_elementTypeForFormControlMetadata:(id)a3;
- (void)_sendModificationTelemetryEventsPerForm;
- (void)_sendModificationTelemetryEventsPerFormField;
- (void)_sendUsageTelemetryEventsPerForm;
- (void)_updateAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormID:(int64_t)a5;
- (void)_updateMonitorDataWithFormMetadata:(id)a3;
- (void)_updateMonitorDataWithTextFieldMetadata:(id)a3 textFieldValueLength:(unint64_t)a4 forFormID:(int64_t)a5;
- (void)_updateTelemetryFieldData:(id)a3 withTextFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5;
- (void)sendTelemetryEventsOnFormSubmission;
- (void)updateAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormMetadata:(id)a5;
- (void)updateFormTelemetryWithFormMetadata:(id)a3 textFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5;
@end

@implementation WBSFormTelemetryDataMonitor

- (WBSFormTelemetryDataMonitor)initWithWebpageLocale:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSFormTelemetryDataMonitor;
  v5 = [(WBSFormTelemetryDataMonitor *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    webpageLocale = v5->_webpageLocale;
    v5->_webpageLocale = v6;

    v8 = v5;
  }

  return v5;
}

- (void)updateFormTelemetryWithFormMetadata:(id)a3 textFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5
{
  v12 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 uniqueID];
    v11 = -[WBSFormTelemetryDataMonitor _isMonitoringTextFieldWithID:forFormID:](self, "_isMonitoringTextFieldWithID:forFormID:", v10, [v12 uniqueID]);

    if (!v11)
    {
      [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:v12];
    }

    -[WBSFormTelemetryDataMonitor _updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:](self, "_updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:", v9, a5, [v12 uniqueID]);
  }

  else
  {
    [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:v12];
  }
}

- (void)_updateMonitorDataWithFormMetadata:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_formIDToFormData)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    formIDToFormData = self->_formIDToFormData;
    self->_formIDToFormData = v5;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "uniqueID")}];
  v8 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = -[WBSFormTelemetryData initWithFormType:formID:]([WBSFormTelemetryData alloc], "initWithFormType:formID:", [v4 type], objc_msgSend(v7, "intValue"));
    [(NSMutableDictionary *)self->_formIDToFormData setObject:v9 forKeyedSubscript:v7];
  }

  v10 = [v4 controls];
  v11 = [v10 count];
  v12 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
  v13 = [v12 fieldIDToSingleFieldData];
  v14 = [v13 count];

  if (v11 == v14)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = [v4 controls];
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = [v20 value];
          -[WBSFormTelemetryDataMonitor _updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:](self, "_updateMonitorDataWithTextFieldMetadata:textFieldValueLength:forFormID:", v20, [v21 length], objc_msgSend(v7, "intValue"));
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v4;
    obj = [v4 controls];
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
          v26 = [v25 uniqueID];
          v27 = v7;
          v28 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
          v29 = [v28 fieldIDToSingleFieldData];
          v30 = [v29 objectForKeyedSubscript:v26];

          if (v30)
          {
            [v15 setObject:v30 forKeyedSubscript:v26];
          }

          else
          {
            v31 = -[WBSSingleFieldTelemetryData initWithFieldType:fieldID:elementType:]([WBSSingleFieldTelemetryData alloc], "initWithFieldType:fieldID:elementType:", [objc_opt_class() formFieldTypeForFormControlMetadata:v25 formMetadata:v35], v26, -[WBSFormTelemetryDataMonitor _elementTypeForFormControlMetadata:](self, "_elementTypeForFormControlMetadata:", v25));
            [v15 setObject:v31 forKeyedSubscript:v26];
          }

          v32 = [v15 objectForKeyedSubscript:v26];
          v33 = [v25 value];
          -[WBSFormTelemetryDataMonitor _updateTelemetryFieldData:withTextFieldMetadata:textFieldValueLength:](self, "_updateTelemetryFieldData:withTextFieldMetadata:textFieldValueLength:", v32, v25, [v33 length]);

          v7 = v27;
        }

        v23 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v23);
    }

    v34 = [(NSMutableDictionary *)self->_formIDToFormData objectForKeyedSubscript:v7];
    [v34 setFieldIDToSingleFieldData:v15];

    v4 = v35;
  }
}

- (BOOL)_isMonitoringTextFieldWithID:(id)a3 forFormID:(int64_t)a4
{
  v6 = a3;
  formIDToFormData = self->_formIDToFormData;
  if (formIDToFormData)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 fieldIDToSingleFieldData];
      v11 = [v10 objectForKeyedSubscript:v6];
      LOBYTE(formIDToFormData) = v11 != 0;
    }

    else
    {
      LOBYTE(formIDToFormData) = 0;
    }
  }

  return formIDToFormData;
}

- (void)_updateMonitorDataWithTextFieldMetadata:(id)a3 textFieldValueLength:(unint64_t)a4 forFormID:(int64_t)a5
{
  formIDToFormData = self->_formIDToFormData;
  v9 = MEMORY[0x1E696AD98];
  v10 = a3;
  v11 = [v9 numberWithInteger:a5];
  v12 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v11];
  v13 = [v12 fieldIDToSingleFieldData];
  v14 = [v10 uniqueID];
  v15 = [v13 objectForKeyedSubscript:v14];

  [(WBSFormTelemetryDataMonitor *)self _updateTelemetryFieldData:v15 withTextFieldMetadata:v10 textFieldValueLength:a4];
}

- (void)_updateTelemetryFieldData:(id)a3 withTextFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5
{
  v15 = a3;
  v7 = a4;
  v8 = [v15 wasPreviouslyAutoFilled];
  v9 = [v7 isAutoFilledTextField];
  v10 = [v7 isUserEditedTextField];
  v11 = 1;
  if (!v10)
  {
    v11 = 2;
  }

  if (!a5)
  {
    v11 = 0;
  }

  v12 = 4;
  if (a5)
  {
    v12 = 5;
  }

  if (v8)
  {
    v11 = v12;
  }

  if (v9)
  {
    v13 = 3;
  }

  else
  {
    v13 = v11;
  }

  [v15 setModificationType:v13];
  [v15 setIsAutoFilled:v9];
  if (a5)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  [v15 setIsManuallyFilledByUser:v14];
  if (![v15 fieldType] && objc_msgSend(v7, "looksLikeOneTimeCodeField"))
  {
    [v15 setFieldType:24];
  }

  if (v9 && [v15 fieldType] == 24)
  {
    [v15 setAutoFillOfferedType:2];
  }
}

- (void)updateAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormMetadata:(id)a5
{
  v9 = a4;
  v8 = a5;
  if (!-[WBSFormTelemetryDataMonitor _isMonitoringTextFieldWithID:forFormID:](self, "_isMonitoringTextFieldWithID:forFormID:", v9, [v8 uniqueID]))
  {
    [(WBSFormTelemetryDataMonitor *)self _updateMonitorDataWithFormMetadata:v8];
  }

  -[WBSFormTelemetryDataMonitor _updateAutoFillOfferedType:forTextFieldWithID:forFormID:](self, "_updateAutoFillOfferedType:forTextFieldWithID:forFormID:", a3, v9, [v8 uniqueID]);
}

- (void)_updateAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormID:(int64_t)a5
{
  formIDToFormData = self->_formIDToFormData;
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithInteger:a5];
  v11 = [(NSMutableDictionary *)formIDToFormData objectForKeyedSubscript:v10];
  v12 = [v11 fieldIDToSingleFieldData];
  v13 = [v12 objectForKeyedSubscript:v9];

  [v13 setAutoFillOfferedType:a3];
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

+ (int64_t)formFieldTypeForFormControlMetadata:(id)a3 formMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 looksLikeOneTimeCodeField] & 1) == 0)
  {
    v8 = [v6 type] - 3;
    v9 = [v5 classification];
    if ([v5 isSecureTextField] & 1) != 0 || (WBSIsEqual())
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
        if ([WBSFormDataController isFieldUnidentified:v5]|| [WBSFormDataController textFieldLooksLikeCreditCardFormField:v5])
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

        v12 = [v5 addressBookLabel];
        v13 = [v12 isEqualToString:@"email"];

        v14 = [v5 isLabeledUsernameField];
        if ([v6 type] == 4 && ((v13 | v14) & 1) != 0)
        {
          v7 = 23;
          goto LABEL_13;
        }

        v15 = [v6 userNameElementUniqueID];
        v16 = [v5 uniqueID];
        if ([v6 type] == 3 && (objc_msgSend(v15, "isEqualToString:", v16) & 1) != 0)
        {
          v7 = 23;
LABEL_63:

          goto LABEL_13;
        }

        v17 = [v5 addressBookLabel];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 lowercaseString];
          v20 = [WBSFormDataController specifierForAddressBookLabel:v19];

          v21 = [v20 property];
          v22 = [v21 isEqualToString:*MEMORY[0x1E69C8AD8]];

          if (v22)
          {
            v7 = 7;
LABEL_48:

LABEL_62:
            goto LABEL_63;
          }

          v23 = [v20 property];
          v24 = [v23 isEqualToString:*MEMORY[0x1E69C8AC0]];

          if (v24)
          {
            v7 = 8;
            goto LABEL_48;
          }

          v25 = [v20 property];
          v26 = [v25 isEqualToString:*MEMORY[0x1E69C8AD0]];

          if (v26)
          {
            v7 = 9;
            goto LABEL_48;
          }

          v27 = [v20 property];
          v28 = [v27 isEqualToString:*MEMORY[0x1E69C8AC8]];

          if (v28)
          {
            v7 = 10;
            goto LABEL_48;
          }

          v29 = [v20 property];
          v30 = [v29 isEqualToString:*MEMORY[0x1E69C8AA0]];

          if (v30)
          {
            v7 = 18;
            goto LABEL_48;
          }

          v31 = [v20 property];
          v32 = [v31 isEqualToString:*MEMORY[0x1E69C8AB8]];

          if (v32)
          {
            v7 = 19;
            goto LABEL_48;
          }

          v33 = [v20 property];
          v34 = [v33 isEqualToString:*MEMORY[0x1E69C8A98]];

          if (v34)
          {
            v7 = 17;
            goto LABEL_48;
          }

          v35 = [v20 property];
          v36 = [v35 isEqualToString:*MEMORY[0x1E69C8AB0]];

          if (v36)
          {
            v7 = 20;
            goto LABEL_48;
          }

          v37 = [v20 property];
          v38 = [v37 isEqualToString:@"URLs"];

          if (v38)
          {
            v7 = 21;
            goto LABEL_48;
          }

          v39 = [v20 property];
          v40 = [v39 isEqualToString:*MEMORY[0x1E69C8A90]];

          if (v40)
          {
            v41 = [v20 component];
            v42 = [v41 isEqualToString:@"Street"];

            if (v42)
            {
              v7 = 12;
              goto LABEL_48;
            }

            v43 = [v20 component];
            v44 = [v43 isEqualToString:@"City"];

            if (v44)
            {
              v7 = 13;
              goto LABEL_48;
            }

            v45 = [v20 component];
            v46 = [v45 isEqualToString:@"State"];

            if (v46)
            {
              v7 = 14;
              goto LABEL_48;
            }

            v47 = [v20 component];
            v48 = [v47 isEqualToString:@"Country"];

            if (v48)
            {
              v7 = 15;
              goto LABEL_48;
            }

            v49 = [v20 component];
            v50 = [v49 isEqualToString:@"ZIP"];

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

- (unint64_t)_elementTypeForFormControlMetadata:(id)a3
{
  v3 = a3;
  if ([v3 isTextField])
  {
    v4 = [v3 tagName];
    if ([v4 isEqualToString:@"TEXTAREA"])
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
    v6 = [v3 radioButtonInfo];

    if (v6)
    {
      v5 = 2;
    }

    else
    {
      v7 = [v3 selectElementInfo];

      v5 = v7 != 0;
    }
  }

  return v5;
}

@end