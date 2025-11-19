@interface PGMomentNodeRuleInterpreter
- (PGMomentNodeRuleInterpreter)initWithGraph:(id)a3;
- (id)evaluateMomentNodes:(id)a3 forDateRangeCondition:(id)a4;
- (id)evaluateMomentNodes:(id)a3 forPersonCondition:(id)a4;
- (id)evaluateObjects:(id)a3 forCondition:(id)a4;
@end

@implementation PGMomentNodeRuleInterpreter

- (id)evaluateMomentNodes:(id)a3 forPersonCondition:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 personUUIDs];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v34 + 1) + 8 * i)];
        [v8 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v14 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:v8 inGraph:self->_graph];
  v15 = [v14 set];

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v6;
    v28 = v6;
    v17 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17;
    v19 = *v31;
    while (1)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v28);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [v21 consolidatedPersonNodesPresentInAssets];
        if ([v22 intersectsSet:v15])
        {
        }

        else
        {
          v23 = [v21 personNodesInProximity];
          v24 = [v23 intersectsSet:v15];

          if (!v24)
          {
            continue;
          }
        }

        [v16 addObject:v21];
      }

      v18 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v18)
      {
LABEL_20:

        v6 = v27;
        goto LABEL_22;
      }
    }
  }

  v16 = [MEMORY[0x277CBEB98] set];
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)evaluateMomentNodes:(id)a3 forDateRangeCondition:(id)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a4;
  v7 = a3;
  v8 = [v6 startDate];
  v9 = [v6 endDate];

  v10 = [v5 predicateWithFormat:@"localStartDate >= %@ && localEndDate <= %@", v8, v9];
  v11 = [v7 filteredSetUsingPredicate:v10];

  return v11;
}

- (id)evaluateObjects:(id)a3 forCondition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  if (v8 == 2)
  {
    v9 = [(PGMomentNodeRuleInterpreter *)self evaluateMomentNodes:v6 forPersonCondition:v7];
  }

  else
  {
    if (v8 == 1)
    {
      [(PGMomentNodeRuleInterpreter *)self evaluateMomentNodes:v6 forDateRangeCondition:v7];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (PGMomentNodeRuleInterpreter)initWithGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGMomentNodeRuleInterpreter;
  v6 = [(PGMomentNodeRuleInterpreter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
  }

  return v7;
}

@end