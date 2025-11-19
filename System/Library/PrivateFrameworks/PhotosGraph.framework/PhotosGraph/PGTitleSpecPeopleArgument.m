@interface PGTitleSpecPeopleArgument
+ (id)argumentWithPeopleType:(unint64_t)a3;
+ (id)argumentWithPeopleType:(unint64_t)a3 personNodes:(id)a4;
- (PGTitleSpecPeopleArgument)initWithPeopleType:(unint64_t)a3;
- (id)_birthdayTitleWithMomentNodes:(id)a3 serviceManager:(id)a4;
- (id)_groupTitleWithFeature:(id)a3 graph:(id)a4 allowedGroupsFormat:(unint64_t)a5;
- (id)_groupTitleWithMomentNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4;
- (id)_initWithPeopleType:(unint64_t)a3 personNodes:(id)a4;
- (id)_personNodesWithMomentNodes:(id)a3;
- (id)_personTitleWithFeature:(id)a3 graph:(id)a4 serviceManager:(id)a5;
- (id)_personTitleWithMomentNodes:(id)a3 serviceManager:(id)a4;
- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4;
- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5;
@end

@implementation PGTitleSpecPeopleArgument

- (id)_personNodesWithMomentNodes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) personNodes];
        v10 = v9;
        if (v6)
        {
          [v6 intersectSet:v9];
        }

        else if ([v9 count])
        {
          v6 = [v10 mutableCopy];
        }

        else
        {
          v6 = 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_personTitleWithFeature:(id)a3 graph:(id)a4 serviceManager:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NSSet *)self->_personNodes count]== 1)
  {
    [(NSSet *)self->_personNodes anyObject];
  }

  else
  {
    [v8 nodeInGraph:v9];
  }
  v11 = ;
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];
    v13 = [PGPeopleTitleUtility nameStringForPersonNodes:v12 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:v10];
  }

  else
  {
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 description];
      v19 = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", &v19, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_personTitleWithMomentNodes:(id)a3 serviceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSSet *)self->_personNodes count])
  {
    v8 = self->_personNodes;
  }

  else
  {
    v8 = [(PGTitleSpecPeopleArgument *)self _personNodesWithMomentNodes:v6];
  }

  v9 = v8;
  if ([(NSSet *)v8 count]> 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [PGPeopleTitleUtility nameStringForPersonNodes:v9 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:v7];
  }

  return v10;
}

- (id)_groupTitleWithFeature:(id)a3 graph:(id)a4 allowedGroupsFormat:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 nodeInGraph:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 personNodes];
    v11 = [PGPeopleTitleUtility peopleGroupNameForPersonNodes:v10 allowedGroupsFormat:a5 fallbackToGeneric:a5 & 1];
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 description];
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", &v17, 0xCu);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_groupTitleWithMomentNodes:(id)a3 allowedGroupsFormat:(unint64_t)a4
{
  v5 = [(PGTitleSpecPeopleArgument *)self _personNodesWithMomentNodes:a3];
  v6 = [PGPeopleTitleUtility peopleGroupNameForPersonNodes:v5 allowedGroupsFormat:a4 fallbackToGeneric:a4 & 1];

  return v6;
}

- (id)_birthdayTitleWithMomentNodes:(id)a3 serviceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = self->_personNodes;
    if (![(NSSet *)v8 count])
    {
      v9 = [PGGraphMomentNodeCollection alloc];
      v10 = [v6 anyObject];
      v11 = [v10 graph];
      v12 = [(MAElementCollection *)v9 initWithSet:v6 graph:v11];

      v13 = [(PGGraphMomentNodeCollection *)v12 birthdayPersonNodes];
      v14 = [v13 temporarySet];

      v8 = v14;
    }

    v15 = [PGPeopleTitleUtility nameStringForPersonNodes:v8 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_resolvedStringWithMomentNodes:(id)a3 features:(id)a4 argumentEvaluationContext:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  v37 = v8;
  v10 = [v8 anyObject];
  v11 = [v10 graph];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v9;
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
      v21 = [v20 type];
      if (v21 == 3)
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
          [v20 nodeInGraph:v11];
        }
        v27 = ;
        v28 = v11;
        if (v27)
        {
          v29 = [MEMORY[0x277CBEB98] setWithObject:v27];
          v30 = [v39 serviceManager];
          v31 = [PGPeopleTitleUtility nameStringForPersonNodes:v29 includeMe:0 allowUnnamed:0 allowedGroupsFormat:0 insertLineBreaks:0 serviceManager:v30];

          v16 = v31;
        }

        else
        {
          v32 = +[PGLogging sharedLogging];
          v29 = [v32 loggingConnection];

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v33 = [v20 description];
            *buf = v36;
            v45 = v33;
            _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "[PGTitleSpecPeopleArgument] Could not fetch node in graph for feature %@", buf, 0xCu);
          }
        }

        v11 = v28;
        v12 = v38;
        v18 = &OBJC_IVAR___PGMeaningfulEventMatchingCriteria__cache;
      }

      else
      {
        if (v21 != 2)
        {
          goto LABEL_25;
        }

        v22 = *(&self->super.super.isa + v18[526]);
        switch(v22)
        {
          case 3:
            v23 = self;
            v24 = v20;
            v25 = v11;
            v26 = 2;
            break;
          case 2:
            v23 = self;
            v24 = v20;
            v25 = v11;
            v26 = 8;
            break;
          case 1:
            v23 = self;
            v24 = v20;
            v25 = v11;
            v26 = 1;
            break;
          default:
            goto LABEL_25;
        }

        [(PGTitleSpecPeopleArgument *)v23 _groupTitleWithFeature:v24 graph:v25 allowedGroupsFormat:v26];
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

- (id)_resolvedStringWithMomentNodes:(id)a3 argumentEvaluationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  type = self->_type;
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        v13 = self;
        v14 = v6;
        v15 = 8;
        break;
      case 3:
        v13 = self;
        v14 = v6;
        v15 = 2;
        break;
      case 4:
        v11 = [v7 serviceManager];
        v12 = [(PGTitleSpecPeopleArgument *)self _birthdayTitleWithMomentNodes:v6 serviceManager:v11];
        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    v9 = [(PGTitleSpecPeopleArgument *)v13 _groupTitleWithMomentNodes:v14 allowedGroupsFormat:v15];
    goto LABEL_14;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_14;
    }

    v13 = self;
    v14 = v6;
    v15 = 1;
    goto LABEL_11;
  }

  v11 = [v7 serviceManager];
  v12 = [(PGTitleSpecPeopleArgument *)self _personTitleWithMomentNodes:v6 serviceManager:v11];
LABEL_13:
  v9 = v12;

LABEL_14:

  return v9;
}

- (PGTitleSpecPeopleArgument)initWithPeopleType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PGTitleSpecPeopleArgument;
  result = [(PGTitleSpecPeopleArgument *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)_initWithPeopleType:(unint64_t)a3 personNodes:(id)a4
{
  v7 = a4;
  v8 = [(PGTitleSpecPeopleArgument *)self initWithPeopleType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personNodes, a4);
  }

  return v9;
}

+ (id)argumentWithPeopleType:(unint64_t)a3 personNodes:(id)a4
{
  v5 = a4;
  v6 = [[PGTitleSpecPeopleArgument alloc] _initWithPeopleType:a3 personNodes:v5];

  return v6;
}

+ (id)argumentWithPeopleType:(unint64_t)a3
{
  v3 = [[PGTitleSpecPeopleArgument alloc] initWithPeopleType:a3];

  return v3;
}

@end