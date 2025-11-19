@interface PGMeaningPeopleCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningPeopleCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"minimumNumberOfPeople"];
  [v5 setMinimumNumberOfPeople:{objc_msgSend(v6, "unsignedIntegerValue")}];

  v7 = [v4 objectForKeyedSubscript:@"requiresPetPresence"];
  [v5 setRequiresPetPresence:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [v4 objectForKeyedSubscript:@"requiresChildPresence"];
  [v5 setRequiresChildPresence:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [v4 objectForKeyedSubscript:@"requiresPartnerPresence"];

  [v5 setRequiresPartnerPresence:{objc_msgSend(v9, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"minimumNumberOfPeople: %d\n", -[PGMeaningPeopleCriteria minimumNumberOfPeople](self, "minimumNumberOfPeople")];
  [v3 appendFormat:@"requiresPetPresence: %d\n", -[PGMeaningPeopleCriteria requiresPetPresence](self, "requiresPetPresence")];
  [v3 appendFormat:@"requiresChildPresence: %d\n", -[PGMeaningPeopleCriteria requiresChildPresence](self, "requiresChildPresence")];
  [v3 appendFormat:@"requiresPartnerPresence: %d\n", -[PGMeaningPeopleCriteria requiresPartnerPresence](self, "requiresPartnerPresence")];

  return v3;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 totalNumberOfPersons];
  if (v8 >= [(PGMeaningPeopleCriteria *)self minimumNumberOfPeople])
  {
    [(PGMeaningPeopleCriteria *)self requiresPetPresence];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = ![(PGMeaningPeopleCriteria *)self requiresPartnerPresence];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = ![(PGMeaningPeopleCriteria *)self requiresChildPresence];
    v10 = [v7 personNodes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__PGMeaningPeopleCriteria_passesForMomentNode_momentNodeCache___block_invoke;
    v12[3] = &unk_278884D10;
    v12[4] = &v17;
    v12[5] = &v13;
    [v10 enumerateObjectsUsingBlock:v12];
    if (*(v18 + 24) == 1)
    {
      v9 = *(v14 + 24);
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __63__PGMeaningPeopleCriteria_passesForMomentNode_momentNodeCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (([v10 isMeNode] & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 24))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v10 isMyPartner];
      v5 = *(*(a1 + 32) + 8);
    }

    *(v5 + 24) = v6;
    v7 = *(*(a1 + 40) + 8);
    if (*(v7 + 24))
    {
      v8 = 1;
    }

    else
    {
      v8 = [v10 isMyChild];
      v7 = *(*(a1 + 40) + 8);
    }

    *(v7 + 24) = v8;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v9 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9 & 1;
  }
}

@end