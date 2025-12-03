@interface FLOWSchemaFLOWSportsExecutionTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWSportsExecutionTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSportsExecutionTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)sportNameAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addAthleteEntities:(id)entities;
- (void)addEventEntities:(id)entities;
- (void)addLeague:(id)league;
- (void)addSportName:(int)name;
- (void)addTeamEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSportsExecutionTier1

- (FLOWSchemaFLOWSportsExecutionTier1)initWithDictionary:(id)dictionary
{
  v76 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v70.receiver = self;
  v70.super_class = FLOWSchemaFLOWSportsExecutionTier1;
  v5 = [(FLOWSchemaFLOWSportsExecutionTier1 *)&v70 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sportName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v67;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v67 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWSportsExecutionTier1 addSportName:](v5, "addSportName:", [v12 intValue]);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v9);
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"league"];
    objc_opt_class();
    v49 = v13;
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v63;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v63 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v62 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v19 copy];
              [(FLOWSchemaFLOWSportsExecutionTier1 *)v5 addLeague:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v16);
      }
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"athleteEntities"];
    objc_opt_class();
    v48 = v21;
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v59;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v59 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v58 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [v27 copy];
              [(FLOWSchemaFLOWSportsExecutionTier1 *)v5 addAthleteEntities:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
        }

        while (v24);
      }
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"teamEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v54 objects:v72 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v55;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v54 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [v35 copy];
              [(FLOWSchemaFLOWSportsExecutionTier1 *)v5 addTeamEntities:v36];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v54 objects:v72 count:16];
        }

        while (v32);
      }
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"eventEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v6;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v50 objects:v71 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v51;
        do
        {
          for (n = 0; n != v40; ++n)
          {
            if (*v51 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v50 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [v43 copy];
              [(FLOWSchemaFLOWSportsExecutionTier1 *)v5 addEventEntities:v44];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v50 objects:v71 count:16];
        }

        while (v40);
      }

      v6 = v47;
    }

    v45 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSportsExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSportsExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSportsExecutionTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_athleteEntities)
  {
    athleteEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self athleteEntities];
    v5 = [athleteEntities copy];
    [dictionary setObject:v5 forKeyedSubscript:@"athleteEntities"];
  }

  if (self->_eventEntities)
  {
    eventEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self eventEntities];
    v7 = [eventEntities copy];
    [dictionary setObject:v7 forKeyedSubscript:@"eventEntities"];
  }

  if (self->_leagues)
  {
    leagues = [(FLOWSchemaFLOWSportsExecutionTier1 *)self leagues];
    v9 = [leagues copy];
    [dictionary setObject:v9 forKeyedSubscript:@"league"];
  }

  if ([(NSArray *)self->_sportNames count])
  {
    sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self sportNames];
    v11 = [sportNames copy];
    [dictionary setObject:v11 forKeyedSubscript:@"sportName"];
  }

  if (self->_teamEntities)
  {
    teamEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self teamEntities];
    v13 = [teamEntities copy];
    [dictionary setObject:v13 forKeyedSubscript:@"teamEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_sportNames hash];
  v4 = [(NSArray *)self->_leagues hash]^ v3;
  v5 = [(NSArray *)self->_athleteEntities hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_teamEntities hash];
  return v6 ^ [(NSArray *)self->_eventEntities hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self sportNames];
  sportNames2 = [equalCopy sportNames];
  if ((sportNames != 0) == (sportNames2 == 0))
  {
    goto LABEL_26;
  }

  sportNames3 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self sportNames];
  if (sportNames3)
  {
    v8 = sportNames3;
    sportNames4 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self sportNames];
    sportNames5 = [equalCopy sportNames];
    v11 = [sportNames4 isEqual:sportNames5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self leagues];
  sportNames2 = [equalCopy leagues];
  if ((sportNames != 0) == (sportNames2 == 0))
  {
    goto LABEL_26;
  }

  leagues = [(FLOWSchemaFLOWSportsExecutionTier1 *)self leagues];
  if (leagues)
  {
    v13 = leagues;
    leagues2 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self leagues];
    leagues3 = [equalCopy leagues];
    v16 = [leagues2 isEqual:leagues3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self athleteEntities];
  sportNames2 = [equalCopy athleteEntities];
  if ((sportNames != 0) == (sportNames2 == 0))
  {
    goto LABEL_26;
  }

  athleteEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self athleteEntities];
  if (athleteEntities)
  {
    v18 = athleteEntities;
    athleteEntities2 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self athleteEntities];
    athleteEntities3 = [equalCopy athleteEntities];
    v21 = [athleteEntities2 isEqual:athleteEntities3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self teamEntities];
  sportNames2 = [equalCopy teamEntities];
  if ((sportNames != 0) == (sportNames2 == 0))
  {
    goto LABEL_26;
  }

  teamEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self teamEntities];
  if (teamEntities)
  {
    v23 = teamEntities;
    teamEntities2 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self teamEntities];
    teamEntities3 = [equalCopy teamEntities];
    v26 = [teamEntities2 isEqual:teamEntities3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  sportNames = [(FLOWSchemaFLOWSportsExecutionTier1 *)self eventEntities];
  sportNames2 = [equalCopy eventEntities];
  if ((sportNames != 0) != (sportNames2 == 0))
  {
    eventEntities = [(FLOWSchemaFLOWSportsExecutionTier1 *)self eventEntities];
    if (!eventEntities)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = eventEntities;
    eventEntities2 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self eventEntities];
    eventEntities3 = [equalCopy eventEntities];
    v31 = [eventEntities2 isEqual:eventEntities3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_sportNames;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v46 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_leagues;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_athleteEntities;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_teamEntities;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_eventEntities;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteStringField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

- (void)addEventEntities:(id)entities
{
  entitiesCopy = entities;
  eventEntities = self->_eventEntities;
  v8 = entitiesCopy;
  if (!eventEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_eventEntities;
    self->_eventEntities = array;

    entitiesCopy = v8;
    eventEntities = self->_eventEntities;
  }

  [(NSArray *)eventEntities addObject:entitiesCopy];
}

- (void)addTeamEntities:(id)entities
{
  entitiesCopy = entities;
  teamEntities = self->_teamEntities;
  v8 = entitiesCopy;
  if (!teamEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_teamEntities;
    self->_teamEntities = array;

    entitiesCopy = v8;
    teamEntities = self->_teamEntities;
  }

  [(NSArray *)teamEntities addObject:entitiesCopy];
}

- (void)addAthleteEntities:(id)entities
{
  entitiesCopy = entities;
  athleteEntities = self->_athleteEntities;
  v8 = entitiesCopy;
  if (!athleteEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_athleteEntities;
    self->_athleteEntities = array;

    entitiesCopy = v8;
    athleteEntities = self->_athleteEntities;
  }

  [(NSArray *)athleteEntities addObject:entitiesCopy];
}

- (void)addLeague:(id)league
{
  leagueCopy = league;
  leagues = self->_leagues;
  v8 = leagueCopy;
  if (!leagues)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_leagues;
    self->_leagues = array;

    leagueCopy = v8;
    leagues = self->_leagues;
  }

  [(NSArray *)leagues addObject:leagueCopy];
}

- (int)sportNameAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_sportNames objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addSportName:(int)name
{
  v3 = *&name;
  sportNames = self->_sportNames;
  if (!sportNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sportNames;
    self->_sportNames = array;

    sportNames = self->_sportNames;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)sportNames addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWSportsExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteSportName];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteLeague];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteAthleteEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteTeamEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteEventEntities];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteSportName];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteLeague];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteAthleteEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteTeamEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteEventEntities];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteSportName];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteLeague];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteAthleteEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteTeamEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteEventEntities];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteSportName];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteLeague];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteAthleteEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteTeamEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteEventEntities];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteSportName];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteLeague];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteAthleteEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteTeamEntities];
    [(FLOWSchemaFLOWSportsExecutionTier1 *)self deleteEventEntities];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end