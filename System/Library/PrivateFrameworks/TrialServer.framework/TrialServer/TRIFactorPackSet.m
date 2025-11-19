@interface TRIFactorPackSet
+ (BOOL)_signatures:(id)a3 onItems:(id)a4 areValidUsingPublicCertificate:(id)a5;
+ (id)allReferencedCKRecordKeys;
+ (id)artifactFromCKRecord:(id)a3;
+ (id)setWithIdent:(id)a3 packs:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSet:(id)a3;
- (BOOL)isStructurallyValid;
- (TRIFactorPackSet)initWithIdent:(id)a3 packs:(id)a4;
- (id)copyWithReplacementIdent:(id)a3;
- (id)copyWithReplacementPacks:(id)a3;
- (id)description;
@end

@implementation TRIFactorPackSet

+ (id)allReferencedCKRecordKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73940];
  v7[0] = *MEMORY[0x277D73948];
  v7[1] = v2;
  v3 = *MEMORY[0x277D73950];
  v7[2] = *MEMORY[0x277D73938];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)artifactFromCKRecord:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 values];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 triArrayValueForField:*MEMORY[0x277D73940] isNestedValue:0];
    v8 = v7;
    if (!v7 || [v7 count]&& ([v8 objectAtIndexedSubscript:0], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = [v4 recordID];
        *buf = 138412290;
        v49 = v29;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack definitions.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_50;
    }

    v11 = [v6 triArrayValueForField:*MEMORY[0x277D73938] isNestedValue:0];
    v12 = v11;
    if (!v11 || [v11 count]&& ([v12 objectAtIndexedSubscript:0], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, (v14 & 1) == 0))
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v32 = [v4 recordID];
        *buf = 138412290;
        v49 = v32;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack definition signatures.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_49;
    }

    v15 = [v6 triDataForField:*MEMORY[0x277D73950]];
    if (!v15)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v36 = [v4 recordID];
        *buf = 138412290;
        v49 = v36;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt public certificate.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_48;
    }

    v16 = [v6 triStringValueForField:*MEMORY[0x277D73948] isNestedValue:0];
    if (!v16)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v37 = [v4 recordID];
        *buf = 138412290;
        v49 = v37;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack set id.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_47;
    }

    v17 = TRIValidateFactorPackSetId();
    if (v17)
    {
      if ([a1 _signatures:v12 onItems:v8 areValidUsingPublicCertificate:v15])
      {
        v38 = v16;
        v39 = v17;
        log = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v8, "count")}];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v8;
        v18 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v43 + 1) + 8 * i);
              v42 = 0;
              v23 = [objc_alloc(MEMORY[0x277D73670]) initWithData:v22 error:&v42];
              if (!v23)
              {
                v33 = TRILogCategory_Server();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v49 = v39;
                  v50 = 2114;
                  v51 = v42;
                  _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to parse factor pack contained in factor pack set %{public}@: %{public}@", buf, 0x16u);
                }

                v27 = 0;
                v16 = v38;
                v17 = v39;
                goto LABEL_46;
              }

              v24 = v23;
              [log addObject:v23];
            }

            v19 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v17 = v39;
        v25 = [[TRIFactorPackSet alloc] initWithIdent:v39 packs:log];
        if ([(TRIFactorPackSet *)v25 isStructurallyValid])
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        v16 = v38;
        goto LABEL_46;
      }

      log = TRILogCategory_Server();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
LABEL_42:
        v27 = 0;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:

        goto LABEL_51;
      }

      v30 = [v4 recordID];
      *buf = 138412546;
      v49 = v30;
      v50 = 2114;
      v51 = v17;
      v31 = "CloudKit record %@ with factor pack set id %{public}@ does not have valid signatures.";
    }

    else
    {
      log = TRILogCategory_Server();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v30 = [v4 recordID];
      *buf = 138412546;
      v49 = v30;
      v50 = 2114;
      v51 = v16;
      v31 = "CloudKit record %@ has factor pack set id which was rejected as unsuitable: %{public}@";
    }

    _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);

    goto LABEL_42;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v28 = [v4 recordID];
    *buf = 138412290;
    v49 = v28;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Could not create FactorPackSet artifact from CloudKit record %@.", buf, 0xCu);
  }

  v27 = 0;
LABEL_51:

  v34 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (BOOL)_signatures:(id)a3 onItems:(id)a4 areValidUsingPublicCertificate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10 == [v8 count])
  {
    v11 = [TRISignatureKey keyFromData:v9];
    if (v11)
    {
      if ([v7 count])
      {
        v12 = 0;
        do
        {
          v13 = [v7 objectAtIndexedSubscript:v12];
          v14 = [v8 objectAtIndexedSubscript:v12];
          v15 = [v11 validateBase64Signature:v13 data:v14];

          if ((v15 & 1) == 0)
          {
            break;
          }

          ++v12;
        }

        while (v12 < [v7 count]);
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isStructurallyValid
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v35 = self;
  v4 = [(TRIFactorPackSet *)self packs];
  v36 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(TRIFactorPackSet *)v35 packs];
  v5 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v5)
  {
    v27 = 1;
    goto LABEL_33;
  }

  v33 = *v52;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v52 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v51 + 1) + 8 * i);
      v8 = objc_autoreleasePoolPush();
      if (([v7 hasFactorPackId] & 1) == 0)
      {
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v32 = [(TRIFactorPackSet *)v35 ident];
          *v59 = 138543362;
          *&v59[4] = v32;
          _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Factor pack set %{public}@ contains factor pack with missing id", v59, 0xCu);
        }

