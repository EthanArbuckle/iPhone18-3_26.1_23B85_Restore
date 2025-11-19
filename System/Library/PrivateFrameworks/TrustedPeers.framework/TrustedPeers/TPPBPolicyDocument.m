@interface TPPBPolicyDocument
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCategoriesByView:(id)a3;
- (void)addInheritedExcludedViews:(id)a3;
- (void)addIntroducersByCategory:(id)a3;
- (void)addKeyViewMapping:(id)a3;
- (void)addModelToCategory:(id)a3;
- (void)addPiggybackViews:(id)a3;
- (void)addPriorityViews:(id)a3;
- (void)addRedactions:(id)a3;
- (void)addUserControllableViews:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyDocument

- (void)mergeFrom:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 88))
  {
    self->_policyVersion = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TPPBPolicyDocument *)self addModelToCategory:*(*(&v84 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v8);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v81;
    do
    {
      v15 = 0;
      do
      {
        if (*v81 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TPPBPolicyDocument *)self addCategoriesByView:*(*(&v80 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v13);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = v5[4];
  v17 = [v16 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v77;
    do
    {
      v20 = 0;
      do
      {
        if (*v77 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(TPPBPolicyDocument *)self addIntroducersByCategory:*(*(&v76 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v18);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = v5[9];
  v22 = [v21 countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      v25 = 0;
      do
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(TPPBPolicyDocument *)self addRedactions:*(*(&v72 + 1) + 8 * v25++)];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v72 objects:v93 count:16];
    }

    while (v23);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v26 = v5[5];
  v27 = [v26 countByEnumeratingWithState:&v68 objects:v92 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v69;
    do
    {
      v30 = 0;
      do
      {
        if (*v69 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(TPPBPolicyDocument *)self addKeyViewMapping:*(*(&v68 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v68 objects:v92 count:16];
    }

    while (v28);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = v5[10];
  v32 = [v31 countByEnumeratingWithState:&v64 objects:v91 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v65;
    do
    {
      v35 = 0;
      do
      {
        if (*v65 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(TPPBPolicyDocument *)self addUserControllableViews:*(*(&v64 + 1) + 8 * v35++)];
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v64 objects:v91 count:16];
    }

    while (v33);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v36 = v5[7];
  v37 = [v36 countByEnumeratingWithState:&v60 objects:v90 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v61;
    do
    {
      v40 = 0;
      do
      {
        if (*v61 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(TPPBPolicyDocument *)self addPiggybackViews:*(*(&v60 + 1) + 8 * v40++)];
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v60 objects:v90 count:16];
    }

    while (v38);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v41 = v5[8];
  v42 = [v41 countByEnumeratingWithState:&v56 objects:v89 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v57;
    do
    {
      v45 = 0;
      do
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(TPPBPolicyDocument *)self addPriorityViews:*(*(&v56 + 1) + 8 * v45++)];
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v56 objects:v89 count:16];
    }

    while (v43);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v5[3];
  v47 = [v46 countByEnumeratingWithState:&v52 objects:v88 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v53;
    do
    {
      v50 = 0;
      do
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(TPPBPolicyDocument *)self addInheritedExcludedViews:*(*(&v52 + 1) + 8 * v50++), v52];
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v52 objects:v88 count:16];
    }

    while (v48);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_policyVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_modelToCategorys hash]^ v3;
  v5 = [(NSMutableArray *)self->_categoriesByViews hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_introducersByCategorys hash];
  v7 = [(NSMutableArray *)self->_redactions hash];
  v8 = v7 ^ [(NSMutableArray *)self->_keyViewMappings hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_userControllableViews hash];
  v10 = [(NSMutableArray *)self->_piggybackViews hash];
  v11 = v10 ^ [(NSMutableArray *)self->_priorityViews hash];
  return v9 ^ v11 ^ [(NSMutableArray *)self->_inheritedExcludedViews hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 88);
  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_policyVersion != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  modelToCategorys = self->_modelToCategorys;
  if (modelToCategorys | *(v4 + 6) && ![(NSMutableArray *)modelToCategorys isEqual:?])
  {
    goto LABEL_25;
  }

  categoriesByViews = self->_categoriesByViews;
  if (categoriesByViews | *(v4 + 2))
  {
    if (![(NSMutableArray *)categoriesByViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  introducersByCategorys = self->_introducersByCategorys;
  if (introducersByCategorys | *(v4 + 4))
  {
    if (![(NSMutableArray *)introducersByCategorys isEqual:?])
    {
      goto LABEL_25;
    }
  }

  redactions = self->_redactions;
  if (redactions | *(v4 + 9))
  {
    if (![(NSMutableArray *)redactions isEqual:?])
    {
      goto LABEL_25;
    }
  }

  keyViewMappings = self->_keyViewMappings;
  if (keyViewMappings | *(v4 + 5))
  {
    if (![(NSMutableArray *)keyViewMappings isEqual:?])
    {
      goto LABEL_25;
    }
  }

  userControllableViews = self->_userControllableViews;
  if (userControllableViews | *(v4 + 10))
  {
    if (![(NSMutableArray *)userControllableViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  piggybackViews = self->_piggybackViews;
  if (piggybackViews | *(v4 + 7))
  {
    if (![(NSMutableArray *)piggybackViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  priorityViews = self->_priorityViews;
  if (priorityViews | *(v4 + 8))
  {
    if (![(NSMutableArray *)priorityViews isEqual:?])
    {
      goto LABEL_25;
    }
  }

  inheritedExcludedViews = self->_inheritedExcludedViews;
  if (inheritedExcludedViews | *(v4 + 3))
  {
    v15 = [(NSMutableArray *)inheritedExcludedViews isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_26:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_policyVersion;
    *(v5 + 88) |= 1u;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v7 = self->_modelToCategorys;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v96;
    do
    {
      v11 = 0;
      do
      {
        if (*v96 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v95 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addModelToCategory:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v9);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v13 = self->_categoriesByViews;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v92;
    do
    {
      v17 = 0;
      do
      {
        if (*v92 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v91 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addCategoriesByView:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v15);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v19 = self->_introducersByCategorys;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v87 objects:v105 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v88;
    do
    {
      v23 = 0;
      do
      {
        if (*v88 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v87 + 1) + 8 * v23) copyWithZone:a3];
        [v6 addIntroducersByCategory:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v87 objects:v105 count:16];
    }

    while (v21);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v25 = self->_redactions;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v83 objects:v104 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v84;
    do
    {
      v29 = 0;
      do
      {
        if (*v84 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v83 + 1) + 8 * v29) copyWithZone:a3];
        [v6 addRedactions:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v83 objects:v104 count:16];
    }

    while (v27);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v31 = self->_keyViewMappings;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v79 objects:v103 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v80;
    do
    {
      v35 = 0;
      do
      {
        if (*v80 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v79 + 1) + 8 * v35) copyWithZone:a3];
        [v6 addKeyViewMapping:v36];

        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v79 objects:v103 count:16];
    }

    while (v33);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v37 = self->_userControllableViews;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v75 objects:v102 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    do
    {
      v41 = 0;
      do
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v75 + 1) + 8 * v41) copyWithZone:a3];
        [v6 addUserControllableViews:v42];

        ++v41;
      }

      while (v39 != v41);
      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v75 objects:v102 count:16];
    }

    while (v39);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v43 = self->_piggybackViews;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v71 objects:v101 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v72;
    do
    {
      v47 = 0;
      do
      {
        if (*v72 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v71 + 1) + 8 * v47) copyWithZone:a3];
        [v6 addPiggybackViews:v48];

        ++v47;
      }

      while (v45 != v47);
      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v71 objects:v101 count:16];
    }

    while (v45);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = self->_priorityViews;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v67 objects:v100 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v68;
    do
    {
      v53 = 0;
      do
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v67 + 1) + 8 * v53) copyWithZone:a3];
        [v6 addPriorityViews:v54];

        ++v53;
      }

      while (v51 != v53);
      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v67 objects:v100 count:16];
    }

    while (v51);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v55 = self->_inheritedExcludedViews;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v63 objects:v99 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v64;
    do
    {
      v59 = 0;
      do
      {
        if (*v64 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v63 + 1) + 8 * v59) copyWithZone:{a3, v63}];
        [v6 addInheritedExcludedViews:v60];

        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v63 objects:v99 count:16];
    }

    while (v57);
  }

  v61 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_policyVersion;
    *(v4 + 88) |= 1u;
  }

  v41 = v4;
  if ([(TPPBPolicyDocument *)self modelToCategorysCount])
  {
    [v41 clearModelToCategorys];
    v5 = [(TPPBPolicyDocument *)self modelToCategorysCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(TPPBPolicyDocument *)self modelToCategoryAtIndex:i];
        [v41 addModelToCategory:v8];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self categoriesByViewsCount])
  {
    [v41 clearCategoriesByViews];
    v9 = [(TPPBPolicyDocument *)self categoriesByViewsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(TPPBPolicyDocument *)self categoriesByViewAtIndex:j];
        [v41 addCategoriesByView:v12];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self introducersByCategorysCount])
  {
    [v41 clearIntroducersByCategorys];
    v13 = [(TPPBPolicyDocument *)self introducersByCategorysCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(TPPBPolicyDocument *)self introducersByCategoryAtIndex:k];
        [v41 addIntroducersByCategory:v16];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self redactionsCount])
  {
    [v41 clearRedactions];
    v17 = [(TPPBPolicyDocument *)self redactionsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(TPPBPolicyDocument *)self redactionsAtIndex:m];
        [v41 addRedactions:v20];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self keyViewMappingsCount])
  {
    [v41 clearKeyViewMappings];
    v21 = [(TPPBPolicyDocument *)self keyViewMappingsCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(TPPBPolicyDocument *)self keyViewMappingAtIndex:n];
        [v41 addKeyViewMapping:v24];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self userControllableViewsCount])
  {
    [v41 clearUserControllableViews];
    v25 = [(TPPBPolicyDocument *)self userControllableViewsCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(TPPBPolicyDocument *)self userControllableViewsAtIndex:ii];
        [v41 addUserControllableViews:v28];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self piggybackViewsCount])
  {
    [v41 clearPiggybackViews];
    v29 = [(TPPBPolicyDocument *)self piggybackViewsCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(TPPBPolicyDocument *)self piggybackViewsAtIndex:jj];
        [v41 addPiggybackViews:v32];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self priorityViewsCount])
  {
    [v41 clearPriorityViews];
    v33 = [(TPPBPolicyDocument *)self priorityViewsCount];
    if (v33)
    {
      v34 = v33;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(TPPBPolicyDocument *)self priorityViewsAtIndex:kk];
        [v41 addPriorityViews:v36];
      }
    }
  }

  if ([(TPPBPolicyDocument *)self inheritedExcludedViewsCount])
  {
    [v41 clearInheritedExcludedViews];
    v37 = [(TPPBPolicyDocument *)self inheritedExcludedViewsCount];
    if (v37)
    {
      v38 = v37;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(TPPBPolicyDocument *)self inheritedExcludedViewsAtIndex:mm];
        [v41 addInheritedExcludedViews:v40];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    policyVersion = self->_policyVersion;
    PBDataWriterWriteUint64Field();
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v6 = self->_modelToCategorys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v94;
    do
    {
      v10 = 0;
      do
      {
        if (*v94 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v93 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v93 objects:v105 count:16];
    }

    while (v8);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v12 = self->_categoriesByViews;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v89 objects:v104 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v90;
    do
    {
      v16 = 0;
      do
      {
        if (*v90 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v89 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v14);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v18 = self->_introducersByCategorys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v85 objects:v103 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v86;
    do
    {
      v22 = 0;
      do
      {
        if (*v86 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v85 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v85 objects:v103 count:16];
    }

    while (v20);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v24 = self->_redactions;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v81 objects:v102 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v82;
    do
    {
      v28 = 0;
      do
      {
        if (*v82 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v81 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v81 objects:v102 count:16];
    }

    while (v26);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v30 = self->_keyViewMappings;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v77 objects:v101 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v78;
    do
    {
      v34 = 0;
      do
      {
        if (*v78 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v77 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v77 objects:v101 count:16];
    }

    while (v32);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v36 = self->_userControllableViews;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v73 objects:v100 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v74;
    do
    {
      v40 = 0;
      do
      {
        if (*v74 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v73 + 1) + 8 * v40);
        PBDataWriterWriteStringField();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v73 objects:v100 count:16];
    }

    while (v38);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v42 = self->_piggybackViews;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v69 objects:v99 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v70;
    do
    {
      v46 = 0;
      do
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v69 + 1) + 8 * v46);
        PBDataWriterWriteStringField();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v69 objects:v99 count:16];
    }

    while (v44);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v48 = self->_priorityViews;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v65 objects:v98 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v66;
    do
    {
      v52 = 0;
      do
      {
        if (*v66 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v65 + 1) + 8 * v52);
        PBDataWriterWriteStringField();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v65 objects:v98 count:16];
    }

    while (v50);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = self->_inheritedExcludedViews;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v97 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v62;
    do
    {
      v58 = 0;
      do
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v61 + 1) + 8 * v58);
        PBDataWriterWriteStringField();
        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v61 objects:v97 count:16];
    }

    while (v56);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_policyVersion];
    [v3 setObject:v4 forKey:@"policyVersion"];
  }

  if ([(NSMutableArray *)self->_modelToCategorys count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_modelToCategorys, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v6 = self->_modelToCategorys;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v63;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v63 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v62 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"modelToCategory"];
  }

  if ([(NSMutableArray *)self->_categoriesByViews count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_categoriesByViews, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v13 = self->_categoriesByViews;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v59;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"categoriesByView"];
  }

  if ([(NSMutableArray *)self->_introducersByCategorys count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_introducersByCategorys, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v20 = self->_introducersByCategorys;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v54 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"introducersByCategory"];
  }

  if ([(NSMutableArray *)self->_redactions count])
  {
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_redactions, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v27 = self->_redactions;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v51;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v50 + 1) + 8 * m) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v67 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKey:@"redactions"];
  }

  if ([(NSMutableArray *)self->_keyViewMappings count])
  {
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_keyViewMappings, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = self->_keyViewMappings;
    v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v66 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v46 + 1) + 8 * n) dictionaryRepresentation];
          [v33 addObject:v39];
        }

        v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v66 count:16];
      }

      while (v36);
    }

    [v3 setObject:v33 forKey:@"keyViewMapping"];
  }

  userControllableViews = self->_userControllableViews;
  if (userControllableViews)
  {
    [v3 setObject:userControllableViews forKey:@"user_controllable_views"];
  }

  piggybackViews = self->_piggybackViews;
  if (piggybackViews)
  {
    [v3 setObject:piggybackViews forKey:@"piggyback_views"];
  }

  priorityViews = self->_priorityViews;
  if (priorityViews)
  {
    [v3 setObject:priorityViews forKey:@"priority_views"];
  }

  inheritedExcludedViews = self->_inheritedExcludedViews;
  if (inheritedExcludedViews)
  {
    [v3 setObject:inheritedExcludedViews forKey:@"inherited_excluded_views"];
  }

  v44 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyDocument;
  v4 = [(TPPBPolicyDocument *)&v8 description];
  v5 = [(TPPBPolicyDocument *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addInheritedExcludedViews:(id)a3
{
  v4 = a3;
  inheritedExcludedViews = self->_inheritedExcludedViews;
  v8 = v4;
  if (!inheritedExcludedViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_inheritedExcludedViews;
    self->_inheritedExcludedViews = v6;

    v4 = v8;
    inheritedExcludedViews = self->_inheritedExcludedViews;
  }

  [(NSMutableArray *)inheritedExcludedViews addObject:v4];
}

- (void)addPriorityViews:(id)a3
{
  v4 = a3;
  priorityViews = self->_priorityViews;
  v8 = v4;
  if (!priorityViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_priorityViews;
    self->_priorityViews = v6;

    v4 = v8;
    priorityViews = self->_priorityViews;
  }

  [(NSMutableArray *)priorityViews addObject:v4];
}

- (void)addPiggybackViews:(id)a3
{
  v4 = a3;
  piggybackViews = self->_piggybackViews;
  v8 = v4;
  if (!piggybackViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_piggybackViews;
    self->_piggybackViews = v6;

    v4 = v8;
    piggybackViews = self->_piggybackViews;
  }

  [(NSMutableArray *)piggybackViews addObject:v4];
}

- (void)addUserControllableViews:(id)a3
{
  v4 = a3;
  userControllableViews = self->_userControllableViews;
  v8 = v4;
  if (!userControllableViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userControllableViews;
    self->_userControllableViews = v6;

    v4 = v8;
    userControllableViews = self->_userControllableViews;
  }

  [(NSMutableArray *)userControllableViews addObject:v4];
}

- (void)addKeyViewMapping:(id)a3
{
  v4 = a3;
  keyViewMappings = self->_keyViewMappings;
  v8 = v4;
  if (!keyViewMappings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keyViewMappings;
    self->_keyViewMappings = v6;

    v4 = v8;
    keyViewMappings = self->_keyViewMappings;
  }

  [(NSMutableArray *)keyViewMappings addObject:v4];
}

- (void)addRedactions:(id)a3
{
  v4 = a3;
  redactions = self->_redactions;
  v8 = v4;
  if (!redactions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_redactions;
    self->_redactions = v6;

    v4 = v8;
    redactions = self->_redactions;
  }

  [(NSMutableArray *)redactions addObject:v4];
}

- (void)addIntroducersByCategory:(id)a3
{
  v4 = a3;
  introducersByCategorys = self->_introducersByCategorys;
  v8 = v4;
  if (!introducersByCategorys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_introducersByCategorys;
    self->_introducersByCategorys = v6;

    v4 = v8;
    introducersByCategorys = self->_introducersByCategorys;
  }

  [(NSMutableArray *)introducersByCategorys addObject:v4];
}

- (void)addCategoriesByView:(id)a3
{
  v4 = a3;
  categoriesByViews = self->_categoriesByViews;
  v8 = v4;
  if (!categoriesByViews)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_categoriesByViews;
    self->_categoriesByViews = v6;

    v4 = v8;
    categoriesByViews = self->_categoriesByViews;
  }

  [(NSMutableArray *)categoriesByViews addObject:v4];
}

- (void)addModelToCategory:(id)a3
{
  v4 = a3;
  modelToCategorys = self->_modelToCategorys;
  v8 = v4;
  if (!modelToCategorys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_modelToCategorys;
    self->_modelToCategorys = v6;

    v4 = v8;
    modelToCategorys = self->_modelToCategorys;
  }

  [(NSMutableArray *)modelToCategorys addObject:v4];
}

@end