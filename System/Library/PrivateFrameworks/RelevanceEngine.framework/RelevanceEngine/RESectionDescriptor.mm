@interface RESectionDescriptor
+ (id)defaultSectionDescriptorForIdentifier:(id)identifier;
+ (id)defaultUpNextSectionDescriptorForIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSSet)rules;
- (RESectionDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setHistoricSectionDescriptor:(id)descriptor;
- (void)setOrderedRules:(id)rules;
- (void)setRules:(id)rules;
@end

@implementation RESectionDescriptor

- (RESectionDescriptor)init
{
  v9.receiver = self;
  v9.super_class = RESectionDescriptor;
  v2 = [(RESectionDescriptor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxElementCount = -1;
    name = v2->_name;
    v2->_name = &stru_283B97458;

    orderedSet = [MEMORY[0x277CBEB70] orderedSet];
    rules = v3->_rules;
    v3->_rules = orderedSet;

    historicSectionDescriptor = v3->_historicSectionDescriptor;
    v3->_historicSectionDescriptor = 0;
  }

  return v3;
}

+ (id)defaultSectionDescriptorForIdentifier:(id)identifier
{
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__RESectionDescriptor_defaultSectionDescriptorForIdentifier___block_invoke_3;
  v11 = &unk_2785FBD28;
  v12 = &__block_literal_global_29;
  v13 = &__block_literal_global_82_0;
  identifierCopy = identifier;
  v4 = MEMORY[0x22AABC5E0](&v8);
  v5 = objc_alloc_init(RESectionDescriptor);
  v6 = v4[2](v4);
  [(RESectionDescriptor *)v5 setOrderedRules:v6, v8, v9, v10, v11];

  [(RESectionDescriptor *)v5 setName:identifierCopy];

  return v5;
}

RERankingRule *__61__RESectionDescriptor_defaultSectionDescriptorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [RECondition conditionHasValueForFeature:v2];
  v4 = [REComparisonCondition conditionForLeftFeature:v2 relation:2 rightFeature:v2];

  v5 = [[RERankingRule alloc] initWithLeftCondition:v3 rightCondition:v3 comparisonCondition:v4 order:1];
  LODWORD(v6) = 1157234688;
  [(RERule *)v5 setPriority:v6];

  return v5;
}

REFilteringRule *__61__RESectionDescriptor_defaultSectionDescriptorForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [RECondition conditionHasValueForFeature:v8];
        v10 = [RECondition conditionForFeature:v8 relation:-1 floatValue:3.18618444e-58];
        v23[0] = v9;
        v23[1] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v12 = [RECondition andConditions:v11];

        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = [REFilteringRule alloc];
  v14 = [RECondition orConditions:v3];
  v15 = [(REFilteringRule *)v13 initWithCondition:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __61__RESectionDescriptor_defaultSectionDescriptorForIdentifier___block_invoke_3(uint64_t a1)
{
  v72[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature priorityFeature];
  v3 = [RECondition conditionHasValueForFeature:v2];

  v4 = +[REFeature priorityFeature];
  v5 = +[REFeature priorityFeature];
  v64 = [REComparisonCondition conditionForLeftFeature:v4 relation:2 rightFeature:v5];

  v6 = +[REFeature dataSourceFeature];
  v7 = +[REFeature dataSourceFeature];
  v63 = [REComparisonCondition conditionForLeftFeature:v6 relation:0 rightFeature:v7];

  v8 = [RERankingRule alloc];
  v72[0] = v64;
  v72[1] = v63;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v10 = [(RECondition *)REComparisonCondition andConditions:v9];
  v62 = v3;
  v66 = [(RERankingRule *)v8 initWithLeftCondition:v3 rightCondition:v3 comparisonCondition:v10 order:1];

  v11 = *(a1 + 32);
  v12 = +[REFeature dateFeature];
  v61 = (*(v11 + 16))(v11, v12);

  v13 = *(a1 + 32);
  v14 = +[REFeature locationFeature];
  v60 = (*(v13 + 16))(v13, v14);

  v15 = *(a1 + 32);
  v16 = +[REFeature geofenceFeature];
  v59 = (*(v15 + 16))(v15, v16);

  v17 = +[REFeature dateFeature];
  v65 = [RECondition conditionHasValueForFeature:v17];

  v18 = *(a1 + 40);
  v19 = +[REFeature dateFeature];
  v71[0] = v19;
  v20 = +[REFeature locationFeature];
  v71[1] = v20;
  v21 = +[REFeature geofenceFeature];
  v71[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
  v58 = (*(v18 + 16))(v18, v22);

  LODWORD(v23) = 1157234688;
  [v58 setPriority:v23];
  v24 = +[REFeature dailyRoutineFeature];
  v25 = [RECondition conditionHasValueForFeature:v24];

  v26 = +[REFeature isInDailyRoutineFeature];
  v27 = [RECondition conditionForFeature:v26 hasBoolValue:1];
  v57 = [RECondition notCondition:v27];

  v28 = [REFilteringRule alloc];
  v70[0] = v25;
  v70[1] = v57;
  v29 = v25;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v31 = [RECondition andConditions:v30];
  v56 = [(REFilteringRule *)v28 initWithCondition:v31 type:0];

  v69[0] = v29;
  v32 = v29;
  v55 = v29;
  v33 = +[REFeature dailyRoutineFeature];
  v34 = [RECondition conditionForFeature:v33 hasIntegerValue:0];
  v69[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v36 = [RECondition andConditions:v35];

  v37 = [RERankingRule alloc];
  v38 = [RECondition notCondition:v36];
  v39 = +[REComparisonCondition trueCondition];
  v54 = [(RERankingRule *)v37 initWithLeftCondition:v36 rightCondition:v38 comparisonCondition:v39 order:1];

  LODWORD(v40) = 1157226496;
  [(RERule *)v54 setPriority:v40];
  v68[0] = v32;
  v41 = +[REFeature dailyRoutineFeature];
  v42 = [RECondition conditionForFeature:v41 hasIntegerValue:1];
  v68[1] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v44 = [RECondition andConditions:v43];

  v45 = [RERankingRule alloc];
  v46 = +[REComparisonCondition trueCondition];
  v47 = [(RERankingRule *)v45 initWithLeftCondition:v65 rightCondition:v44 comparisonCondition:v46 order:1];

  v48 = [RERankingRule alloc];
  v49 = +[REComparisonCondition trueCondition];
  v50 = [(RERankingRule *)v48 initWithLeftCondition:v36 rightCondition:v44 comparisonCondition:v49 order:1];

  v67[0] = v61;
  v67[1] = v60;
  v67[2] = v59;
  v67[3] = v66;
  v67[4] = v58;
  v67[5] = v56;
  v67[6] = v54;
  v67[7] = v47;
  v67[8] = v50;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:9];

  v51 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)setHistoricSectionDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  [(REHistoricSectionDescriptor *)self->_historicSectionDescriptor setParentDescriptor:0];
  historicSectionDescriptor = self->_historicSectionDescriptor;
  self->_historicSectionDescriptor = v4;
  v6 = v4;

  [(REHistoricSectionDescriptor *)self->_historicSectionDescriptor setParentDescriptor:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_maxElementCount == v5->_maxElementCount)
      {
        name = v5->_name;
        v8 = self->_name;
        v9 = v8;
        if (v8 == name)
        {
        }

        else
        {
          v10 = [(NSString *)v8 isEqual:name];

          if (!v10)
          {
            goto LABEL_12;
          }
        }

        rules = v6->_rules;
        v13 = self->_rules;
        v14 = v13;
        if (v13 == rules)
        {
        }

        else
        {
          v15 = [(NSOrderedSet *)v13 isEqual:rules];

          if (!v15)
          {
            goto LABEL_12;
          }
        }

        historicSectionDescriptor = self->_historicSectionDescriptor;
        v17 = v6->_historicSectionDescriptor;
        v18 = historicSectionDescriptor;
        v19 = v18;
        if (v18 == v17)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(REHistoricSectionDescriptor *)v18 isEqual:v17];
        }

        goto LABEL_18;
      }

LABEL_12:
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  maxElementCount = self->_maxElementCount;
  v4 = [(NSString *)self->_name hash]^ maxElementCount;
  v5 = [(NSOrderedSet *)self->_rules hash];
  return v4 ^ v5 ^ [(REHistoricSectionDescriptor *)self->_historicSectionDescriptor hash];
}

