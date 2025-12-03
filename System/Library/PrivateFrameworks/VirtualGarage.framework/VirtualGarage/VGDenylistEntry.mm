@interface VGDenylistEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupersetOfEntry:(id)entry;
- (VGDenylistEntry)initWithModelId:(id)id firmwareIds:(id)ids years:(id)years models:(id)models;
- (id)description;
@end

@implementation VGDenylistEntry

- (id)description
{
  v78 = *MEMORY[0x277D85DE8];
  v71 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  modelId = self->_modelId;
  v70 = v3;
  v4 = self->_firmwareIds;
  v5 = v4;
  selfCopy = self;
  if (v4)
  {
    if ([(NSArray *)v4 count])
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v5, "count")}];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v66 = v5;
      v7 = v5;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v74;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v74 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v73 + 1) + 8 * i);
            if (v12)
            {
              v13 = MEMORY[0x277CCACA8];
              v14 = v12;
              v15 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), v14];
            }

            else
            {
              v15 = @"<nil>";
            }

            [v6 addObject:v15];
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v9);
      }

      v16 = [(NSArray *)v7 componentsJoinedByString:@", "];
      v17 = MEMORY[0x277CCACA8];
      v18 = v7;
      v19 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

      v20 = [v17 stringWithFormat:@"%@ [%@]", v19, v16];

      self = selfCopy;
      v5 = v66;
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = v5;
      v23 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

      v20 = [v21 stringWithFormat:@"%@ (empty)", v23];
    }
  }

  else
  {
    v20 = @"<nil>";
  }

  v24 = self->_years;
  v25 = v24;
  if (v24)
  {
    if ([(NSArray *)v24 count])
    {
      v67 = v20;
      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v25, "count")}];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v65 = v25;
      v27 = v25;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v74;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v74 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v73 + 1) + 8 * j);
            if (v32)
            {
              v33 = MEMORY[0x277CCACA8];
              v34 = v32;
              v35 = [v33 stringWithFormat:@"%@<%p>", objc_opt_class(), v34];
            }

            else
            {
              v35 = @"<nil>";
            }

            [v26 addObject:v35];
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v29);
      }

      v36 = [(NSArray *)v27 componentsJoinedByString:@", "];
      v37 = MEMORY[0x277CCACA8];
      v38 = v27;
      v39 = [v37 stringWithFormat:@"%@<%p>", objc_opt_class(), v38];

      v40 = [v37 stringWithFormat:@"%@ [%@]", v39, v36];

      self = selfCopy;
      v25 = v65;
      v20 = v67;
    }

    else
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = v25;
      v26 = [v41 stringWithFormat:@"%@<%p>", objc_opt_class(), v42];

      v40 = [v41 stringWithFormat:@"%@ (empty)", v26];
    }
  }

  else
  {
    v40 = @"<nil>";
  }

  v43 = self->_models;
  v44 = v43;
  if (v43)
  {
    if ([(NSArray *)v43 count])
    {
      v68 = v20;
      v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v44, "count")}];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v46 = v44;
      v47 = [(NSArray *)v46 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v74;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v74 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v73 + 1) + 8 * k);
            if (v51)
            {
              v52 = MEMORY[0x277CCACA8];
              v53 = v51;
              v54 = [v52 stringWithFormat:@"%@<%p>", objc_opt_class(), v53];
            }

            else
            {
              v54 = @"<nil>";
            }

            [v45 addObject:v54];
          }

          v48 = [(NSArray *)v46 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v48);
      }

      v55 = [(NSArray *)v46 componentsJoinedByString:@", "];
      v56 = MEMORY[0x277CCACA8];
      v57 = v46;
      v58 = [v56 stringWithFormat:@"%@<%p>", objc_opt_class(), v57];

      v59 = [v56 stringWithFormat:@"%@ [%@]", v58, v55];

      self = selfCopy;
      v20 = v68;
    }

    else
    {
      v60 = MEMORY[0x277CCACA8];
      v61 = v44;
      v45 = [v60 stringWithFormat:@"%@<%p>", objc_opt_class(), v61];

      v59 = [v60 stringWithFormat:@"%@ (empty)", v45];
    }
  }

  else
  {
    v59 = @"<nil>";
  }

  v62 = [v71 stringWithFormat:@"<%@:%p, modelId: %@, firmwareIds: %@, years: %@, models: %@>", v70, self, modelId, v20, v40, v59];

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

- (BOOL)isSupersetOfEntry:(id)entry
{
  entryCopy = entry;
  modelId = self->_modelId;
  if ((!modelId || [(NSNumber *)modelId isEqualToNumber:entryCopy[1]]) && __37__VGDenylistEntry_isSupersetOfEntry___block_invoke(entryCopy[2], self->_firmwareIds) && __37__VGDenylistEntry_isSupersetOfEntry___block_invoke(entryCopy[3], self->_years))
  {
    v6 = __37__VGDenylistEntry_isSupersetOfEntry___block_invoke(entryCopy[4], self->_models);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __37__VGDenylistEntry_isSupersetOfEntry___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] || objc_msgSend(v4, "count"))
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v7 = [v5 isSubsetOfSet:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modelId = v5->_modelId;
      v7 = self->_modelId;
      v8 = modelId;
      if (v7 | v8)
      {
        v9 = v8;
        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      firmwareIds = v5->_firmwareIds;
      v12 = self->_firmwareIds;
      v13 = firmwareIds;
      if (v12 | v13)
      {
        v14 = v13;
        v15 = [v12 isEqual:v13];

        if (!v15)
        {
          goto LABEL_13;
        }
      }

      years = v5->_years;
      v17 = self->_years;
      v18 = years;
      if (v17 | v18 && (v19 = v18, v20 = [v17 isEqual:v18], v19, v17, !v20))
      {
LABEL_13:
        v25 = 0;
      }

      else
      {
        models = self->_models;
        v22 = v5->_models;
        v23 = models;
        v24 = v23;
        if (v23 | v22)
        {
          v25 = [v23 isEqual:v22];
        }

        else
        {
          v25 = 1;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (VGDenylistEntry)initWithModelId:(id)id firmwareIds:(id)ids years:(id)years models:(id)models
{
  idCopy = id;
  idsCopy = ids;
  yearsCopy = years;
  modelsCopy = models;
  v24.receiver = self;
  v24.super_class = VGDenylistEntry;
  v15 = [(VGDenylistEntry *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelId, id);
    if (idsCopy)
    {
      v17 = [idsCopy copy];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    firmwareIds = v16->_firmwareIds;
    v16->_firmwareIds = v17;

    if (yearsCopy)
    {
      v19 = [yearsCopy copy];
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }

    years = v16->_years;
    v16->_years = v19;

    if (modelsCopy)
    {
      v21 = [modelsCopy copy];
    }

    else
    {
      v21 = MEMORY[0x277CBEBF8];
    }

    models = v16->_models;
    v16->_models = v21;
  }

  return v16;
}

@end