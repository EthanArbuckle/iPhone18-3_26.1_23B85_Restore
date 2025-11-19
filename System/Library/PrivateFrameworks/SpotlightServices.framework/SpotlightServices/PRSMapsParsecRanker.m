@interface PRSMapsParsecRanker
- (PRSMapsParsecRanker)init;
@end

@implementation PRSMapsParsecRanker

- (PRSMapsParsecRanker)init
{
  v48 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PRSMapsParsecRanker;
  v2 = [(PRSMapsParsecRanker *)&v35 init];
  if (!v2)
  {
LABEL_26:
    v24 = v2;
    goto LABEL_27;
  }

  v3 = SSDefaultsGetResources();
  v4 = objc_opt_new();
  v34 = 0;
  v5 = [v3 BOOLeanForKey:@"MapsParsecRankerEnabled" didFailWithError:&v34];
  v6 = v34;
  if (v6)
  {
    [v4 addObject:@"MapsParsecRankerEnabled"];
  }

  else
  {
    v2->_rankerEnabled = v5;
  }

  v33 = v6;
  v7 = [v3 BOOLeanForKey:@"MapsParsecRankerEntityRelevanceEnabled" didFailWithError:&v33];
  v8 = v33;

  if (v8)
  {
    [v4 addObject:@"MapsParsecRankerEntityRelevanceEnabled"];
  }

  else
  {
    v2->_entityRelevanceEnabled = v7;
  }

  v32 = v8;
  [v3 doubleForKey:@"MapsParsecRankerVisitCountThreshold" didFailWithError:&v32];
  v10 = v9;
  v11 = v32;

  if (v11)
  {
    [v4 addObject:@"MapsParsecRankerVisitCountThreshold"];
  }

  else
  {
    v2->_visitCountThreshold = v10;
  }

  v31 = v11;
  [v3 doubleForKey:@"MapsParsecRankerLastVisitDaysThreshold" didFailWithError:&v31];
  v13 = v12;
  v14 = v31;

  if (v14)
  {
    [v4 addObject:@"MapsParsecRankerLastVisitDaysThreshold"];
  }

  else
  {
    v2->_lastVisitDaysThreshold = v13;
  }

  v30 = v14;
  [v3 doubleForKey:@"MapsParsecRankerVisitCountGivenLocationThreshold" didFailWithError:&v30];
  v16 = v15;
  v17 = v30;

  if (v17)
  {
    [v4 addObject:@"MapsParsecRankerVisitCountGivenLocationThreshold"];
  }

  else
  {
    v2->_visitCountGivenLocationThreshold = v16;
  }

  v29 = v17;
  [v3 doubleForKey:@"MapsParsecRankerEntityRelevanceThreshold" didFailWithError:&v29];
  v19 = v18;
  v20 = v29;

  if (!v20)
  {
    v2->_entityRelevanceThreshold = v19;
  }

  v21 = [v4 count];
  v22 = PRSLogCategoryDefault();
  v23 = v22;
  if (!v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v37 = v5;
      v38 = 1024;
      v39 = v7;
      v40 = 2048;
      v41 = v19;
      v42 = 2048;
      v43 = v10;
      v44 = 2048;
      v45 = v13;
      v46 = 2048;
      v47 = v16;
      _os_log_impl(&dword_1D9F69000, v23, OS_LOG_TYPE_DEFAULT, "PRSMapsParsecRanker - Successfully loaded resources: rankerEnabled=%u, entityRelevanceEnabled=%u, entityRelevanceThreshold=%f, visitCountThreshold=%f, lastVisitDaysThreshold=%f, visitCountGivenLocationThreshold=%f", buf, 0x36u);
    }

    v25 = [objc_alloc(MEMORY[0x1E69A8C20]) initWithVisitCountThreshold:v2->_entityRelevanceEnabled lastVisitDaysThreshold:v2->_visitCountThreshold visitCountGivenLocationThreshold:v2->_lastVisitDaysThreshold entityRelevanceThreshold:v2->_visitCountGivenLocationThreshold enableEntityRelevance:v2->_entityRelevanceThreshold];
    iqfRanker = v2->_iqfRanker;
    v2->_iqfRanker = v25;

    goto LABEL_26;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [PRSMapsParsecRanker init];
  }

  v24 = 0;
LABEL_27:

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

@end