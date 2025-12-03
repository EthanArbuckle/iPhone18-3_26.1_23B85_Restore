@interface ScoreBasedResolver
- (ScoreBasedResolutionResult)result;
- (ScoreBasedResolver)initWithEntities:(id)entities;
- (id)nameForResolutionResultType:(unint64_t)type;
- (void)addScore:(int64_t)score forEntities:(id)entities reason:(id)reason;
- (void)addScore:(int64_t)score forEntity:(id)entity reason:(id)reason;
- (void)setConfirmationEnabled:(BOOL)enabled;
- (void)setConfirmationMargin:(int64_t)margin;
- (void)setSuccessfulResolutionMargin:(int64_t)margin;
@end

@implementation ScoreBasedResolver

- (ScoreBasedResolver)initWithEntities:(id)entities
{
  entitiesCopy = entities;
  v24.receiver = self;
  v24.super_class = ScoreBasedResolver;
  v5 = [(ScoreBasedResolver *)&v24 init];
  if (v5)
  {
    v6 = [entitiesCopy copy];
    entities = v5->_entities;
    v5->_entities = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    scoreByEntity = v5->_scoreByEntity;
    v5->_scoreByEntity = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    scoreReasonsByEntity = v5->_scoreReasonsByEntity;
    v5->_scoreReasonsByEntity = v10;

    *&v5->_successfulResolutionMargin = xmmword_100038DF0;
    v5->_confirmationEnabled = 1;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = entitiesCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          v18 = objc_alloc_init(NSMutableArray);
          [(NSMutableDictionary *)v5->_scoreReasonsByEntity setObject:v18 forKeyedSubscript:v17, v20];

          [(NSMutableDictionary *)v5->_scoreByEntity setObject:&off_10004EB40 forKeyedSubscript:v17];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (void)addScore:(int64_t)score forEntity:(id)entity reason:(id)reason
{
  entityCopy = entity;
  reasonCopy = reason;
  cachedResult = self->_cachedResult;
  self->_cachedResult = 0;

  v10 = [(NSMutableDictionary *)self->_scoreByEntity objectForKeyedSubscript:entityCopy];
  if (!v10)
  {
    v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Attempting to add a score for an entity not part of original entity set" userInfo:0];
    [v11 raise];
  }

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue] + score);
  [(NSMutableDictionary *)self->_scoreByEntity setObject:v12 forKeyedSubscript:entityCopy];

  v13 = [(NSMutableDictionary *)self->_scoreReasonsByEntity objectForKeyedSubscript:entityCopy];
  if (!v13)
  {
    v14 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Attempting to add a score reason for an entity not part of the original entity set" userInfo:0];
    [v14 raise];
  }

  reasonCopy = [NSString stringWithFormat:@"%ld: %@", score, reasonCopy];
  [v13 addObject:reasonCopy];
}

