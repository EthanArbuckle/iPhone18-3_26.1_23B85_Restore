@interface PKAnalyticsReporter(PKIdentity)
+ (id)identityProductSubtypeForPass:()PKIdentity;
+ (id)identityViewDidAppearReportEvent:()PKIdentity;
+ (uint64_t)_maximumRetentionPeriodForElements:()PKIdentity;
+ (void)updateIdentityEvent:()PKIdentity withPass:;
@end

@implementation PKAnalyticsReporter(PKIdentity)

+ (id)identityProductSubtypeForPass:()PKIdentity
{
  secureElementPass = [a3 secureElementPass];
  identityType = [secureElementPass identityType];

  if ((identityType - 1) > 4)
  {
    v5 = MEMORY[0x1E69BABC0];
  }

  else
  {
    v5 = qword_1E8020A08[identityType - 1];
  }

  v6 = *v5;

  return v6;
}

+ (void)updateIdentityEvent:()PKIdentity withPass:
{
  v6 = a4;
  v7 = a3;
  v12 = [self identityProductSubtypeForPass:v6];
  [v7 setObject:*MEMORY[0x1E69BA980] forKeyedSubscript:*MEMORY[0x1E69BAC90]];
  [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
  paymentPass = [v6 paymentPass];
  issuerAdministrativeAreaCode = [paymentPass issuerAdministrativeAreaCode];
  [v7 setObject:issuerAdministrativeAreaCode forKeyedSubscript:*MEMORY[0x1E69BA960]];

  paymentPass2 = [v6 paymentPass];

  issuerCountryCode = [paymentPass2 issuerCountryCode];
  [v7 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x1E69BAC78]];

  [v7 setObject:*MEMORY[0x1E69BAB50] forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
}

+ (id)identityViewDidAppearReportEvent:()PKIdentity
{
  v44[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  releasedData = [v3 releasedData];
  documentType = [releasedData documentType];

  releasedData2 = [v3 releasedData];
  elements = [releasedData2 elements];

  v39 = elements;
  v7 = [[PKISO180135RecognizedElements alloc] initWithDocumentType:documentType documentElements:elements];
  retainedElements = [(PKISO180135RecognizedElements *)v7 retainedElements];
  nonRetainedElements = [(PKISO180135RecognizedElements *)v7 nonRetainedElements];
  displayOnlyElements = [(PKISO180135RecognizedElements *)v7 displayOnlyElements];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = retainedElements;
  [v11 addObjectsFromArray:retainedElements];
  [v11 addObjectsFromArray:nonRetainedElements];
  [v11 addObjectsFromArray:displayOnlyElements];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v12 addObjectsFromArray:nonRetainedElements];
  [v12 addObjectsFromArray:displayOnlyElements];
  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = *MEMORY[0x1E69BA818];
  v15 = *MEMORY[0x1E69BABE8];
  v43[0] = *MEMORY[0x1E69BA680];
  v43[1] = v15;
  v16 = *MEMORY[0x1E69BAAA8];
  v44[0] = v14;
  v44[1] = v16;
  v43[2] = *MEMORY[0x1E69BAC90];
  v44[2] = *MEMORY[0x1E69BA980];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v18 = [v13 initWithDictionary:v17];

  v19 = __68__PKAnalyticsReporter_PKIdentity__identityViewDidAppearReportEvent___block_invoke(v11);
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BA5C8]];

  v20 = __68__PKAnalyticsReporter_PKIdentity__identityViewDidAppearReportEvent___block_invoke(retainedElements);
  [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BA5D0]];

  v21 = __68__PKAnalyticsReporter_PKIdentity__identityViewDidAppearReportEvent___block_invoke(v12);
  [v18 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69BA5C0]];

  v22 = [self _maximumRetentionPeriodForElements:elements];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
  stringValue = [v23 stringValue];
  [v18 setObject:stringValue forKeyedSubscript:*MEMORY[0x1E69BA5D8]];

  releasedData3 = [v3 releasedData];
  application = [releasedData3 application];
  client = [application client];

  if (client == 2)
  {
    v28 = MEMORY[0x1E69BA998];
  }

  else
  {
    v28 = MEMORY[0x1E69BB3A8];
  }

  if (client == 1)
  {
    v28 = MEMORY[0x1E69BA930];
  }

  [v18 setObject:*v28 forKeyedSubscript:*MEMORY[0x1E69BA9A0]];
  transactionDate = [v3 transactionDate];
  v30 = PKDateIgnoringTime();

  v31 = MEMORY[0x1E696AEC0];
  [v30 timeIntervalSince1970];
  v33 = [v31 stringWithFormat:@"%f", v32];
  [v18 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69BB440]];

  merchant = [v3 merchant];
  displayName = [merchant displayName];
  [v18 setObject:displayName forKeyedSubscript:*MEMORY[0x1E69BAAB8]];

  merchant2 = [v3 merchant];
  merchantIdentifier = [merchant2 merchantIdentifier];
  [v18 setObject:merchantIdentifier forKeyedSubscript:*MEMORY[0x1E69BAAD8]];

  return v18;
}

+ (uint64_t)_maximumRetentionPeriodForElements:()PKIdentity
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    retentionPeriod = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 retentionPeriod] > retentionPeriod)
        {
          retentionPeriod = [v9 retentionPeriod];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    retentionPeriod = 0;
  }

  return retentionPeriod;
}

@end