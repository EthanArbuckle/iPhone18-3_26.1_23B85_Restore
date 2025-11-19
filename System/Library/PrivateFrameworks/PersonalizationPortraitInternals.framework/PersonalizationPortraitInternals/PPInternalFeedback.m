@interface PPInternalFeedback
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (PPInternalFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7;
- (PPInternalFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7 storeType:(unsigned __int8)a8 build:(id)a9;
- (id)json;
- (id)serialize;
- (unint64_t)hash;
@end

@implementation PPInternalFeedback

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PPInternalFeedback;
  return [(PPBaseFeedback *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v13.receiver = self;
    v13.super_class = PPInternalFeedback;
    if ([(PPBaseFeedback *)&v13 isEqual:v5])
    {
      v6 = self->_build;
      v7 = v5[7];
      if (!(v6 | v7))
      {
LABEL_4:
        v8 = self->_storeType == *(v5 + 48);
LABEL_14:

        goto LABEL_15;
      }

      v9 = v7;
      if (v6)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
      }

      else
      {
        v11 = [v6 isEqualToString:v7];

        if (v11)
        {
          goto LABEL_4;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)json
{
  v3 = [PPStorableFeedback alloc];
  v4 = [(PPInternalFeedback *)self serialize];
  v5 = [(PPStorableFeedback *)v3 initWithData:v4];
  v6 = [(PPStorableFeedback *)v5 dictionaryRepresentation];

  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:10 error:0];

  return v7;
}

- (id)serialize
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = self;
  v5 = [(PPBaseFeedback *)self feedbackItems];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_opt_new();
        v12 = [v10 itemString];
        [v11 setItemString:v12];

        [v11 setFeedbackType:{objc_msgSend(v10, "itemFeedbackType")}];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [v3 setFeedbackItems:v4];
  v13 = [(PPBaseFeedback *)v21 timestamp];
  [v13 timeIntervalSince1970];
  [v3 setSecondsFrom1970:?];

  v14 = [(PPBaseFeedback *)v21 clientIdentifier];
  [v3 setClientIdentifier:v14];

  v15 = [(PPBaseFeedback *)v21 clientBundleId];
  [v3 setClientBundleIdentifier:v15];

  v16 = [(PPBaseFeedback *)v21 mappingId];
  [v3 setMappingId:v16];

  [v3 setStoreType:{-[PPInternalFeedback storeType](v21, "storeType")}];
  v17 = [(PPInternalFeedback *)v21 build];
  [v3 setBuild:v17];

  v18 = [v3 data];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (PPInternalFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7 storeType:(unsigned __int8)a8 build:(id)a9
{
  v16 = a9;
  v20.receiver = self;
  v20.super_class = PPInternalFeedback;
  v17 = [(PPBaseFeedback *)&v20 initWithFeedbackItems:a3 timestamp:a4 clientIdentifier:a5 clientBundleId:a6 mappingId:a7];
  v18 = v17;
  if (v17)
  {
    v17->_storeType = a8;
    objc_storeStrong(&v17->_build, a9);
  }

  return v18;
}

- (PPInternalFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7
{
  v12 = MEMORY[0x277D3A578];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 osBuild];
  v19 = v18;
  v20 = @"unknown-build";
  if (v18)
  {
    v20 = v18;
  }

  v21 = [(PPInternalFeedback *)self initWithFeedbackItems:v17 timestamp:v16 clientIdentifier:v15 clientBundleId:v14 mappingId:v13 storeType:0 build:v20];

  return v21;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a4 == 1)
  {
    v28 = v5;
    v6 = [[PPStorableFeedback alloc] initWithData:v5];
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(PPStorableFeedback *)v6 secondsFrom1970];
    v27 = [v7 initWithTimeIntervalSince1970:?];
    v8 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [(PPStorableFeedback *)v6 feedbackItems];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x277D3A3C0]);
          v16 = [v14 itemString];
          v17 = [v15 initWithItemString:v16 itemFeedbackType:{objc_msgSend(v14, "feedbackType")}];
          [v8 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v18 = [PPInternalFeedback alloc];
    v19 = [(PPStorableFeedback *)v6 clientIdentifier];
    v20 = [(PPStorableFeedback *)v6 clientBundleIdentifier];
    v21 = [(PPStorableFeedback *)v6 mappingId];
    v22 = [(PPStorableFeedback *)v6 storeType];
    v23 = [(PPStorableFeedback *)v6 build];
    v24 = [(PPInternalFeedback *)v18 initWithFeedbackItems:v8 timestamp:v27 clientIdentifier:v19 clientBundleId:v20 mappingId:v21 storeType:v22 build:v23];

    v5 = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end