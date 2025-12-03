@interface CLSTaxonomyBasedModel
- (BOOL)nodeIsSupported:(id)supported;
- (BOOL)nodeRefIsSupported:(void *)supported;
- (CLSTaxonomyBasedModel)initWithSceneTaxonomy:(id)taxonomy;
- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)names withThresholdType:(unint64_t)type;
- (id)nodeForSignalIdentifier:(unint64_t)identifier;
- (id)sceneIdentifierBySceneNameForSceneNames:(id)names;
- (id)sceneIdentifiersForSceneNames:(id)names includingChildScenes:(BOOL)scenes;
- (id)sceneIdentifiersFromSceneClassifications:(id)classifications passingThresholdOfType:(unint64_t)type;
- (id)sceneNamesFromSceneClassifications:(id)classifications passingThresholdOfType:(unint64_t)type;
- (id)taxonomyNodeForName:(id)name;
- (id)taxonomyNodeForSceneIdentifier:(unint64_t)identifier;
- (void)taxonomyNodeRefForName:(id)name;
- (void)taxonomyNodeRefForSceneIdentifier:(unint64_t)identifier;
@end

@implementation CLSTaxonomyBasedModel

- (void)taxonomyNodeRefForName:(id)name
{
  result = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeRefForName:name];
  if (result)
  {
    v5 = result;
    if ([(CLSTaxonomyBasedModel *)self nodeRefIsSupported:result])
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)taxonomyNodeRefForSceneIdentifier:(unint64_t)identifier
{
  result = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeRefForExtendedSceneClassId:identifier];
  if (result)
  {
    v5 = result;
    if ([(CLSTaxonomyBasedModel *)self nodeRefIsSupported:result])
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)taxonomyNodeForName:(id)name
{
  v4 = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeForName:name];
  if (v4 && ![(CLSTaxonomyBasedModel *)self nodeIsSupported:v4])
  {

    v4 = 0;
  }

  return v4;
}

- (id)taxonomyNodeForSceneIdentifier:(unint64_t)identifier
{
  v4 = [(PFSceneTaxonomy *)self->_sceneTaxonomy nodeForExtendedSceneClassId:identifier];
  if (v4 && ![(CLSTaxonomyBasedModel *)self nodeIsSupported:v4])
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)nodeRefIsSupported:(void *)supported
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CLSTaxonomyBasedModel.m" lineNumber:265 description:@"Subclasses need to implement this"];

  return 0;
}

- (BOOL)nodeIsSupported:(id)supported
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CLSTaxonomyBasedModel.m" lineNumber:260 description:@"Subclasses need to implement this"];

  return 0;
}

- (id)sceneIdentifiersFromSceneClassifications:(id)classifications passingThresholdOfType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = classificationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        extendedSceneIdentifier = [v13 extendedSceneIdentifier];
        if ([(CLSTaxonomyBasedModel *)self taxonomyNodeRefForSceneIdentifier:extendedSceneIdentifier])
        {
          v15 = 1.79769313e308;
          if (type > 3)
          {
            switch(type)
            {
              case 4uLL:
                PFSceneTaxonomyNodeF1Threshold();
                break;
              case 5uLL:
                PFSceneTaxonomyNodeGraphHighPrecisionThreshold();
                break;
              case 6uLL:
                PFSceneTaxonomyNodeGraphHighRecallThreshold();
                break;
              default:
                goto LABEL_21;
            }
          }

          else
          {
            switch(type)
            {
              case 1uLL:
                PFSceneTaxonomyNodeSearchThreshold();
                break;
              case 2uLL:
                PFSceneTaxonomyNodeF0Point5Threshold();
                break;
              case 3uLL:
                PFSceneTaxonomyNodeF2Threshold();
                break;
              default:
LABEL_21:
                [v13 confidence];
                if (v17 >= v15)
                {
                  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:extendedSceneIdentifier];
                  [v7 addObject:v18];
                }

                continue;
            }
          }

          v15 = v16;
          goto LABEL_21;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)sceneNamesFromSceneClassifications:(id)classifications passingThresholdOfType:(unint64_t)type
{
  v25 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = classificationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (-[CLSTaxonomyBasedModel taxonomyNodeRefForSceneIdentifier:](self, "taxonomyNodeRefForSceneIdentifier:", [v13 extendedSceneIdentifier]))
        {
          v14 = 1.79769313e308;
          if (type > 3)
          {
            switch(type)
            {
              case 4uLL:
                PFSceneTaxonomyNodeF1Threshold();
                break;
              case 5uLL:
                PFSceneTaxonomyNodeGraphHighPrecisionThreshold();
                break;
              case 6uLL:
                PFSceneTaxonomyNodeGraphHighRecallThreshold();
                break;
              default:
                goto LABEL_21;
            }
          }

          else
          {
            switch(type)
            {
              case 1uLL:
                PFSceneTaxonomyNodeSearchThreshold();
                break;
              case 2uLL:
                PFSceneTaxonomyNodeF0Point5Threshold();
                break;
              case 3uLL:
                PFSceneTaxonomyNodeF2Threshold();
                break;
              default:
LABEL_21:
                [v13 confidence];
                if (v16 >= v14)
                {
                  v17 = PFSceneTaxonomyNodeName();
                  [v7 addObject:v17];
                }

                continue;
            }
          }

          v14 = v15;
          goto LABEL_21;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)names withThresholdType:(unint64_t)type
{
  v31 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = namesCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v10 = MEMORY[0x277D86220];
    typeCopy = type;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([(CLSTaxonomyBasedModel *)self taxonomyNodeRefForName:v12])
        {
          if (type > 3)
          {
            switch(type)
            {
              case 4uLL:
                PFSceneTaxonomyNodeF1Threshold();
                goto LABEL_22;
              case 5uLL:
                PFSceneTaxonomyNodeGraphHighPrecisionThreshold();
                goto LABEL_22;
              case 6uLL:
                PFSceneTaxonomyNodeGraphHighRecallThreshold();
                goto LABEL_22;
            }
          }

          else
          {
            switch(type)
            {
              case 1uLL:
                PFSceneTaxonomyNodeSearchThreshold();
                goto LABEL_22;
              case 2uLL:
                PFSceneTaxonomyNodeF0Point5Threshold();
                goto LABEL_22;
              case 3uLL:
                PFSceneTaxonomyNodeF2Threshold();
LABEL_22:
                if (v13 != 1.79769313e308)
                {
                  v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:PFSceneTaxonomyNodeExtendedSceneClassId()];
                  [v20 setObject:v15 forKeyedSubscript:v16];

                  type = typeCopy;
                  goto LABEL_26;
                }

                break;
            }
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v14 = PFSceneTaxonomyNodeName();
            *buf = 138412546;
            v27 = v14;
            v28 = 1024;
            typeCopy2 = type;
            _os_log_error_impl(&dword_25E5F0000, v10, OS_LOG_TYPE_ERROR, "No confidence threshold found for node with name %@ and thresholdType %d", buf, 0x12u);
          }

          goto LABEL_26;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v12;
          _os_log_error_impl(&dword_25E5F0000, v10, OS_LOG_TYPE_ERROR, "%@ is not a scene name", buf, 0xCu);
        }

LABEL_26:
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)sceneIdentifiersForSceneNames:(id)names includingChildScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  v33 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = namesCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138412290;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        lowercaseString = [v13 lowercaseString];
        if (([lowercaseString isEqualToString:v13] & 1) == 0)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v31 = v13;
            _os_log_impl(&dword_25E5F0000, v11, OS_LOG_TYPE_INFO, "Scene names should be lower case, %@ is not", buf, 0xCu);
          }

          v15 = lowercaseString;

          v13 = v15;
        }

        v16 = [(CLSTaxonomyBasedModel *)self taxonomyNodeForName:v13, v21];
        v17 = v16;
        if (v16)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v16, "extendedSceneClassId")}];
          [v6 addObject:v18];

          if (scenesCopy)
          {
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __76__CLSTaxonomyBasedModel_sceneIdentifiersForSceneNames_includingChildScenes___block_invoke;
            v24[3] = &unk_279A28058;
            v24[4] = self;
            v25 = v6;
            [v17 traverse:1 visitor:v24];
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v31 = v13;
          _os_log_error_impl(&dword_25E5F0000, v11, OS_LOG_TYPE_ERROR, "[CLSSceneModel] %@ is not a scene name", buf, 0xCu);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __76__CLSTaxonomyBasedModel_sceneIdentifiersForSceneNames_includingChildScenes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) nodeIsSupported:v3])
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "extendedSceneClassId")}];
    [v4 addObject:v5];
  }

  return 0;
}

