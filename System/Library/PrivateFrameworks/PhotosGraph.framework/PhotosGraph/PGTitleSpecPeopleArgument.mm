@interface PGTitleSpecPeopleArgument
+ (id)argumentWithPeopleType:(unint64_t)type;
+ (id)argumentWithPeopleType:(unint64_t)type personNodes:(id)nodes;
- (PGTitleSpecPeopleArgument)initWithPeopleType:(unint64_t)type;
- (id)_birthdayTitleWithMomentNodes:(id)nodes serviceManager:(id)manager;
- (id)_groupTitleWithFeature:(id)feature graph:(id)graph allowedGroupsFormat:(unint64_t)format;
- (id)_groupTitleWithMomentNodes:(id)nodes allowedGroupsFormat:(unint64_t)format;
- (id)_initWithPeopleType:(unint64_t)type personNodes:(id)nodes;
- (id)_personNodesWithMomentNodes:(id)nodes;
- (id)_personTitleWithFeature:(id)feature graph:(id)graph serviceManager:(id)manager;
- (id)_personTitleWithMomentNodes:(id)nodes serviceManager:(id)manager;
- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context;
- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context;
@end

@implementation PGTitleSpecPeopleArgument

- (id)_personNodesWithMomentNodes:(id)nodes
{
  v18 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(nodesCopy);
        }

        personNodes = [*(*(&v13 + 1) + 8 * i) personNodes];
        v10 = personNodes;
        if (v6)
        {
          [v6 intersectSet:personNodes];
        }

        else if ([personNodes count])
        {
          v6 = [v10 mutableCopy];
        }

        else
        {
          v6 = 0;
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_personTitleWithFeature:(id)feature graph:(id)graph serviceManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  graphCopy = graph;
  managerCopy = manager;
  if ([(NSSet *)self->_personNodes count]== 1)
  {
    [(NSSet *)self->_personNodes anyObject];
  }

  else
  {
    [featureCopy nodeInGraph:graphCopy];
  }
  v11 = ;
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];
    v13 = [PGPeopleTitleUtility nameStringForPersonNodes:v12 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:managerCopy];
  }

  else
  {
    v14 = +[PGLogging sharedLogging];
    loggingConnection = [v14 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v18 = [featureCopy description];
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", &v19, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_personTitleWithMomentNodes:(id)nodes serviceManager:(id)manager
{
  nodesCopy = nodes;
  managerCopy = manager;
  if ([(NSSet *)self->_personNodes count])
  {
    v8 = self->_personNodes;
  }

  else
  {
    v8 = [(PGTitleSpecPeopleArgument *)self _personNodesWithMomentNodes:nodesCopy];
  }

  v9 = v8;
  if ([(NSSet *)v8 count]> 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [PGPeopleTitleUtility nameStringForPersonNodes:v9 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:managerCopy];
  }

  return v10;
}

- (id)_groupTitleWithFeature:(id)feature graph:(id)graph allowedGroupsFormat:(unint64_t)format
{
  v19 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v8 = [featureCopy nodeInGraph:graph];
  v9 = v8;
  if (v8)
  {
    personNodes = [v8 personNodes];
    v11 = [PGPeopleTitleUtility peopleGroupNameForPersonNodes:personNodes allowedGroupsFormat:format fallbackToGeneric:format & 1];
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v16 = [featureCopy description];
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", &v17, 0xCu);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_groupTitleWithMomentNodes:(id)nodes allowedGroupsFormat:(unint64_t)format
{
  v5 = [(PGTitleSpecPeopleArgument *)self _personNodesWithMomentNodes:nodes];
  v6 = [PGPeopleTitleUtility peopleGroupNameForPersonNodes:v5 allowedGroupsFormat:format fallbackToGeneric:format & 1];

  return v6;
}

- (id)_birthdayTitleWithMomentNodes:(id)nodes serviceManager:(id)manager
{
  nodesCopy = nodes;
  managerCopy = manager;
  if ([nodesCopy count])
  {
    v8 = self->_personNodes;
    if (![(NSSet *)v8 count])
    {
      v9 = [PGGraphMomentNodeCollection alloc];
      anyObject = [nodesCopy anyObject];
      graph = [anyObject graph];
      v12 = [(MAElementCollection *)v9 initWithSet:nodesCopy graph:graph];

      birthdayPersonNodes = [(PGGraphMomentNodeCollection *)v12 birthdayPersonNodes];
      temporarySet = [birthdayPersonNodes temporarySet];

      v8 = temporarySet;
    }

    v15 = [PGPeopleTitleUtility nameStringForPersonNodes:v8 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:managerCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_resolvedStringWithMomentNodes:(id)nodes features:(id)features argumentEvaluationContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  featuresCopy = features;
  contextCopy = context;
  v37 = nodesCopy;
  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = featuresCopy;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v13)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v15 = v13;
  v16 = 0;
  v17 = *v41;
  v18 = &OBJC_IVAR___PGMeaningfulEventMatchingCriteria__cache;
  *&v14 = 138412290;
  v36 = v14;
  v38 = v12;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v41 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v40 + 1) + 8 * i);
      type = [v20 type];
      if (type == 3)
      {
        if (*(&self->super.super.isa + v18[526]) != 4)
        {
          goto LABEL_25;
        }

        if ([(NSSet *)self->_personNodes count]== 1)
        {
          [(NSSet *)self->_personNodes anyObject];
        }

        else
        {
          [v20 nodeInGraph:graph];
        }
        v27 = ;
        v28 = graph;
        if (v27)
        {
          loggingConnection = [MEMORY[0x277CBEB98] setWithObject:v27];
          serviceManager = [contextCopy serviceManager];
          v31 = [PGPeopleTitleUtility nameStringForPersonNodes:loggingConnection includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:serviceManager];

          v16 = v31;
        }

        else
        {
          v32 = +[PGLogging sharedLogging];
          loggingConnection = [v32 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            v33 = [v20 description];
            *buf = v36;
            v45 = v33;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", buf, 0xCu);
          }
        }

        graph = v28;
        v12 = v38;
        v18 = &OBJC_IVAR___PGMeaningfulEventMatchingCriteria__cache;
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_25;
        }

        v22 = *(&self->super.super.isa + v18[526]);
        switch(v22)
        {
          case 3:
            selfCopy3 = self;
            v24 = v20;
            v25 = graph;
            v26 = 2;
            break;
          case 2:
            selfCopy3 = self;
            v24 = v20;
            v25 = graph;
            v26 = 8;
            break;
          case 1:
            selfCopy3 = self;
            v24 = v20;
            v25 = graph;
            v26 = 1;
            break;
          default:
            goto LABEL_25;
        }

        [(PGTitleSpecPeopleArgument *)selfCopy3 _groupTitleWithFeature:v24 graph:v25 allowedGroupsFormat:v26];
        v16 = v27 = v16;
      }

LABEL_25:
      if ([v16 length])
      {
        goto LABEL_30;
      }
    }

    v15 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
  }

  while (v15);
LABEL_30:

  v34 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_resolvedStringWithMomentNodes:(id)nodes argumentEvaluationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
  v8 = contextCopy;
  v9 = 0;
  type = self->_type;
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        selfCopy3 = self;
        v14 = nodesCopy;
        v15 = 8;
        break;
      case 3:
        selfCopy3 = self;
        v14 = nodesCopy;
        v15 = 2;
        break;
      case 4:
        serviceManager = [contextCopy serviceManager];
        v12 = [(PGTitleSpecPeopleArgument *)self _birthdayTitleWithMomentNodes:nodesCopy serviceManager:serviceManager];
        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    v9 = [(PGTitleSpecPeopleArgument *)selfCopy3 _groupTitleWithMomentNodes:v14 allowedGroupsFormat:v15];
    goto LABEL_14;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_14;
    }

    selfCopy3 = self;
    v14 = nodesCopy;
    v15 = 1;
    goto LABEL_11;
  }

  serviceManager = [contextCopy serviceManager];
  v12 = [(PGTitleSpecPeopleArgument *)self _personTitleWithMomentNodes:nodesCopy serviceManager:serviceManager];
LABEL_13:
  v9 = v12;

LABEL_14:

  return v9;
}

- (PGTitleSpecPeopleArgument)initWithPeopleType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PGTitleSpecPeopleArgument;
  result = [(PGTitleSpecPeopleArgument *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)_initWithPeopleType:(unint64_t)type personNodes:(id)nodes
{
  nodesCopy = nodes;
  v8 = [(PGTitleSpecPeopleArgument *)self initWithPeopleType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personNodes, nodes);
  }

  return v9;
}

+ (id)argumentWithPeopleType:(unint64_t)type personNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = [[PGTitleSpecPeopleArgument alloc] _initWithPeopleType:type personNodes:nodesCopy];

  return v6;
}

+ (id)argumentWithPeopleType:(unint64_t)type
{
  v3 = [[PGTitleSpecPeopleArgument alloc] initWithPeopleType:type];

  return v3;
}

@end