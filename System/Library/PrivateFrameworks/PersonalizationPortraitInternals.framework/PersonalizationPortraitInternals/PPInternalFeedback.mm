@interface PPInternalFeedback
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BOOL)isEqual:(id)equal;
- (PPInternalFeedback)initWithFeedbackItems:(id)items timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id mappingId:(id)mappingId;
- (PPInternalFeedback)initWithFeedbackItems:(id)items timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id mappingId:(id)mappingId storeType:(unsigned __int8)type build:(id)build;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  serialize = [(PPInternalFeedback *)self serialize];
  v5 = [(PPStorableFeedback *)v3 initWithData:serialize];
  dictionaryRepresentation = [(PPStorableFeedback *)v5 dictionaryRepresentation];

  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:10 error:0];

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
  selfCopy = self;
  feedbackItems = [(PPBaseFeedback *)self feedbackItems];
  v6 = [feedbackItems countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(feedbackItems);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_opt_new();
        itemString = [v10 itemString];
        [v11 setItemString:itemString];

        [v11 setFeedbackType:{objc_msgSend(v10, "itemFeedbackType")}];
        [v4 addObject:v11];
      }

      v7 = [feedbackItems countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [v3 setFeedbackItems:v4];
  timestamp = [(PPBaseFeedback *)selfCopy timestamp];
  [timestamp timeIntervalSince1970];
  [v3 setSecondsFrom1970:?];

  clientIdentifier = [(PPBaseFeedback *)selfCopy clientIdentifier];
  [v3 setClientIdentifier:clientIdentifier];

  clientBundleId = [(PPBaseFeedback *)selfCopy clientBundleId];
  [v3 setClientBundleIdentifier:clientBundleId];

  mappingId = [(PPBaseFeedback *)selfCopy mappingId];
  [v3 setMappingId:mappingId];

  [v3 setStoreType:{-[PPInternalFeedback storeType](selfCopy, "storeType")}];
  build = [(PPInternalFeedback *)selfCopy build];
  [v3 setBuild:build];

  data = [v3 data];

  v19 = *MEMORY[0x277D85DE8];

  return data;
}

- (PPInternalFeedback)initWithFeedbackItems:(id)items timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id mappingId:(id)mappingId storeType:(unsigned __int8)type build:(id)build
{
  buildCopy = build;
  v20.receiver = self;
  v20.super_class = PPInternalFeedback;
  v17 = [(PPBaseFeedback *)&v20 initWithFeedbackItems:items timestamp:timestamp clientIdentifier:identifier clientBundleId:id mappingId:mappingId];
  v18 = v17;
  if (v17)
  {
    v17->_storeType = type;
    objc_storeStrong(&v17->_build, build);
  }

  return v18;
}

- (PPInternalFeedback)initWithFeedbackItems:(id)items timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id mappingId:(id)mappingId
{
  v12 = MEMORY[0x277D3A578];
  mappingIdCopy = mappingId;
  idCopy = id;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  itemsCopy = items;
  osBuild = [v12 osBuild];
  v19 = osBuild;
  v20 = @"unknown-build";
  if (osBuild)
  {
    v20 = osBuild;
  }

  v21 = [(PPInternalFeedback *)self initWithFeedbackItems:itemsCopy timestamp:timestampCopy clientIdentifier:identifierCopy clientBundleId:idCopy mappingId:mappingIdCopy storeType:0 build:v20];

  return v21;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (version == 1)
  {
    v28 = dataCopy;
    v6 = [[PPStorableFeedback alloc] initWithData:dataCopy];
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(PPStorableFeedback *)v6 secondsFrom1970];
    v27 = [v7 initWithTimeIntervalSince1970:?];
    v8 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    feedbackItems = [(PPStorableFeedback *)v6 feedbackItems];
    v10 = [feedbackItems countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(feedbackItems);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x277D3A3C0]);
          itemString = [v14 itemString];
          v17 = [v15 initWithItemString:itemString itemFeedbackType:{objc_msgSend(v14, "feedbackType")}];
          [v8 addObject:v17];
        }

        v11 = [feedbackItems countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v18 = [PPInternalFeedback alloc];
    clientIdentifier = [(PPStorableFeedback *)v6 clientIdentifier];
    clientBundleIdentifier = [(PPStorableFeedback *)v6 clientBundleIdentifier];
    mappingId = [(PPStorableFeedback *)v6 mappingId];
    storeType = [(PPStorableFeedback *)v6 storeType];
    build = [(PPStorableFeedback *)v6 build];
    v24 = [(PPInternalFeedback *)v18 initWithFeedbackItems:v8 timestamp:v27 clientIdentifier:clientIdentifier clientBundleId:clientBundleIdentifier mappingId:mappingId storeType:storeType build:build];

    dataCopy = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end