- (id)sceneIdentifierBySceneNameForSceneNames:(id)names
{
  v29 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = namesCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    v10 = MEMORY[0x277D86220];
    *&v7 = 138412290;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        lowercaseString = [v12 lowercaseString];
        if (([lowercaseString isEqualToString:v12] & 1) == 0)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v27 = v12;
            _os_log_impl(&dword_25E5F0000, v10, OS_LOG_TYPE_INFO, "Scene names should be lower case, %@ is not", buf, 0xCu);
          }

          v14 = lowercaseString;

          v12 = v14;
        }

        v15 = [(CLSTaxonomyBasedModel *)self taxonomyNodeForName:v12, v20];
        v16 = v15;
        if (v15)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "extendedSceneClassId")}];
          [v5 setObject:v17 forKeyedSubscript:v12];
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          v27 = v12;
          _os_log_error_impl(&dword_25E5F0000, v10, OS_LOG_TYPE_ERROR, "[CLSSceneModel] %@ is not a scene name", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)nodeForSignalIdentifier:(unint64_t)identifier
{
  signalNodeBySignalIdentifier = self->_signalNodeBySignalIdentifier;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)signalNodeBySignalIdentifier objectForKeyedSubscript:v6];

  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (v7 != null)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = [(CLSTaxonomyBasedModel *)self taxonomyNodeForSceneIdentifier:identifier];
    if (v7)
    {
      v9 = [[CLSTaxonomyBasedSignalNode alloc] initWithTaxonomyNode:v7];
      if (v9)
      {
        v10 = self->_signalNodeBySignalIdentifier;
        null2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
        [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:null2];
      }

      else
      {
        null2 = [MEMORY[0x277CBEB68] null];
        v12 = self->_signalNodeBySignalIdentifier;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
        [(NSMutableDictionary *)v12 setObject:null2 forKeyedSubscript:v13];
      }

      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_10:

  v7 = v9;
LABEL_11:

  return v7;
}

- (CLSTaxonomyBasedModel)initWithSceneTaxonomy:(id)taxonomy
{
  taxonomyCopy = taxonomy;
  v14.receiver = self;
  v14.super_class = CLSTaxonomyBasedModel;
  v6 = [(CLSTaxonomyBasedModel *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signalNodeBySignalName = v6->_signalNodeBySignalName;
    v6->_signalNodeBySignalName = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signalNodeBySignalIdentifier = v6->_signalNodeBySignalIdentifier;
    v6->_signalNodeBySignalIdentifier = v9;

    objc_storeStrong(&v6->_sceneTaxonomy, taxonomy);
    digest = [(PFSceneTaxonomy *)v6->_sceneTaxonomy digest];
    identifier = v6->_identifier;
    v6->_identifier = digest;
  }

  return v6;
}

@end