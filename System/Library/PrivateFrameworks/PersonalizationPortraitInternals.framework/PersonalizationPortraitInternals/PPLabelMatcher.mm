@interface PPLabelMatcher
+ (id)sharedInstance;
- (PPLabelMatcher)init;
- (id)_generateMap;
- (unint64_t)matchFromLabel:(id)a3 toLabel:(id)a4;
@end

@implementation PPLabelMatcher

- (id)_generateMap
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v74 = *MEMORY[0x277CBD8D8];
  v5 = *MEMORY[0x277CBD8E8];
  v6 = *MEMORY[0x277CBD900];
  v76 = *MEMORY[0x277CBD928];
  v75 = *MEMORY[0x277CBD908];
  v7 = [v4 initWithObjects:{*MEMORY[0x277CBD8E8], *MEMORY[0x277CBD900], *MEMORY[0x277CBD928], *MEMORY[0x277CBD908], 0}];
  objc_autoreleasePoolPop(v3);
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = *MEMORY[0x277CBD8E0];
  v11 = [v9 initWithObjects:{*MEMORY[0x277CBD8E0], 0}];
  objc_autoreleasePoolPop(v8);
  v12 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v7 strongSet:v11];
  [v2 setObject:v12 forKeyedSubscript:v10];

  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v5, 0}];
  objc_autoreleasePoolPop(v13);
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = *MEMORY[0x277CBD940];
  v18 = [v16 initWithObjects:{*MEMORY[0x277CBD940], v6, 0}];
  objc_autoreleasePoolPop(v15);
  v19 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v14 strongSet:v18];
  [v2 setObject:v19 forKeyedSubscript:v17];

  v20 = objc_autoreleasePoolPush();
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, v17, v6, 0}];
  objc_autoreleasePoolPop(v20);
  v22 = objc_autoreleasePoolPush();
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v5, 0}];
  objc_autoreleasePoolPop(v22);
  v24 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v21 strongSet:v23];
  [v2 setObject:v24 forKeyedSubscript:v5];

  v25 = objc_autoreleasePoolPush();
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, v5, 0}];
  objc_autoreleasePoolPop(v25);
  v27 = objc_autoreleasePoolPush();
  v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v74, 0}];
  objc_autoreleasePoolPop(v27);
  v29 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v26 strongSet:v28];
  [v2 setObject:v29 forKeyedSubscript:v74];

  v30 = objc_autoreleasePoolPush();
  v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v5, 0}];
  objc_autoreleasePoolPop(v30);
  v32 = objc_autoreleasePoolPush();
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v6, v17, 0}];
  objc_autoreleasePoolPop(v32);
  v34 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v31 strongSet:v33];
  [v2 setObject:v34 forKeyedSubscript:v6];

  v35 = objc_autoreleasePoolPush();
  v36 = objc_alloc(MEMORY[0x277CBEB98]);
  v37 = *MEMORY[0x277CBD918];
  v38 = [v36 initWithObjects:{*MEMORY[0x277CBD918], 0}];
  objc_autoreleasePoolPop(v35);
  v39 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v38];
  [v2 setObject:v39 forKeyedSubscript:v37];

  v40 = objc_autoreleasePoolPush();
  v41 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, v5, v6, 0}];
  objc_autoreleasePoolPop(v40);
  v42 = objc_autoreleasePoolPush();
  v43 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v76, v75, 0}];
  objc_autoreleasePoolPop(v42);
  v44 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v41 strongSet:v43];
  [v2 setObject:v44 forKeyedSubscript:v76];

  v45 = objc_autoreleasePoolPush();
  v46 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, v5, v6, 0}];
  objc_autoreleasePoolPop(v45);
  v47 = objc_autoreleasePoolPush();
  v48 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v76, v75, 0}];
  objc_autoreleasePoolPop(v47);
  v49 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:v46 strongSet:v48];
  [v2 setObject:v49 forKeyedSubscript:v75];

  v50 = objc_autoreleasePoolPush();
  v51 = objc_alloc(MEMORY[0x277CBEB98]);
  v52 = *MEMORY[0x277CBD8F8];
  v53 = *MEMORY[0x277CBD910];
  v54 = *MEMORY[0x277CBD920];
  v55 = [v51 initWithObjects:{*MEMORY[0x277CBD8F8], *MEMORY[0x277CBD910], *MEMORY[0x277CBD920], 0}];
  objc_autoreleasePoolPop(v50);
  v56 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v55];
  [v2 setObject:v56 forKeyedSubscript:v52];

  v57 = objc_autoreleasePoolPush();
  v58 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v52, v53, v54, 0}];
  objc_autoreleasePoolPop(v57);
  v59 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v58];
  [v2 setObject:v59 forKeyedSubscript:v54];

  v60 = objc_autoreleasePoolPush();
  v61 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v52, v53, v54, 0}];
  objc_autoreleasePoolPop(v60);
  v62 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v61];
  [v2 setObject:v62 forKeyedSubscript:v53];

  v63 = objc_autoreleasePoolPush();
  v64 = objc_alloc(MEMORY[0x277CBEB98]);
  v65 = *MEMORY[0x277CBD938];
  v66 = [v64 initWithObjects:{*MEMORY[0x277CBD938], 0}];
  objc_autoreleasePoolPop(v63);
  v67 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v66];
  [v2 setObject:v67 forKeyedSubscript:v65];

  v68 = objc_autoreleasePoolPush();
  v69 = objc_alloc(MEMORY[0x277CBEB98]);
  v70 = *MEMORY[0x277CBD8D0];
  v71 = [v69 initWithObjects:{*MEMORY[0x277CBD8D0], 0}];
  objc_autoreleasePoolPop(v68);
  v72 = [PPLabelStrengthSets labelStrengthSetsWithWeakSet:0 strongSet:v71];
  [v2 setObject:v72 forKeyedSubscript:v70];

  return v2;
}

- (unint64_t)matchFromLabel:(id)a3 toLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 1;
  if (v6 && v7)
  {
    v10 = [(NSDictionary *)self->_map objectForKeyedSubscript:v7];

    if (v10)
    {
      v11 = [(NSDictionary *)self->_map objectForKeyedSubscript:v6];
      v12 = [v11 strong];
      v13 = [v12 containsObject:v8];

      if (v13)
      {
        v9 = 2;
      }

      else
      {
        v14 = [(NSDictionary *)self->_map objectForKeyedSubscript:v6];
        v15 = [v14 weak];
        v16 = [v15 containsObject:v8];

        v9 = v16;
      }
    }

    else if ([v6 caseInsensitiveCompare:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  return v9;
}

- (PPLabelMatcher)init
{
  v7.receiver = self;
  v7.super_class = PPLabelMatcher;
  v2 = [(PPLabelMatcher *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PPLabelMatcher *)v2 _generateMap];
    map = v3->_map;
    v3->_map = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_26261 != -1)
  {
    dispatch_once(&sharedInstance_once_26261, &__block_literal_global_26262);
  }

  v3 = sharedInstance_shared_26263;

  return v3;
}

uint64_t __32__PPLabelMatcher_sharedInstance__block_invoke()
{
  sharedInstance_shared_26263 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end