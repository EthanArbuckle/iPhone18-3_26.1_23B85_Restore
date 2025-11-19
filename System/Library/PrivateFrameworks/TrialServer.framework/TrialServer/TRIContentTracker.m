@interface TRIContentTracker
+ (id)contentIdentifierForExperimentArtifactWithDeployment:(id)a3;
+ (id)contentIdentifierForFactorPackSetWithId:(id)a3;
+ (id)contentIdentifierForRolloutArtifactWithDeployment:(id)a3;
+ (id)contentIdentifierForTreatmentArtifactWithTreatmentId:(id)a3 container:(id)a4;
+ (id)decodeContentIdentifier:(id)a3;
- (BOOL)_addOrDropRefWithContentIdentifier:(id)a3 changeType:(unint64_t)a4;
- (BOOL)clearRefsWithContentIdentifier:(id)a3;
- (BOOL)enumerateTrackedItemsWithBlock:(id)a3;
- (BOOL)refCountForContentIdentifier:(id)a3 refCount:(int64_t *)a4;
- (TRIContentTracker)initWithDatabase:(id)a3;
@end

@implementation TRIContentTracker

- (TRIContentTracker)initWithDatabase:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIContentTracker;
  v7 = [(TRIContentTracker *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, a3);
  }

  return v8;
}

- (BOOL)_addOrDropRefWithContentIdentifier:(id)a3 changeType:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"contentIdentifier"}];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke;
  v13[3] = &unk_279DE1560;
  v9 = v7;
  v14 = v9;
  v15 = self;
  v16 = &v18;
  v17 = a4;
  [(TRIDatabase *)db writeTransactionWithFailableBlock:v13];
  v10 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v10;
}

uint64_t __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [v3 db];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_2;
  v27[3] = &unk_279DDF860;
  v28 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_3;
  v26[3] = &unk_279DDFC98;
  v26[4] = &v29;
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" SELECT refCount FROM     contentReferences WHERE     contentId = :content_id;" onPrep:v27 onRow:v26 onError:v5];

  v7 = *MEMORY[0x277D42678];
  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 56);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 == 1)
  {
    v11 = v30[3];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v11 - 1;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_13;
  }

  v10 = v30[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 1;
LABEL_11:
    v13 = [v3 db];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_4;
    v23[3] = &unk_279DE1538;
    v24 = *(a1 + 32);
    v25 = v9;
    v14 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v23[0], 3221225472, __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_4, &unk_279DE1538}];
    v15 = [v13 prepAndRunQuery:@" INSERT OR REPLACE INTO contentReferences(    contentId onPrep:refCount) VALUES(    :content_id onRow::ref_count);" onError:{v23, 0, v14}];

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

    v12 = 1;
    goto LABEL_13;
  }

  v9 = (v10 & ~(v10 >> 63)) + 1;
  if ((v10 & ~(v10 >> 63)) != 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_11;
  }

  v12 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v17 = "-";
    }

    else
    {
      v17 = "+";
    }

    v18 = [*(a1 + 32) str];
    v19 = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_5(v30[3]);
    v20 = __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_5(v9);
    *buf = 136315906;
    v34 = v17;
    v35 = 2112;
    v36 = v18;
    v37 = 2114;
    v38 = v19;
    v39 = 2114;
    v40 = v20;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "refCount%s %@: %{public}@ --> %{public}@", buf, 0x2Au);
  }

  *(*(*(a1 + 48) + 8) + 24) = v12;
  v7 = *MEMORY[0x277D42670];
LABEL_19:
  _Block_object_dispose(&v29, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

void __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 str];
  [v3 bindNamedParam:":content_id" toNSString:v4];
}

void __67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 str];
  [v5 bindNamedParam:":content_id" toNSString:v4];

  [v5 bindNamedParam:":ref_count" toInt64:*(a1 + 40)];
}

