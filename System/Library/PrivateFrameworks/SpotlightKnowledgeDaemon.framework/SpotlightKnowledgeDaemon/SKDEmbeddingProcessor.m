@interface SKDEmbeddingProcessor
- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4;
- (SKDEmbeddingProcessor)init;
- (SKDEmbeddingProcessor)initWithProcessor:(id)a3;
- (id)processRecord:(id)a3 bundleID:(id)a4;
- (id)processedAttributes;
- (id)requiredAttributes;
- (void)load;
@end

@implementation SKDEmbeddingProcessor

- (SKDEmbeddingProcessor)init
{
  v3 = [MEMORY[0x277D65798] sharedProcessor];
  v4 = [(SKDEmbeddingProcessor *)self initWithProcessor:v3];

  return v4;
}

- (SKDEmbeddingProcessor)initWithProcessor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDEmbeddingProcessor;
  v6 = [(SKDRecordProcessor *)&v9 initWithName:@"embedding"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processor, a3);
  }

  return v7;
}

- (id)requiredAttributes
{
  if (requiredAttributes_onceEmbReqToken != -1)
  {
    [SKDEmbeddingProcessor requiredAttributes];
  }

  v3 = requiredAttributes_sEmbeddingReqAttributes;

  return v3;
}

void __43__SKDEmbeddingProcessor_requiredAttributes__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC31F0];
  v5[0] = *MEMORY[0x277CC31A0];
  v5[1] = v0;
  v1 = *MEMORY[0x277CC2760];
  v5[2] = *MEMORY[0x277CC3140];
  v5[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = requiredAttributes_sEmbeddingReqAttributes;
  requiredAttributes_sEmbeddingReqAttributes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)processedAttributes
{
  if (processedAttributes_onceEmbToken != -1)
  {
    [SKDEmbeddingProcessor processedAttributes];
  }

  v3 = processedAttributes_sEmbeddingAttributes;

  return v3;
}

