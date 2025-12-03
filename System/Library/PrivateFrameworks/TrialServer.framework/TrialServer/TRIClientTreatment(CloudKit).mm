@interface TRIClientTreatment(CloudKit)
+ (id)assetURLsFromCKRecord:()CloudKit assetIndexes:;
+ (id)treatmentFromCKRecord:()CloudKit treatmentSize:;
@end

@implementation TRIClientTreatment(CloudKit)

+ (id)treatmentFromCKRecord:()CloudKit treatmentSize:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  *a4 = 0;
  values = [v7 values];
  if (!values)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatment+CloudKit.m" lineNumber:30 description:{@"Expression was unexpectedly nil/false: %@", @"record.values"}];
  }

  v9 = [values triStringValueForField:*MEMORY[0x277D739D8] isNestedValue:0];
  if (v9)
  {
    v10 = [values triDataForField:*MEMORY[0x277D739C8]];
    *a4 = [v10 length];
    v11 = [values triStringValueForField:*MEMORY[0x277D739D0] isNestedValue:0];
    v12 = [values triDataForField:*MEMORY[0x277D739C0]];
    v13 = v12;
    if (v10)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v12 == 0)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v9;
        _os_log_error_impl(&dword_26F567000, &v17->super, OS_LOG_TYPE_ERROR, "could not create treatment artifact from CloudKit record for %@ due to missing fields", buf, 0xCu);
      }

      v16 = 0;
    }

    else
    {
      v17 = [[TRIClientTreatmentArtifact alloc] initWithEncodedTreatmentDefinition:v10 encodedTreatmentDefinitionSignature:v11 publicCertificate:v12];
      if ([(TRIClientTreatmentArtifact *)v17 isValidWithTreatmentId:v9])
      {
        v26 = 0;
        v16 = [MEMORY[0x277D73AF0] parseFromData:v10 error:&v26];
        v19 = v26;
        if (v16)
        {
          v20 = v16;
        }

        else
        {
          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            recordID = [v7 recordID];
            *buf = 138412546;
            v28 = recordID;
            v29 = 2114;
            v30 = v19;
            _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "could not parse TRIClientTreatment from CloudKit record %@: %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v9;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "invalid signature for treatment id %@", buf, 0xCu);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "could not get treatmentId from CloudKit record", buf, 2u);
    }

    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)assetURLsFromCKRecord:()CloudKit assetIndexes:
{
  v7 = a3;
  v8 = a4;
  values = [v7 values];
  if (!values)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatment+CloudKit.m" lineNumber:75 description:{@"Expression was unexpectedly nil/false: %@", @"record.values"}];
  }

  v10 = [values triDataForField:*MEMORY[0x277D739C0]];
  if (v10)
  {
    v11 = [TRISignatureKey keyFromData:v10];
    if (v11)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__1;
      v26 = __Block_byref_object_dispose__1;
      v27 = objc_opt_new();
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__TRIClientTreatment_CloudKit__assetURLsFromCKRecord_assetIndexes___block_invoke;
      v15[3] = &unk_279DDF6D0;
      v16 = values;
      v19 = &v22;
      v20 = a2;
      selfCopy = self;
      v17 = v11;
      v18 = v7;
      [v8 enumerateRangesUsingBlock:v15];
      v12 = v23[5];

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end