__CFString *__67__TRIContentTracker__addOrDropRefWithContentIdentifier_changeType___block_invoke_5(uint64_t a1)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"(none)";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a1];
  }

  return v2;
}

- (BOOL)refCountForContentIdentifier:(id)a3 refCount:(int64_t *)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"contentIdentifier"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"refCount"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  db = self->_db;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke;
  v14[3] = &unk_279DE15A8;
  v17 = &v19;
  v18 = a4;
  v9 = v7;
  v15 = v9;
  v16 = self;
  [(TRIDatabase *)db readTransactionWithFailableBlock:v14];
  v10 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  **(a1 + 56) = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [a2 db];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke_2;
  v10[3] = &unk_279DDF860;
  v11 = *(v2 + 32);
  v4 = [*(*(v2 + 40) + 8) generalErrorHandlerWithOutError:{0, MEMORY[0x277D85DD0], 3221225472, __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke_3, &__block_descriptor_40_e49___PASDBIterAction__B_16__0___PASSqliteStatement_8l, *(v2 + 56), v10[0], 3221225472, __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke_2, &unk_279DDF860}];
  *(*(*(v2 + 48) + 8) + 24) = [v3 prepAndRunQuery:@" SELECT refCount FROM     contentReferences WHERE     contentId = :content_id;" onPrep:v10 onRow:&v9 onError:v4];

  LODWORD(v2) = *(*(*(v2 + 48) + 8) + 24);
  v5 = MEMORY[0x277D42670];
  v6 = MEMORY[0x277D42678];

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

void __59__TRIContentTracker_refCountForContentIdentifier_refCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 str];
  [v3 bindNamedParam:":content_id" toNSString:v4];
}

- (BOOL)clearRefsWithContentIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"contentIdentifier"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TRIContentTracker_clearRefsWithContentIdentifier___block_invoke;
  v11[3] = &unk_279DE15D0;
  v14 = &v15;
  v7 = v5;
  v12 = v7;
  v13 = self;
  [(TRIDatabase *)db writeTransactionWithFailableBlock:v11];
  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __52__TRIContentTracker_clearRefsWithContentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__TRIContentTracker_clearRefsWithContentIdentifier___block_invoke_2;
  v9[3] = &unk_279DDF860;
  v10 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  *(*(*(a1 + 48) + 8) + 24) = [v3 prepAndRunQuery:@" DELETE FROM      contentReferences WHERE     contentId = :content_id;" onPrep:v9 onRow:0 onError:v4];

  LODWORD(a1) = *(*(*(a1 + 48) + 8) + 24);
  v5 = MEMORY[0x277D42670];
  v6 = MEMORY[0x277D42678];

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

void __52__TRIContentTracker_clearRefsWithContentIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 str];
  [v3 bindNamedParam:":content_id" toNSString:v4];
}

- (BOOL)enumerateTrackedItemsWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIContentTracker.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TRIContentTracker_enumerateTrackedItemsWithBlock___block_invoke;
  v11[3] = &unk_279DE1620;
  v13 = &v15;
  v14 = a2;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [(TRIDatabase *)db readTransactionWithFailableBlock:v11];
  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __52__TRIContentTracker_enumerateTrackedItemsWithBlock___block_invoke(void *a1, void *a2)
{
  v3 = [a2 db];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TRIContentTracker_enumerateTrackedItemsWithBlock___block_invoke_2;
  v11[3] = &unk_279DE15F8;
  v4 = a1[4];
  v5 = a1[5];
  v13 = a1[7];
  v11[4] = v4;
  v12 = v5;
  v6 = [*(a1[4] + 8) generalErrorHandlerWithOutError:0];
  *(*(a1[6] + 8) + 24) = [v3 prepAndRunQuery:@"SELECT * FROM contentReferences;" onPrep:0 onRow:v11 onError:v6];

  LODWORD(a1) = *(*(a1[6] + 8) + 24);
  v7 = MEMORY[0x277D42670];
  v8 = MEMORY[0x277D42678];

  if (a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return *v9;
}

uint64_t __52__TRIContentTracker_enumerateTrackedItemsWithBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"contentId" table:0];
  v5 = [v3 getInt64ForColumnName:"refCount" table:0];

  if (!v4)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIContentTracker.m" lineNumber:202 description:@"read NULL contentId from NOT NULL column"];
  }

  v14 = 0;
  v6 = a1[5];
  v7 = [[TRIContentTrackingId alloc] initWithStr:v4];
  (*(v6 + 16))(v6, v7, v5, &v14);

  v8 = v14;
  v9 = MEMORY[0x277D42698];
  v10 = MEMORY[0x277D42690];

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return *v11;
}