void __44__SKDEmbeddingProcessor_processedAttributes__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC30E0];
  v4[0] = *MEMORY[0x277CC2FC8];
  v4[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = processedAttributes_sEmbeddingAttributes;
  processedAttributes_sEmbeddingAttributes = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)willProcessRecord:(id)a3 bundleID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = SKDEmbeddingProcessor;
  if ([(SKDRecordProcessor *)&v22 willProcessRecord:v6 bundleID:a4])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(SKDEmbeddingProcessor *)self processedAttributes];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v6 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];

          if (v12)
          {
            v14 = [(SKDRecordProcessor *)self logger];
            v15 = +[SKDPipelineEvent alreadyProcessedEvent];
            [v14 logEvent:v15 level:6];

            v13 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)processRecord:(id)a3 bundleID:(id)a4
{
  v69[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [SKDRecordUpdate alloc];
  v9 = [objc_opt_class() description];
  v10 = [(SKDRecordUpdate *)v8 initWithStatus:0 identifier:v9 bundleID:v7];

  v11 = [(SKDRecordProcessor *)self name];
  [(SKDItemUpdate *)v10 setPipeline:v11];

  v12 = [v6 objectForKey:@"_kMDItemExternalID"];
  v13 = [v6 objectForKey:@"_kMDItemProtectionClass"];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC31A0]];
  -[SKDItemUpdate setTextContentLength:](v10, "setTextContentLength:", [v14 length]);
  v66 = v12;
  v15 = [(SKGProcessor *)self->_processor itemFromRecord:v6 referenceIdentifier:v12 bundleIdentifier:v7 protectionClass:v13];
  context = objc_autoreleasePoolPush();
  v16 = [(SKDRecordProcessor *)self logger];
  v17 = [v16 trackingEventBeginWithName:@"embeddings" event:v10];

  processor = self->_processor;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __48__SKDEmbeddingProcessor_processRecord_bundleID___block_invoke;
  v67[3] = &unk_27893E2E8;
  v67[4] = self;
  v19 = [(SKGProcessor *)processor generateEmbeddingsForRecord:v6 processedItem:v15 isPriority:0 workCost:0 cancelBlock:v67];
  v20 = [(SKDRecordProcessor *)self logger];
  [v20 trackingEventEnd:v17];

  if ([(SKDRecordProcessor *)self suspended]|| !v19)
  {
    if ([(SKDRecordProcessor *)self suspended])
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    v28 = v10;
  }

  else
  {
    if ([v15 errorProcessingEmbeddings])
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v68 = @"messageInfoKey";
      v69[0] = @"error generating embeddings";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      v23 = [v21 initWithDomain:@"SKDEmbeddingProcessorErrorDomain" code:-1000 userInfo:v22];

      v24 = [[SKDRecordUpdate alloc] initWithStatus:4 identifier:v7 info:v23];
      v25 = [(SKDRecordProcessor *)self logger];
      [v25 logEvent:v24 level:6];

      v26 = v24;
      goto LABEL_20;
    }

    v29 = [(SKDRecordProcessor *)self marker];
    [(SKDItemUpdate *)v10 addAttribute:v29 value:MEMORY[0x277CBEC38]];

    if ([v15 didProcessEmbeddings])
    {
      v64 = [v15 embedding];
      if (v64)
      {
        v30 = [v64 secondaryEmbeddings];
        v31 = [v30 count];

        if (v31)
        {
          v59 = objc_alloc(MEMORY[0x277CC3520]);
          v56 = [v64 format];
          v54 = [v64 size];
          v32 = [v64 version];
          v33 = [v64 secondaryEmbeddings];
          v60 = [v59 initWithFormat:v56 dimension:v54 version:v32 vectors:v33];

          [(SKDItemUpdate *)v10 addAttribute:*MEMORY[0x277CC30E0] value:v60];
          v34 = MEMORY[0x277CCABB0];
          v35 = [MEMORY[0x277D657A0] sharedContext];
          v36 = [v34 numberWithInteger:{objc_msgSend(v35, "embeddingModelVersion")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemMediaEmbeddingVersion" value:v36];
        }

        v37 = [v64 primaryEmbeddings];
        v38 = [v37 count];

        if (v38)
        {
          v61 = objc_alloc(MEMORY[0x277CC3520]);
          v57 = [v64 format];
          v55 = [v64 size];
          v39 = [v64 version];
          v40 = [v64 primaryEmbeddings];
          v62 = [v61 initWithFormat:v57 dimension:v55 version:v39 vectors:v40];

          [(SKDItemUpdate *)v10 addAttribute:*MEMORY[0x277CC2FC8] value:v62];
          v41 = MEMORY[0x277CCABB0];
          v42 = [MEMORY[0x277D657A0] sharedContext];
          v43 = [v41 numberWithInteger:{objc_msgSend(v42, "embeddingModelVersion")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemMediaEmbeddingVersion" value:v43];

          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v64, "firstChunkLength")}];
          [(SKDItemUpdate *)v10 addAttribute:@"_kMDItemTextChunkTokenLength" value:v44];
        }

        if ([v64 isFileSystemConsistent])
        {
          v45 = *MEMORY[0x277CC2B50];
          v46 = [v64 fsIndexDataContentVersion];
          [(SKDItemUpdate *)v10 addAttribute:v45 value:v46];

          v58 = *MEMORY[0x277CC2B40];
          v47 = MEMORY[0x277D65798];
          v48 = MEMORY[0x277CCABB0];
          v63 = [MEMORY[0x277D657A0] sharedContext];
          v49 = [v48 numberWithInteger:{objc_msgSend(v63, "embeddingModelVersion")}];
          v50 = [v47 embeddingVersionDataWithVersion:v49];
          [(SKDItemUpdate *)v10 addAttribute:v58 value:v50];
        }
      }
    }

    v28 = v10;
    v27 = 2;
  }

  [(SKDEvent *)v28 updateStatus:v27];
  v51 = [(SKDRecordProcessor *)self logger];
  [v51 logEvent:v10 level:6];

  v26 = v10;
LABEL_20:

  objc_autoreleasePoolPop(context);
  v52 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)load
{
  v3 = [(SKDRecordProcessor *)self logger];
  v4 = +[SKDPipelineEvent loadStartedEvent];
  v8 = [v3 trackingEventBeginWithName:@"embeddings" event:v4];

  LOBYTE(v4) = [(SKGProcessor *)self->_processor loadEmbedder];
  v5 = [(SKDRecordProcessor *)self logger];
  if (v4)
  {
    +[SKDPipelineEvent loadSuceededEvent];
  }

  else
  {
    +[SKDPipelineEvent loadFailedEvent];
  }
  v6 = ;
  [v5 logEvent:v6];

  v7 = [(SKDRecordProcessor *)self logger];
  [v7 trackingEventEnd:v8];
}

@end