- (NSSet)rules
{
  v2 = [(NSOrderedSet *)self->_rules set];
  v3 = [v2 copy];

  return v3;
}

- (void)setRules:(id)rules
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithSet:rules];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setName:self->_name];
  [v4 setMaxElementCount:self->_maxElementCount];
  objc_storeStrong(v4 + 1, self->_rules);
  v5 = [(REHistoricSectionDescriptor *)self->_historicSectionDescriptor copy];
  [v4 setHistoricSectionDescriptor:v5];

  return v4;
}

- (void)setOrderedRules:(id)rules
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:rules];
  rules = self->_rules;
  self->_rules = v4;

  MEMORY[0x2821F96F8](v4, rules);
}

+ (id)defaultUpNextSectionDescriptorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_3;
  v33[3] = &unk_2785FBD28;
  v34 = &__block_literal_global_57;
  v35 = &__block_literal_global_5_0;
  v5 = MEMORY[0x22AABC5E0](v33);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_4;
  v31[3] = &unk_2785FD158;
  v6 = v5;
  v32 = v6;
  v7 = MEMORY[0x22AABC5E0](v31);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_6;
  v29[3] = &unk_2785FD158;
  v30 = &__block_literal_global_57;
  v8 = MEMORY[0x22AABC5E0](v29);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_7;
  v27[3] = &unk_2785FD158;
  v9 = v6;
  v28 = v9;
  v10 = MEMORY[0x22AABC5E0](v27);
  v11 = v10;
  if (@"defaultSectionIdentifier" == identifierCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_8;
    block[3] = &unk_2785FD1A0;
    v24 = v7;
    v25 = v8;
    v26 = &__block_literal_global_14_3;
    if (defaultUpNextSectionDescriptorForIdentifier__onceToken != -1)
    {
      dispatch_once(&defaultUpNextSectionDescriptorForIdentifier__onceToken, block);
    }

    v14 = defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor;

    v15 = v24;
    goto LABEL_19;
  }

  if (@"allDaySectionIdentifier" == identifierCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_9;
    v21[3] = &unk_2785FA040;
    v22 = v10;
    if (defaultUpNextSectionDescriptorForIdentifier__onceToken_18 != -1)
    {
      dispatch_once(&defaultUpNextSectionDescriptorForIdentifier__onceToken_18, v21);
    }

    v14 = defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor;
    v15 = v22;
    goto LABEL_19;
  }

  if (@"tomorrowSectionIdentifier" == identifierCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_10;
    v19[3] = &unk_2785FA040;
    v20 = v10;
    if (defaultUpNextSectionDescriptorForIdentifier__onceToken_19 != -1)
    {
      dispatch_once(&defaultUpNextSectionDescriptorForIdentifier__onceToken_19, v19);
    }

    v14 = defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor;
    v15 = v20;
    goto LABEL_19;
  }

  if (@"upcomingSectionIdentifier" == identifierCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_11;
    v17[3] = &unk_2785FA040;
    v18 = v10;
    if (defaultUpNextSectionDescriptorForIdentifier__onceToken_20 != -1)
    {
      dispatch_once(&defaultUpNextSectionDescriptorForIdentifier__onceToken_20, v17);
    }

    v14 = defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor;
    v15 = v18;
LABEL_19:

    goto LABEL_20;
  }

  if ([(__CFString *)identifierCopy isEqualToString:@"defaultSectionIdentifier"])
  {
    selfCopy4 = self;
    v13 = @"defaultSectionIdentifier";
LABEL_29:
    v14 = [selfCopy4 defaultSectionDescriptorForIdentifier:v13];
    goto LABEL_20;
  }

  if ([(__CFString *)identifierCopy isEqualToString:@"allDaySectionIdentifier"])
  {
    selfCopy4 = self;
    v13 = @"allDaySectionIdentifier";
    goto LABEL_29;
  }

  if ([(__CFString *)identifierCopy isEqualToString:@"tomorrowSectionIdentifier"])
  {
    selfCopy4 = self;
    v13 = @"tomorrowSectionIdentifier";
    goto LABEL_29;
  }

  if ([(__CFString *)identifierCopy isEqualToString:@"upcomingSectionIdentifier"])
  {
    selfCopy4 = self;
    v13 = @"upcomingSectionIdentifier";
    goto LABEL_29;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

RERankingRule *__90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [RECondition conditionHasValueForFeature:v2];
  v4 = [REComparisonCondition conditionForLeftFeature:v2 relation:2 rightFeature:v2];

  v5 = [[RERankingRule alloc] initWithLeftCondition:v3 rightCondition:v3 comparisonCondition:v4 order:1];
  LODWORD(v6) = 1157234688;
  [(RERule *)v5 setPriority:v6];

  return v5;
}