+ (id)contentIdentifierForExperimentArtifactWithDeployment:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v21[0] = @"exp-artifact";
  v20[0] = @"0_type";
  v20[1] = @"1_id";
  v7 = [v5 experimentId];
  v21[1] = v7;
  v20[2] = @"2_dep";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "deploymentId")}];
  v21[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v19 = 0;
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:2 error:&v19];
  v11 = v19;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [v5 shortDesc];
    [v16 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:229 description:{@"Failed to create content identifier for %@: %@", v17, v11}];
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  if (!v12)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"jsonStr"}];
  }

  v13 = [[TRIContentTrackingId alloc] initWithStr:v12];

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)contentIdentifierForTreatmentArtifactWithTreatmentId:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = objc_opt_new();
  [v10 setObject:@"trt-artifact" forKeyedSubscript:@"0_type"];
  [v10 setObject:v7 forKeyedSubscript:@"1_id"];
  if (v8)
  {
    v11 = [v8 identifier];
    [v10 setObject:v11 forKeyedSubscript:@"3_cntId"];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
    [v10 setObject:v12 forKeyedSubscript:@"4_cntType"];
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"3_cntId"];
    [v10 setObject:0 forKeyedSubscript:@"4_cntType"];
  }

  v20 = 0;
  v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:2 error:&v20];
  v14 = v20;
  if (!v13)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:249 description:{@"Failed to create content identifier for %@: %@", v7, v14}];
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
  if (!v15)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"jsonStr"}];
  }

  v16 = [[TRIContentTrackingId alloc] initWithStr:v15];

  objc_autoreleasePoolPop(v9);

  return v16;
}

+ (id)contentIdentifierForRolloutArtifactWithDeployment:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v21[0] = @"rlo-artifact";
  v20[0] = @"0_type";
  v20[1] = @"1_id";
  v7 = [v5 rolloutId];
  v21[1] = v7;
  v20[2] = @"2_dep";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "deploymentId")}];
  v21[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v19 = 0;
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:2 error:&v19];
  v11 = v19;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [v5 shortDesc];
    [v16 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:268 description:{@"Failed to create content identifier for %@: %@", v17, v11}];
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  if (!v12)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"jsonStr"}];
  }

  v13 = [[TRIContentTrackingId alloc] initWithStr:v12];

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)contentIdentifierForFactorPackSetWithId:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v17[0] = @"0_type";
  v17[1] = @"1_id";
  v18[0] = @"fp-set";
  v18[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v16 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:2 error:&v16];
  v9 = v16;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:286 description:{@"Failed to create content identifier for %@: %@", v5, v9}];
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  if (!v10)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"jsonStr"}];
  }

  v11 = [[TRIContentTrackingId alloc] initWithStr:v10];

  objc_autoreleasePoolPop(v6);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decodeContentIdentifier:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 str];
  v8 = [v7 dataUsingEncoding:4];

  if (!v8)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:a1 file:@"TRIContentTracker.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"json"}];
  }

  v45 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v45];
  v10 = v45;
  if (!v9)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v10;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to decode JSON for content identifier: %{public}@", buf, 0xCu);
    }