LABEL_30:

LABEL_31:
        objc_autoreleasePoolPop(v8);
LABEL_32:
        v27 = 0;
        goto LABEL_33;
      }

      v9 = [v7 factorPackId];
      v10 = TRIValidateFactorPackId();

      if (!v10)
      {
        goto LABEL_31;
      }

      v11 = [v7 selectedNamespace];
      if (![v7 hasSelectedNamespace] || !objc_msgSend(v11, "hasName") || (objc_msgSend(v11, "name"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "triIsPathSafe"), v12, (v13 & 1) == 0))
      {
        v28 = TRILogCategory_Server();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = [v11 name];
          *v59 = 138543618;
          *&v59[4] = v10;
          *&v59[12] = 2114;
          *&v59[14] = v31;
          _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "FactorPack %{public}@ has invalid selectedNamespace.name: %{public}@", v59, 0x16u);
        }

        goto LABEL_30;
      }

      *v59 = 0;
      *&v59[8] = v59;
      *&v59[16] = 0x2020000000;
      v60 = 0;
      v14 = [v11 name];
      v15 = [v36 objectForKeyedSubscript:v14];

      if (!v15)
      {
        v15 = objc_opt_new();
        v16 = [v11 name];
        [v36 setObject:v15 forKeyedSubscript:v16];
      }

      v17 = objc_opt_new();
      v18 = [v11 compatibilityVersionArray];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke;
      v49[3] = &unk_279DDF630;
      v19 = v17;
      v50 = v19;
      [v18 enumerateValuesWithBlock:v49];

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_2;
      v44[3] = &unk_279DDF6F8;
      v20 = v15;
      v45 = v20;
      v46 = v35;
      v21 = v11;
      v47 = v21;
      v48 = v59;
      [v19 enumerateObjectsUsingBlock:v44];
      if (*(*&v59[8] + 24))
      {
        v22 = 0;
      }

      else
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_8;
        v37[3] = &unk_279DDF720;
        v23 = v21;
        v38 = v23;
        v39 = &v40;
        [v7 enumerateFactorLevelsWithBlock:v37];
        v24 = *(v41 + 24);
        if (v24 == 1)
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = [v23 name];
            *buf = 138543618;
            v56 = v10;
            v57 = 2114;
            v58 = v26;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "FactorPack %{public}@ has selectedNamespace %{public}@ which does not match all contained factors.", buf, 0x16u);
          }
        }

        v22 = v24 ^ 1;
        _Block_object_dispose(&v40, 8);
      }

      _Block_object_dispose(v59, 8);
      objc_autoreleasePoolPop(v8);
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    v27 = 1;
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:a2];
  [*(a1 + 32) addObject:v3];
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) ident];
      v9 = [*(a1 + 48) name];
      v10 = [*(a1 + 48) name];
      v11 = [*(a1 + 48) compatibilityVersionArray];
      v12 = 138544386;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Factor pack set %{public}@ contains multiple factor packs with NCV (%{public}@, %@). Selected namespace %{public}@ -> %{public}@", &v12, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_8(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (![v10 hasFactor])
  {
    goto LABEL_6;
  }

  v5 = [v10 factor];
  if (([v5 hasNamespaceName] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v10 factor];
  v7 = [v6 namespaceName];
  v8 = [*(a1 + 32) name];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (TRIFactorPackSet)initWithIdent:(id)a3 packs:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1549 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1550 description:{@"Invalid parameter not satisfying: %@", @"packs != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFactorPackSet;
  v11 = [(TRIFactorPackSet *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ident, a3);
    objc_storeStrong(&v12->_packs, a4);
  }

  return v12;
}

+ (id)setWithIdent:(id)a3 packs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdent:v7 packs:v6];

  return v8;
}

- (id)copyWithReplacementIdent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:v4 packs:self->_packs];

  return v5;
}

- (id)copyWithReplacementPacks:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:self->_ident packs:v4];

  return v5;
}

- (BOOL)isEqualToSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_ident == 0;
  v7 = [v4 ident];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  ident = self->_ident;
  if (ident)
  {
    v10 = [v5 ident];
    v11 = [(TRIFactorPackSetId *)ident isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_packs == 0;
  v13 = [v5 packs];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    packs = self->_packs;
    if (packs)
    {
      v16 = [v5 packs];
      v17 = [(NSArray *)packs isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorPackSet | ident:%@ packs:%@>", self->_ident, self->_packs];

  return v2;
}

@end