REFilteringRule *__90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [RECondition conditionHasValueForFeature:v8];
        v10 = [RECondition conditionForFeature:v8 relation:-1 floatValue:3.18618444e-58];
        v23[0] = v9;
        v23[1] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v12 = [RECondition andConditions:v11];

        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = [REFilteringRule alloc];
  v14 = [RECondition orConditions:v3];
  v15 = [(REFilteringRule *)v13 initWithCondition:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_3(uint64_t a1)
{
  v275[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature priorityFeature];
  v3 = [RECondition conditionHasValueForFeature:v2];

  v4 = +[REFeature priorityFeature];
  v5 = +[REFeature priorityFeature];
  v225 = [REComparisonCondition conditionForLeftFeature:v4 relation:2 rightFeature:v5];

  v6 = +[REFeature dataSourceFeature];
  v7 = +[REFeature dataSourceFeature];
  v224 = [REComparisonCondition conditionForLeftFeature:v6 relation:0 rightFeature:v7];

  v8 = [RERankingRule alloc];
  v275[0] = v225;
  v275[1] = v224;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:2];
  v10 = [(RECondition *)REComparisonCondition andConditions:v9];
  v223 = v3;
  v246 = [(RERankingRule *)v8 initWithLeftCondition:v3 rightCondition:v3 comparisonCondition:v10 order:1];

  v11 = *(a1 + 32);
  v12 = +[REFeature dateFeature];
  v245 = (*(v11 + 16))(v11, v12);

  v13 = *(a1 + 32);
  v14 = +[REFeature locationFeature];
  v244 = (*(v13 + 16))(v13, v14);

  v15 = *(a1 + 32);
  v16 = +[REFeature geofenceFeature];
  v243 = (*(v15 + 16))(v15, v16);

  v17 = +[REFeature dateFeature];
  v239 = [RECondition conditionHasValueForFeature:v17];

  v18 = +[REFeature dateFeature];
  LODWORD(v19) = 1064682127;
  v222 = [RECondition conditionForFeature:v18 relation:2 floatValue:v19];

  v20 = [RERankingRule alloc];
  v274[0] = v239;
  v274[1] = v222;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:2];
  v22 = [RECondition andConditions:v21];
  v23 = [RECondition notCondition:v239];
  v24 = +[REComparisonCondition trueCondition];
  v242 = [(RERankingRule *)v20 initWithLeftCondition:v22 rightCondition:v23 comparisonCondition:v24 order:1];

  v25 = +[REFeature sessionFeature];
  v221 = [RECondition conditionHasValueForFeature:v25];

  v26 = [RERankingRule alloc];
  v27 = [RECondition notCondition:v221];
  v28 = +[REComparisonCondition trueCondition];
  v241 = [(RERankingRule *)v26 initWithLeftCondition:v221 rightCondition:v27 comparisonCondition:v28 order:1];

  LODWORD(v29) = 1157234688;
  [(RERule *)v241 setPriority:v29];
  v30 = *(a1 + 40);
  v31 = +[REFeature dateFeature];
  v273[0] = v31;
  v32 = +[REFeature locationFeature];
  v273[1] = v32;
  v33 = +[REFeature geofenceFeature];
  v273[2] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:3];
  v240 = (*(v30 + 16))(v30, v34);

  LODWORD(v35) = 1157234688;
  [v240 setPriority:v35];
  v36 = +[REFeature dailyRoutineFeature];
  v37 = [RECondition conditionHasValueForFeature:v36];

  v38 = +[REFeature isInDailyRoutineFeature];
  v39 = [RECondition conditionForFeature:v38 hasBoolValue:1];
  v220 = [RECondition notCondition:v39];

  v40 = [REFilteringRule alloc];
  v272[0] = v37;
  v272[1] = v220;
  v41 = v37;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:2];
  v43 = [RECondition andConditions:v42];
  v238 = [(REFilteringRule *)v40 initWithCondition:v43 type:0];

  v271[0] = v37;
  v219 = v37;
  v44 = +[REFeature dailyRoutineFeature];
  v45 = [RECondition conditionForFeature:v44 hasIntegerValue:0];
  v271[1] = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v271 count:2];
  v47 = [RECondition andConditions:v46];

  v48 = [RERankingRule alloc];
  v49 = [RECondition notCondition:v47];
  v50 = +[REComparisonCondition trueCondition];
  v218 = v47;
  v237 = [(RERankingRule *)v48 initWithLeftCondition:v47 rightCondition:v49 comparisonCondition:v50 order:1];

  LODWORD(v51) = 1157226496;
  [(RERule *)v237 setPriority:v51];
  v270[0] = v41;
  v52 = +[REFeature dailyRoutineFeature];
  v53 = [RECondition conditionForFeature:v52 hasIntegerValue:1];
  v270[1] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v270 count:2];
  v55 = [RECondition andConditions:v54];

  v56 = [RERankingRule alloc];
  v57 = +[REComparisonCondition trueCondition];
  v217 = v55;
  v236 = [(RERankingRule *)v56 initWithLeftCondition:v239 rightCondition:v55 comparisonCondition:v57 order:1];

  v58 = [RERankingRule alloc];
  v59 = +[REComparisonCondition trueCondition];
  v235 = [(RERankingRule *)v58 initWithLeftCondition:v47 rightCondition:v55 comparisonCondition:v59 order:1];

  v60 = +[REFeature conditionalFeature];
  v269[0] = [RECondition conditionHasValueForFeature:v60];
  v61 = v269[0];
  v214 = v269[0];
  v215 = v60;
  LODWORD(v62) = 953267991;
  v63 = [RECondition conditionForFeature:v60 relation:-1 floatValue:v62];
  v269[1] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v269 count:2];
  v216 = [RECondition andConditions:v64];

  v234 = [[REFilteringRule alloc] initWithCondition:v216 type:0];
  v268[0] = v61;
  LODWORD(v65) = 953267991;
  v66 = [RECondition conditionForFeature:v60 relation:2 floatValue:v65];
  v268[1] = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v268 count:2];
  v213 = [RECondition andConditions:v67];

  v233 = [[REFilteringRule alloc] initWithCondition:v213 type:1];
  v68 = +[REFeature noContentFeature];
  v212 = [RECondition conditionHasValueForFeature:v68];

  v69 = +[REFeature noContentFeature];
  v211 = [RECondition conditionForFeature:v69 hasBoolValue:1];

  v70 = [REFilteringRule alloc];
  v267[0] = v212;
  v267[1] = v211;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v267 count:2];
  v72 = [RECondition andConditions:v71];
  v232 = [(REFilteringRule *)v70 initWithCondition:v72 type:1];

  v73 = +[REFeature isDeveloperDonationFeature];
  v210 = [RECondition conditionHasValueForFeature:v73];

  v74 = [RERankingRule alloc];
  v75 = [RECondition notCondition:v210];
  v76 = +[REComparisonCondition trueCondition];
  v231 = [(RERankingRule *)v74 initWithLeftCondition:v210 rightCondition:v75 comparisonCondition:v76 order:1];

  LODWORD(v77) = 1157275648;
  [(RERule *)v231 setPriority:v77];
  v78 = +[REFeature siriActionRoleFeature];
  v79 = +[REFeature siriActionDailyAveragePerformedCountFeature];
  v80 = [REFilteringRule alloc];
  v81 = [RECondition conditionHasValueForFeature:v78];
  v266[0] = v81;
  v82 = [RECondition conditionForFeature:v78 hasIntegerValue:0];
  v266[1] = v82;
  v207 = v79;
  LODWORD(v83) = 1039516303;
  v84 = [RECondition conditionForFeature:v79 relation:-1 floatValue:v83];
  v266[2] = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v266 count:3];
  v86 = [RECondition andConditions:v85];
  v230 = [(REFilteringRule *)v80 initWithCondition:v86];

  v208 = +[REFeature siriActionHasRelevanceProvidersFeature];
  v87 = [REFilteringRule alloc];
  v209 = v78;
  v88 = [RECondition conditionHasValueForFeature:v78];
  v265[0] = v88;
  v89 = [RECondition conditionHasValueForFeature:v208];
  v265[1] = v89;
  v90 = [RECondition conditionForFeature:v78 hasIntegerValue:0];
  v265[2] = v90;
  LODWORD(v91) = 1039516303;
  v92 = [RECondition conditionForFeature:v79 relation:-1 floatValue:v91];
  v265[3] = v92;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v265 count:4];
  v94 = [RECondition andConditions:v93];
  v228 = [(REFilteringRule *)v87 initWithCondition:v94];

  v229 = +[REFeature workoutStateFeature];
  v95 = [REFilteringRule alloc];
  v96 = [RECondition conditionHasValueForFeature:v229];
  v264[0] = v96;
  v97 = [RECondition conditionForFeature:v229 hasBoolValue:0];
  v264[1] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:2];
  v99 = [RECondition andConditions:v98];
  v227 = [(REFilteringRule *)v95 initWithCondition:v99 type:0];

  v247 = +[REFeature dailyAverageWorkoutCountFeature];
  v100 = [RECondition conditionHasValueForFeature:v247];
  v263[0] = v100;
  v101 = +[REFeature performedWorkoutCountFeature];
  v102 = [RECondition conditionHasValueForFeature:v101];
  v263[1] = v102;
  v103 = +[REFeature performedWorkoutCountFeature];
  v104 = +[REFeature dailyAverageWorkoutCountFeature];
  v105 = +[REFeatureTransformer roundTransformer];
  v106 = [v104 featureByUsingTransformer:v105];
  v107 = [RECondition conditionForFeature:v103 relation:1 feature:v106];
  v263[2] = v107;
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v263 count:3];
  v206 = [RECondition andConditions:v108];

  v109 = [REFilteringRule alloc];
  v110 = [RECondition conditionHasValueForFeature:v229];
  v262[0] = v110;
  v262[1] = v206;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:2];
  v112 = [RECondition andConditions:v111];
  v205 = [(REFilteringRule *)v109 initWithCondition:v112 type:0];

  v113 = [REFilteringRule alloc];
  v114 = +[REFeature isDeveloperDonationFeature];
  v115 = [RECondition conditionHasValueForFeature:v114];
  v261[0] = v115;
  v116 = +[REFeature isDeveloperDonationFeature];
  v117 = [RECondition conditionForFeature:v116 hasBoolValue:1];
  v261[1] = v117;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:2];
  v119 = [RECondition andConditions:v118];
  v204 = [(REFilteringRule *)v113 initWithCondition:v119 type:1];

  LODWORD(v120) = 1157275648;
  [(RERule *)v204 setPriority:v120];
  v121 = +[REFeature nowPlayingStateFeature];
  v122 = [RECondition conditionHasValueForFeature:v121];
  v260[0] = v122;
  v123 = +[REFeature nowPlayingStateFeature];
  v124 = [RECondition conditionForFeature:v123 hasBoolValue:0];
  v260[1] = v124;
  v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v260 count:2];
  v226 = [RECondition andConditions:v125];

  v126 = +[REFeature isSiriActionFeature];
  v127 = [RECondition conditionHasValueForFeature:v126];
  v259[0] = v127;
  v128 = +[REFeature isSiriActionFeature];
  v129 = [RECondition conditionForFeature:v128 hasBoolValue:1];
  v259[1] = v129;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v259 count:2];
  v248 = [RECondition andConditions:v130];

  v258[0] = v248;
  v131 = +[REFeature siriActionRoleFeature];
  v132 = [RECondition conditionHasValueForFeature:v131];
  v258[1] = v132;
  v133 = +[REFeature siriActionRoleFeature];
  v134 = [RECondition conditionForFeature:v133 hasIntegerValue:1];
  v258[2] = v134;
  v135 = [MEMORY[0x277CBEA60] arrayWithObjects:v258 count:3];
  v136 = [RECondition andConditions:v135];

  v137 = +[REFeature siriActionHasRelevanceProvidersFeature];
  v138 = [RECondition conditionHasValueForFeature:v137];
  v257[0] = v138;
  v139 = +[REFeature siriActionHasRelevanceProvidersFeature];
  v140 = [RECondition conditionForFeature:v139 hasBoolValue:1];
  v257[1] = v140;
  v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v257 count:2];
  v142 = [RECondition andConditions:v141];

  v256[0] = v248;
  v143 = [RECondition notCondition:v136];
  v256[1] = v143;
  v256[2] = v142;
  v202 = v142;
  LODWORD(v144) = 1038174126;
  v145 = [RECondition conditionForProbabilityForInteraction:@"app-action" relation:-2 floatValue:v144];
  v256[3] = v145;
  v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v256 count:4];
  v203 = [RECondition andConditions:v146];

  v201 = [[REFilteringRule alloc] initWithCondition:v203];
  LODWORD(v147) = 1149009920;
  [(RERule *)v201 setPriority:v147];
  v255[0] = v248;
  v148 = [RECondition notCondition:v136];
  v255[1] = v148;
  v149 = [RECondition notCondition:v142];
  v255[2] = v149;
  LODWORD(v150) = 1045220557;
  v151 = [RECondition conditionForProbabilityForInteraction:@"app-action" relation:-2 floatValue:v150];
  v255[3] = v151;
  v152 = [MEMORY[0x277CBEA60] arrayWithObjects:v255 count:4];
  v200 = [RECondition andConditions:v152];

  v199 = [[REFilteringRule alloc] initWithCondition:v200];
  LODWORD(v153) = 1148993536;
  [(RERule *)v199 setPriority:v153];
  v154 = +[REFeature relevanceThresholdFeature];
  v155 = [RECondition conditionHasValueForFeature:v154];
  v254[0] = v155;
  v156 = +[REFeature relevanceThresholdFeature];
  v157 = [RECondition conditionForProbabilityForInteraction:0 relation:-2 feature:v156];
  v254[1] = v157;
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:2];
  v198 = [RECondition andConditions:v158];

  v197 = [[REFilteringRule alloc] initWithCondition:v198];
  LODWORD(v159) = 1148977152;
  [(RERule *)v197 setPriority:v159];
  v160 = [REFilteringRule alloc];
  v253[0] = v226;
  LODWORD(v161) = 1054280253;
  v162 = [RECondition conditionForProbabilityWithRelation:-2 floatValue:v161];
  v253[1] = v162;
  v163 = [MEMORY[0x277CBEA60] arrayWithObjects:v253 count:2];
  v164 = [RECondition andConditions:v163];
  v196 = [(REFilteringRule *)v160 initWithCondition:v164];

  LODWORD(v165) = 1148960768;
  [(RERule *)v196 setPriority:v165];
  v166 = [REFilteringRule alloc];
  v252[0] = v136;
  LODWORD(v167) = 1045220557;
  v168 = [RECondition conditionForProbabilityWithRelation:-2 floatValue:v167];
  v252[1] = v168;
  v169 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:2];
  v170 = [RECondition andConditions:v169];
  v171 = [(REFilteringRule *)v166 initWithCondition:v170];

  LODWORD(v172) = 1148944384;
  v194 = v171;
  [(RERule *)v171 setPriority:v172];
  v173 = [REFilteringRule alloc];
  v251[0] = v248;
  LODWORD(v174) = 1041865114;
  v175 = [RECondition conditionForProbabilityWithRelation:-2 floatValue:v174];
  v251[1] = v175;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
  v177 = [RECondition andConditions:v176];
  v195 = [(REFilteringRule *)v173 initWithCondition:v177];

  LODWORD(v178) = 1148928000;
  [(RERule *)v171 setPriority:v178];
  v179 = [REFilteringRule alloc];
  LODWORD(v180) = 1034147594;
  v181 = [RECondition conditionForProbabilityWithRelation:-2 floatValue:v180];
  v193 = [(REFilteringRule *)v179 initWithCondition:v181];

  v182 = [REFilteringRule alloc];
  v183 = +[REFeature activitySummaryFeature];
  v184 = [RECondition conditionHasValueForFeature:v183];
  v250[0] = v184;
  v185 = +[REFeature activitySummaryFeature];
  v186 = [RECondition conditionForFeature:v185 hasBoolValue:0];
  v250[1] = v186;
  v187 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:2];
  v188 = [RECondition andConditions:v187];
  v189 = [(REFilteringRule *)v182 initWithCondition:v188 type:0];

  v249[0] = v245;
  v249[1] = v244;
  v249[2] = v243;
  v249[3] = v246;
  v249[4] = v240;
  v249[5] = v241;
  v249[6] = v242;
  v249[7] = v238;
  v249[8] = v237;
  v249[9] = v236;
  v249[10] = v235;
  v249[11] = v232;
  v249[12] = v234;
  v249[13] = v233;
  v249[14] = v231;
  v249[15] = v230;
  v249[16] = v228;
  v249[17] = v227;
  v249[18] = v205;
  v249[19] = v204;
  v249[20] = v201;
  v249[21] = v199;
  v249[22] = v197;
  v249[23] = v196;
  v249[24] = v194;
  v249[25] = v195;
  v249[26] = v193;
  v249[27] = v189;
  v192 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:28];

  v190 = *MEMORY[0x277D85DE8];

  return v192;
}