LABEL_11:
    v21 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v11 = [v9 objectForKeyedSubscript:@"0_type"];
  v12 = [@"exp-artifact" isEqual:v11];

  if (v12)
  {
    v13 = [v9 objectForKeyedSubscript:@"1_id"];
    v14 = [v9 objectForKeyedSubscript:@"2_dep"];
    v15 = v14;
    if (v13 && v14)
    {
      v16 = [objc_alloc(MEMORY[0x277D736C0]) initWithExperimentId:v13 deploymentId:{objc_msgSend(v14, "intValue")}];
      v17 = [TRIContentDescriptorUnion alloc];
      v18 = 0;
      v19 = v16;
      v20 = 0;
LABEL_8:
      v21 = [(TRIContentDescriptorUnion *)v17 initWithType:v18 experiment:v19 treatment:0 rollout:v20 factorPackSet:0];
LABEL_22:

      goto LABEL_31;
    }

    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v39 = v6;
      v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      *buf = 138543362;
      v47 = v40;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Invalid JSON for experiment content identifier: %{public}@", buf, 0xCu);

      v6 = v39;
    }

    goto LABEL_21;
  }

  v22 = [v9 objectForKeyedSubscript:@"0_type"];
  v23 = [@"trt-artifact" isEqual:v22];

  if (v23)
  {
    v44 = v6;
    v13 = [v9 objectForKeyedSubscript:@"1_id"];
    v24 = [v9 objectForKeyedSubscript:@"3_cntId"];
    v25 = [v9 objectForKeyedSubscript:@"4_cntType"];
    v26 = v25;
    if (v13 && (v24 == 0) != (v25 != 0))
    {
      v27 = 0;
      if (v24 && v25)
      {
        v27 = [objc_alloc(MEMORY[0x277D73650]) initWithIdentifier:v24 type:{objc_msgSend(v25, "integerValue")}];
      }

      v28 = [[TRITreatmentContentDescriptor alloc] initWithTreatmentId:v13 container:v27];
      v21 = [[TRIContentDescriptorUnion alloc] initWithType:1 experiment:0 treatment:v28 rollout:0 factorPackSet:0];
    }

    else
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        *buf = 138412290;
        v47 = v41;
        _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Invalid JSON for treatment content identifier: %@", buf, 0xCu);
      }

      v21 = 0;
    }

    v6 = v44;
    goto LABEL_31;
  }

  v29 = [v9 objectForKeyedSubscript:@"0_type"];
  v30 = [@"rlo-artifact" isEqual:v29];

  if (v30)
  {
    v13 = [v9 objectForKeyedSubscript:@"1_id"];
    v31 = [v9 objectForKeyedSubscript:@"2_dep"];
    v15 = v31;
    if (v13 && v31)
    {
      v16 = [objc_alloc(MEMORY[0x277D737C8]) initWithRolloutId:v13 deploymentId:{objc_msgSend(v31, "intValue")}];
      v17 = [TRIContentDescriptorUnion alloc];
      v18 = 2;
      v19 = 0;
      v20 = v16;
      goto LABEL_8;
    }

    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      *buf = 138543362;
      v47 = v37;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Invalid JSON for rollout content identifier: %{public}@", buf, 0xCu);
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v34 = [v9 objectForKeyedSubscript:@"0_type"];
  v35 = [@"fp-set" isEqual:v34];

  if (v35)
  {
    v36 = [v9 objectForKeyedSubscript:@"1_id"];
    if (v36)
    {
      v13 = v36;
      v21 = [[TRIContentDescriptorUnion alloc] initWithType:3 experiment:0 treatment:0 rollout:0 factorPackSet:v36];
      goto LABEL_31;
    }

    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      *buf = 138543362;
      v47 = v42;
      _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Invalid JSON for factor pack set identifier: %{public}@", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_11;
  }

  v21 = 0;
LABEL_32:

  objc_autoreleasePoolPop(v6);
  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

@end