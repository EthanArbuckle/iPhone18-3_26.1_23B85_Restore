@interface TPPBPeerDynamicInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDispositions:(id)a3;
- (void)addExcluded:(id)a3;
- (void)addIncluded:(id)a3;
- (void)addPositivelyExcluded:(id)a3;
- (void)addPreapprovals:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPeerDynamicInfo

- (void)mergeFrom:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 56))
  {
    self->_clock = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(v4 + 4);
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(TPPBPeerDynamicInfo *)self addIncluded:*(*(&v48 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v5[3];
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      v15 = 0;
      do
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TPPBPeerDynamicInfo *)self addExcluded:*(*(&v44 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v13);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v5[2];
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(TPPBPeerDynamicInfo *)self addDispositions:*(*(&v40 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v18);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v5[6];
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      v25 = 0;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(TPPBPeerDynamicInfo *)self addPreapprovals:*(*(&v36 + 1) + 8 * v25++)];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v23);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v5[5];
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(TPPBPeerDynamicInfo *)self addPositivelyExcluded:*(*(&v32 + 1) + 8 * v30++), v32];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_clock;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_includeds hash]^ v3;
  v5 = [(NSMutableArray *)self->_excludeds hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_dispositions hash];
  v7 = [(NSMutableArray *)self->_preapprovals hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_positivelyExcludeds hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_clock != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  includeds = self->_includeds;
  if (includeds | *(v4 + 4) && ![(NSMutableArray *)includeds isEqual:?])
  {
    goto LABEL_17;
  }

  excludeds = self->_excludeds;
  if (excludeds | *(v4 + 3))
  {
    if (![(NSMutableArray *)excludeds isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dispositions = self->_dispositions;
  if (dispositions | *(v4 + 2))
  {
    if (![(NSMutableArray *)dispositions isEqual:?])
    {
      goto LABEL_17;
    }
  }

  preapprovals = self->_preapprovals;
  if (preapprovals | *(v4 + 6))
  {
    if (![(NSMutableArray *)preapprovals isEqual:?])
    {
      goto LABEL_17;
    }
  }

  positivelyExcludeds = self->_positivelyExcludeds;
  if (positivelyExcludeds | *(v4 + 5))
  {
    v11 = [(NSMutableArray *)positivelyExcludeds isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_clock;
    *(v5 + 56) |= 1u;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = self->_includeds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    do
    {
      v11 = 0;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v55 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addIncluded:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v9);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = self->_excludeds;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v51 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addExcluded:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v15);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = self->_dispositions;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      v23 = 0;
      do
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v47 + 1) + 8 * v23) copyWithZone:a3];
        [v6 addDispositions:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v21);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = self->_preapprovals;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      v29 = 0;
      do
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v43 + 1) + 8 * v29) copyWithZone:a3];
        [v6 addPreapprovals:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = self->_positivelyExcludeds;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      v35 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v39 + 1) + 8 * v35) copyWithZone:{a3, v39}];
        [v6 addPositivelyExcluded:v36];

        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v33);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_clock;
    *(v4 + 56) |= 1u;
  }

  v25 = v4;
  if ([(TPPBPeerDynamicInfo *)self includedsCount])
  {
    [v25 clearIncludeds];
    v5 = [(TPPBPeerDynamicInfo *)self includedsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(TPPBPeerDynamicInfo *)self includedAtIndex:i];
        [v25 addIncluded:v8];
      }
    }
  }

  if ([(TPPBPeerDynamicInfo *)self excludedsCount])
  {
    [v25 clearExcludeds];
    v9 = [(TPPBPeerDynamicInfo *)self excludedsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(TPPBPeerDynamicInfo *)self excludedAtIndex:j];
        [v25 addExcluded:v12];
      }
    }
  }

  if ([(TPPBPeerDynamicInfo *)self dispositionsCount])
  {
    [v25 clearDispositions];
    v13 = [(TPPBPeerDynamicInfo *)self dispositionsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(TPPBPeerDynamicInfo *)self dispositionsAtIndex:k];
        [v25 addDispositions:v16];
      }
    }
  }

  if ([(TPPBPeerDynamicInfo *)self preapprovalsCount])
  {
    [v25 clearPreapprovals];
    v17 = [(TPPBPeerDynamicInfo *)self preapprovalsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(TPPBPeerDynamicInfo *)self preapprovalsAtIndex:m];
        [v25 addPreapprovals:v20];
      }
    }
  }

  if ([(TPPBPeerDynamicInfo *)self positivelyExcludedsCount])
  {
    [v25 clearPositivelyExcludeds];
    v21 = [(TPPBPeerDynamicInfo *)self positivelyExcludedsCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(TPPBPeerDynamicInfo *)self positivelyExcludedAtIndex:n];
        [v25 addPositivelyExcluded:v24];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    clock = self->_clock;
    PBDataWriterWriteUint64Field();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = self->_includeds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v8);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_excludeds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = self->_dispositions;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v20);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = self->_preapprovals;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * v28);
        PBDataWriterWriteStringField();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v26);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = self->_positivelyExcludeds;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      v34 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v37 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v32);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clock];
    [v3 setObject:v4 forKey:@"clock"];
  }

  includeds = self->_includeds;
  if (includeds)
  {
    [v3 setObject:includeds forKey:@"included"];
  }

  excludeds = self->_excludeds;
  if (excludeds)
  {
    [v3 setObject:excludeds forKey:@"excluded"];
  }

  if ([(NSMutableArray *)self->_dispositions count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dispositions, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_dispositions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"dispositions"];
  }

  preapprovals = self->_preapprovals;
  if (preapprovals)
  {
    [v3 setObject:preapprovals forKey:@"preapprovals"];
  }

  if ([(NSMutableArray *)self->_positivelyExcludeds count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_positivelyExcludeds, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_positivelyExcludeds;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"positivelyExcluded"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerDynamicInfo;
  v4 = [(TPPBPeerDynamicInfo *)&v8 description];
  v5 = [(TPPBPeerDynamicInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addPositivelyExcluded:(id)a3
{
  v4 = a3;
  positivelyExcludeds = self->_positivelyExcludeds;
  v8 = v4;
  if (!positivelyExcludeds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_positivelyExcludeds;
    self->_positivelyExcludeds = v6;

    v4 = v8;
    positivelyExcludeds = self->_positivelyExcludeds;
  }

  [(NSMutableArray *)positivelyExcludeds addObject:v4];
}

- (void)addPreapprovals:(id)a3
{
  v4 = a3;
  preapprovals = self->_preapprovals;
  v8 = v4;
  if (!preapprovals)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preapprovals;
    self->_preapprovals = v6;

    v4 = v8;
    preapprovals = self->_preapprovals;
  }

  [(NSMutableArray *)preapprovals addObject:v4];
}

- (void)addDispositions:(id)a3
{
  v4 = a3;
  dispositions = self->_dispositions;
  v8 = v4;
  if (!dispositions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dispositions;
    self->_dispositions = v6;

    v4 = v8;
    dispositions = self->_dispositions;
  }

  [(NSMutableArray *)dispositions addObject:v4];
}

- (void)addExcluded:(id)a3
{
  v4 = a3;
  excludeds = self->_excludeds;
  v8 = v4;
  if (!excludeds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_excludeds;
    self->_excludeds = v6;

    v4 = v8;
    excludeds = self->_excludeds;
  }

  [(NSMutableArray *)excludeds addObject:v4];
}

- (void)addIncluded:(id)a3
{
  v4 = a3;
  includeds = self->_includeds;
  v8 = v4;
  if (!includeds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_includeds;
    self->_includeds = v6;

    v4 = v8;
    includeds = self->_includeds;
  }

  [(NSMutableArray *)includeds addObject:v4];
}

@end