- (void)addScore:(int64_t)score forEntities:(id)entities reason:(id)reason
{
  entitiesCopy = entities;
  reasonCopy = reason;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [entitiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(entitiesCopy);
        }

        [(ScoreBasedResolver *)self addScore:score forEntity:*(*(&v14 + 1) + 8 * v13) reason:reasonCopy];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [entitiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)setSuccessfulResolutionMargin:(int64_t)margin
{
  if (self->_successfulResolutionMargin != margin)
  {
    cachedResult = self->_cachedResult;
    self->_cachedResult = 0;

    self->_successfulResolutionMargin = margin;
  }
}

- (void)setConfirmationMargin:(int64_t)margin
{
  if (self->_confirmationMargin != margin)
  {
    cachedResult = self->_cachedResult;
    self->_cachedResult = 0;

    self->_confirmationMargin = margin;
  }
}

- (void)setConfirmationEnabled:(BOOL)enabled
{
  if (self->_confirmationEnabled != enabled)
  {
    cachedResult = self->_cachedResult;
    self->_cachedResult = 0;

    self->_confirmationEnabled = enabled;
  }
}

- (ScoreBasedResolutionResult)result
{
  selfCopy = self;
  cachedResult = self->_cachedResult;
  if (cachedResult)
  {
    goto LABEL_55;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  entities = [(ScoreBasedResolver *)selfCopy entities];
  v6 = [entities countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v87;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v87 != v8)
        {
          objc_enumerationMutation(entities);
        }

        v10 = *(*(&v86 + 1) + 8 * i);
        scoreByEntity = [(ScoreBasedResolver *)selfCopy scoreByEntity];
        v12 = [scoreByEntity objectForKeyedSubscript:v10];

        v13 = [v4 objectForKeyedSubscript:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(NSMutableArray);
          [v4 setObject:v13 forKey:v12];
        }

        [v13 addObject:v10];
      }

      v7 = [entities countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v7);
  }

  allKeys = [v4 allKeys];
  v15 = [allKeys sortedArrayUsingSelector:"compare:"];
  reverseObjectEnumerator = [v15 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  firstObject = [allObjects firstObject];
  integerValue = [firstObject integerValue];

  firstObject2 = [allObjects firstObject];
  v21 = [v4 objectForKeyedSubscript:firstObject2];
  v22 = [v21 count];

  if ([allObjects count] < 2)
  {
    integerValue2 = 0;
  }

  else
  {
    v23 = [allObjects objectAtIndexedSubscript:1];
    integerValue2 = [v23 integerValue];
  }

  if (v22 != 1)
  {
    goto LABEL_18;
  }

  if (integerValue - integerValue2 >= [(ScoreBasedResolver *)selfCopy successfulResolutionMargin])
  {
    v34 = 1;
  }

  else
  {
    if (![(ScoreBasedResolver *)selfCopy confirmationEnabled]|| integerValue - integerValue2 < [(ScoreBasedResolver *)selfCopy confirmationMargin])
    {
LABEL_18:
      v66 = objc_alloc_init(NSMutableArray);
      confirmationMargin = [(ScoreBasedResolver *)selfCopy confirmationMargin];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      firstObject3 = allObjects;
      v27 = [firstObject3 countByEnumeratingWithState:&v82 objects:v93 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = integerValue - confirmationMargin;
        v30 = *v83;
LABEL_20:
        v31 = 0;
        while (1)
        {
          if (*v83 != v30)
          {
            objc_enumerationMutation(firstObject3);
          }

          v32 = *(*(&v82 + 1) + 8 * v31);
          if (!-[ScoreBasedResolver includeAllEntitiesInDisambiguation](selfCopy, "includeAllEntitiesInDisambiguation") && [v32 integerValue] < v29)
          {
            break;
          }

          v33 = [v4 objectForKeyedSubscript:v32];
          [v66 addObjectsFromArray:v33];

          if (v28 == ++v31)
          {
            v28 = [firstObject3 countByEnumeratingWithState:&v82 objects:v93 count:16];
            if (v28)
            {
              goto LABEL_20;
            }

            break;
          }
        }
      }

      v34 = 3;
      goto LABEL_31;
    }

    v34 = 2;
  }

  firstObject3 = [allObjects firstObject];
  v66 = [v4 objectForKeyedSubscript:firstObject3];
LABEL_31:

  v35 = objc_alloc_init(NSMutableArray);
  entities2 = [(ScoreBasedResolver *)selfCopy entities];
  v37 = [entities2 count];
  v60 = v34;
  v38 = [(ScoreBasedResolver *)selfCopy nameForResolutionResultType:v34];
  v39 = [NSString stringWithFormat:@"Resolved %ld entities. Result = %@", v37, v38];
  [v35 addObject:v39];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = allObjects;
  v63 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v63)
  {
    v62 = *v79;
    do
    {
      v40 = 0;
      do
      {
        if (*v79 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v40;
        v41 = *(*(&v78 + 1) + 8 * v40);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v68 = v41;
        v65 = [v4 objectForKeyedSubscript:?];
        v69 = [v65 countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v69)
        {
          v67 = *v75;
          do
          {
            for (j = 0; j != v69; j = j + 1)
            {
              if (*v75 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v43 = *(*(&v74 + 1) + 8 * j);
              v44 = [v66 containsObject:v43];
              integerValue3 = [v68 integerValue];
              v46 = &stru_10004D950;
              if (v44)
              {
                v46 = @" (chosen)";
              }

              v47 = [NSString stringWithFormat:@"%ld%@: %@", integerValue3, v46, v43];
              [v35 addObject:v47];

              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v48 = selfCopy;
              v49 = [(NSMutableDictionary *)selfCopy->_scoreReasonsByEntity objectForKeyedSubscript:v43];
              v50 = [v49 countByEnumeratingWithState:&v70 objects:v90 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v71;
                do
                {
                  for (k = 0; k != v51; k = k + 1)
                  {
                    if (*v71 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = [NSString stringWithFormat:@"\t%@", *(*(&v70 + 1) + 8 * k)];
                    [v35 addObject:v54];
                  }

                  v51 = [v49 countByEnumeratingWithState:&v70 objects:v90 count:16];
                }

                while (v51);
              }

              selfCopy = v48;
            }

            v69 = [v65 countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v69);
        }

        v40 = v64 + 1;
      }

      while ((v64 + 1) != v63);
      v63 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v63);
  }

  v55 = [ScoreBasedResolutionResult alloc];
  v56 = [v35 copy];
  v57 = [(ScoreBasedResolutionResult *)v55 initWithType:v60 resolvedEntities:v66 resolutionSummary:v56];
  v58 = selfCopy->_cachedResult;
  selfCopy->_cachedResult = v57;

  cachedResult = selfCopy->_cachedResult;
LABEL_55:

  return cachedResult;
}

- (id)nameForResolutionResultType:(unint64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_10004CCA8[type];
  }
}

@end