id __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_4(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature dateOccursTodayFeature];
  v3 = [RECondition conditionHasValueForFeature:v2];

  v4 = +[REFeature dateOccursTodayFeature];
  v5 = [RECondition conditionForFeature:v4 hasBoolValue:0];

  v6 = [REFilteringRule alloc];
  v16[0] = v3;
  v16[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [RECondition andConditions:v7];
  v9 = [(REFilteringRule *)v6 initWithCondition:v8];

  v10 = (*(*(a1 + 32) + 16))();
  v15 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_5()
{
  v60[2] = *MEMORY[0x277D85DE8];
  v0 = +[REFeature currentlyPlayingMediaDonationFeature];
  v50 = [RECondition conditionHasValueForFeature:v0];

  v1 = +[REFeature currentlyPlayingMediaDonationFeature];
  v49 = [RECondition conditionForFeature:v1 hasBoolValue:1];

  v2 = [REFilteringRule alloc];
  v60[0] = v50;
  v60[1] = v49;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v4 = [RECondition andConditions:v3];
  v48 = [(REFilteringRule *)v2 initWithCondition:v4 type:0];

  v5 = +[REFeature isSiriActionFeature];
  v6 = [RECondition conditionHasValueForFeature:v5];
  v59[0] = v6;
  v7 = +[REFeature isSiriActionFeature];
  v8 = [RECondition conditionForFeature:v7 hasBoolValue:1];
  v59[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v47 = [RECondition andConditions:v9];

  v46 = [RECondition notCondition:v47];
  v10 = +[REFeature dateFeature];
  v11 = [RECondition conditionHasValueForFeature:v10];
  v58[0] = v11;
  v12 = +[REFeature dateOccursTodayFeature];
  v13 = [RECondition conditionHasValueForFeature:v12];
  v58[1] = v13;
  v14 = +[REFeature dateFeature];
  v15 = [RECondition conditionForFeature:v14 relation:2 floatValue:0.0];
  v58[2] = v15;
  v16 = +[REFeature dateOccursTodayFeature];
  v17 = [RECondition conditionForFeature:v16 hasBoolValue:1];
  v58[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
  v51 = [RECondition andConditions:v18];

  v19 = +[REFeature locationFeature];
  v20 = [RECondition conditionHasValueForFeature:v19];
  v57[0] = v20;
  v21 = +[REFeature locationFeature];
  v22 = [RECondition conditionForFeature:v21 relation:2 floatValue:0.0];
  v57[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v45 = [RECondition andConditions:v23];

  v24 = +[REFeature geofenceFeature];
  v25 = [RECondition conditionHasValueForFeature:v24];
  v56[0] = v25;
  v26 = +[REFeature geofenceFeature];
  v27 = [RECondition conditionForFeature:v26 relation:2 floatValue:0.0];
  v56[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v44 = [RECondition andConditions:v28];

  v29 = [REFilteringRule alloc];
  v55[0] = v46;
  v55[1] = v51;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v31 = [RECondition andConditions:v30];
  v32 = [(REFilteringRule *)v29 initWithCondition:v31 type:1];

  v33 = [REFilteringRule alloc];
  v54[0] = v46;
  v54[1] = v45;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v35 = [RECondition andConditions:v34];
  v36 = [(REFilteringRule *)v33 initWithCondition:v35 type:1];

  v37 = [REFilteringRule alloc];
  v53[0] = v46;
  v53[1] = v44;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v39 = [RECondition andConditions:v38];
  v40 = [(REFilteringRule *)v37 initWithCondition:v39 type:1];

  v52[0] = v48;
  v52[1] = v32;
  v52[2] = v36;
  v52[3] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

id __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_6(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature recentSiriActionFeature];
  v3 = (*(*(a1 + 32) + 16))();
  v4 = +[REFeature dateFeature];
  v5 = [REComparisonCondition conditionForLeftFeature:v2 relation:2 rightFeature:v4];
  v6 = [RERankingRule alloc];
  v7 = [RECondition conditionHasValueForFeature:v2];
  v8 = [RECondition conditionHasValueForFeature:v4];
  v9 = [(RERankingRule *)v6 initWithLeftCondition:v7 rightCondition:v8 comparisonCondition:v5 order:1];

  LODWORD(v10) = 1157234688;
  [(RERule *)v9 setPriority:v10];
  v14[0] = v3;
  v14[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_7(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [REFilteringRule alloc];
  v3 = +[RECondition trueCondition];
  v4 = [(REFilteringRule *)v2 initWithCondition:v3 type:1];

  v5 = (*(*(a1 + 32) + 16))();
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_8(void *a1)
{
  v2 = objc_alloc_init(RESectionDescriptor);
  v3 = defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor;
  defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor = v2;

  [defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor setName:@"defaultSectionIdentifier"];
  [defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor setMaxElementCount:-1];
  v4 = defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor;
  v5 = (*(a1[4] + 16))();
  [v4 setOrderedRules:v5];

  v6 = objc_alloc_init(REHistoricSectionDescriptor);
  [(REHistoricSectionDescriptor *)v6 setMaxElementCount:-1];
  v7 = [defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor orderedRules];
  [(REHistoricSectionDescriptor *)v6 setOrderedRules:v7];

  [(REHistoricSectionDescriptor *)v6 setInvertsRanking:1];
  [defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor setHistoricSectionDescriptor:v6];
  v8 = MEMORY[0x22AABC5E0](a1[5]);
  if (v8)
  {
    v9 = [(REHistoricSectionDescriptor *)v6 orderedRules];
    v10 = v8[2](v8);
    v11 = [v9 arrayByAddingObjectsFromArray:v10];
    [(REHistoricSectionDescriptor *)v6 setOrderedRules:v11];
  }

  v12 = MEMORY[0x22AABC5E0](a1[6]);
  if (v12)
  {
    v13 = defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor;
    v17 = v12;
    v14 = [defaultUpNextSectionDescriptorForIdentifier__REDefaultSectionIdentifierDescriptor orderedRules];
    v15 = v17[2](v17);
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
    [v13 setOrderedRules:v16];

    v12 = v17;
  }
}

void __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_9(uint64_t a1)
{
  v2 = objc_alloc_init(RESectionDescriptor);
  v3 = defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor;
  defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor = v2;

  [defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor setName:@"allDaySectionIdentifier"];
  [defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor setMaxElementCount:-1];
  v4 = defaultUpNextSectionDescriptorForIdentifier__REAllDaySectionIdentifierDescriptor;
  v5 = (*(*(a1 + 32) + 16))();
  [v4 setOrderedRules:v5];
}

void __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_10(uint64_t a1)
{
  v2 = objc_alloc_init(RESectionDescriptor);
  v3 = defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor;
  defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor = v2;

  [defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor setName:@"tomorrowSectionIdentifier"];
  [defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor setMaxElementCount:-1];
  v4 = defaultUpNextSectionDescriptorForIdentifier__RETomorrowSectionIdentifierDescriptor;
  v5 = (*(*(a1 + 32) + 16))();
  [v4 setOrderedRules:v5];
}

void __90__RESectionDescriptor_REUpNextConfiguration__defaultUpNextSectionDescriptorForIdentifier___block_invoke_11(uint64_t a1)
{
  v2 = objc_alloc_init(RESectionDescriptor);
  v3 = defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor;
  defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor = v2;

  [defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor setName:@"upcomingSectionIdentifier"];
  [defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor setMaxElementCount:-1];
  v4 = defaultUpNextSectionDescriptorForIdentifier__REThisWeekSectionIdentifierDescriptor;
  v5 = (*(*(a1 + 32) + 16))();
  [v4 setOrderedRules:v5];
}

@end