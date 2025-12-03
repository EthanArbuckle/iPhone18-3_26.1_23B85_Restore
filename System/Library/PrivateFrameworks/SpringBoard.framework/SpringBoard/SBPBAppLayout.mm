@interface SBPBAppLayout
+ (uint64_t)displayItemLayoutAttributesType;
+ (uint64_t)displayItemsType;
+ (uint64_t)layoutAttributesEntriesType;
- (BOOL)hasCenterDisplayItem;
- (BOOL)hasCenterLayoutAttributes;
- (BOOL)hasContinuousExposeIdentifier;
- (BOOL)hasPrimaryDisplayItem;
- (BOOL)hasPrimaryLayoutAttributes;
- (BOOL)hasSecondaryDisplayItem;
- (BOOL)hasSecondaryLayoutAttributes;
- (BOOL)isEqual:(id)equal;
- (__CFString)centerConfigurationAsString:(__CFString *)string;
- (__CFString)environmentAsString:(__CFString *)string;
- (__CFString)layoutConfigurationAsString:(__CFString *)string;
- (__CFString)secondaryDisplayItemRoleAsString:(__CFString *)string;
- (double)relativeHeight;
- (double)relativeWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayItemLayoutAttributesAtIndex:(void *)index;
- (id)displayItemLayoutAttributesForNonPreferredDisplayAtIndex:(void *)index;
- (id)displayItemsAtIndex:(void *)index;
- (id)layoutAttributesEntriesAtIndex:(void *)index;
- (uint64_t)StringAsCenterConfiguration:(uint64_t)configuration;
- (uint64_t)StringAsEnvironment:(uint64_t)environment;
- (uint64_t)StringAsLayoutConfiguration:(uint64_t)configuration;
- (uint64_t)StringAsSecondaryDisplayItemRole:(uint64_t)role;
- (uint64_t)centerConfiguration;
- (uint64_t)centerDisplayItem;
- (uint64_t)centerDisplayItemRole;
- (uint64_t)centerLayoutAttributes;
- (uint64_t)clearDisplayItemLayoutAttributes;
- (uint64_t)clearDisplayItemLayoutAttributesForNonPreferredDisplays;
- (uint64_t)clearDisplayItems;
- (uint64_t)clearLayoutAttributesEntries;
- (uint64_t)continuousExposeIdentifier;
- (uint64_t)copyTo:(uint64_t)to;
- (uint64_t)displayItemLayoutAttributes;
- (uint64_t)displayItemLayoutAttributesCount;
- (uint64_t)displayItemLayoutAttributesForNonPreferredDisplays;
- (uint64_t)displayItemLayoutAttributesForNonPreferredDisplaysCount;
- (uint64_t)displayItems;
- (uint64_t)displayItemsCount;
- (uint64_t)environment;
- (uint64_t)hasCenterDisplayItemRole;
- (uint64_t)hasSecondaryDisplayItemRole;
- (uint64_t)hidden;
- (uint64_t)layoutAttributesEntries;
- (uint64_t)layoutAttributesEntriesCount;
- (uint64_t)layoutConfiguration;
- (uint64_t)preferredDisplayOrdinal;
- (uint64_t)primaryDisplayItem;
- (uint64_t)primaryLayoutAttributes;
- (uint64_t)secondaryDisplayItem;
- (uint64_t)secondaryDisplayItemRole;
- (uint64_t)secondaryLayoutAttributes;
- (uint64_t)setCenterConfiguration:(uint64_t)result;
- (uint64_t)setCenterDisplayItemRole:(uint64_t)result;
- (uint64_t)setEnvironment:(uint64_t)result;
- (uint64_t)setHasCenterDisplayItemRole:(uint64_t)result;
- (uint64_t)setHasSecondaryDisplayItemRole:(uint64_t)result;
- (uint64_t)setHidden:(uint64_t)result;
- (uint64_t)setLayoutConfiguration:(uint64_t)result;
- (uint64_t)setPreferredDisplayOrdinal:(uint64_t)result;
- (uint64_t)setRelativeHeight:(uint64_t)result;
- (uint64_t)setRelativeWidth:(uint64_t)result;
- (uint64_t)setSecondaryDisplayItemRole:(uint64_t)result;
- (unint64_t)hash;
- (void)addDisplayItemLayoutAttributes:(uint64_t)attributes;
- (void)addDisplayItemLayoutAttributesForNonPreferredDisplay:(uint64_t)display;
- (void)addDisplayItems:(uint64_t)items;
- (void)addLayoutAttributesEntries:(uint64_t)entries;
- (void)mergeFrom:(uint64_t)from;
- (void)setCenterDisplayItem:(uint64_t)item;
- (void)setCenterLayoutAttributes:(uint64_t)attributes;
- (void)setContinuousExposeIdentifier:(uint64_t)identifier;
- (void)setDisplayItemLayoutAttributes:(uint64_t)attributes;
- (void)setDisplayItemLayoutAttributesForNonPreferredDisplays:(uint64_t)displays;
- (void)setDisplayItems:(uint64_t)items;
- (void)setLayoutAttributesEntries:(uint64_t)entries;
- (void)setPrimaryDisplayItem:(uint64_t)item;
- (void)setPrimaryLayoutAttributes:(uint64_t)attributes;
- (void)setSecondaryDisplayItem:(uint64_t)item;
- (void)setSecondaryLayoutAttributes:(uint64_t)attributes;
- (void)writeTo:(id)to;
@end

@implementation SBPBAppLayout

+ (uint64_t)displayItemsType
{
  objc_opt_self();

  return objc_opt_class();
}

+ (uint64_t)displayItemLayoutAttributesType
{
  objc_opt_self();

  return objc_opt_class();
}

+ (uint64_t)layoutAttributesEntriesType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SBPBAppLayout;
  v4 = [(SBPBAppLayout *)&v8 description];
  dictionaryRepresentation = [(SBPBAppLayout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v80 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  layoutConfiguration = self->_layoutConfiguration;
  if (layoutConfiguration >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_layoutConfiguration];
  }

  else
  {
    v5 = off_2783BAC30[layoutConfiguration];
  }

  [dictionary setObject:v5 forKey:@"layoutConfiguration"];

  primaryDisplayItem = self->_primaryDisplayItem;
  if (primaryDisplayItem)
  {
    dictionaryRepresentation = [(SBPBDisplayItem *)primaryDisplayItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"primaryDisplayItem"];
  }

  if ((*&self->_has & 2) != 0)
  {
    secondaryDisplayItemRole = self->_secondaryDisplayItemRole;
    if (secondaryDisplayItemRole >= 5)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_secondaryDisplayItemRole];
    }

    else
    {
      v9 = off_2783BAC78[secondaryDisplayItemRole];
    }

    [dictionary setObject:v9 forKey:@"secondaryDisplayItemRole"];
  }

  secondaryDisplayItem = self->_secondaryDisplayItem;
  if (secondaryDisplayItem)
  {
    dictionaryRepresentation2 = [(SBPBDisplayItem *)secondaryDisplayItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"secondaryDisplayItem"];
  }

  environment = self->_environment;
  if (environment >= 4)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_environment];
  }

  else
  {
    v13 = off_2783BAC58[environment];
  }

  [dictionary setObject:v13 forKey:@"environment"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
  [dictionary setObject:v14 forKey:@"hidden"];

  if (*&self->_has)
  {
    centerDisplayItemRole = self->_centerDisplayItemRole;
    if (centerDisplayItemRole >= 5)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_centerDisplayItemRole];
    }

    else
    {
      v16 = off_2783BAC78[centerDisplayItemRole];
    }

    [dictionary setObject:v16 forKey:@"centerDisplayItemRole"];
  }

  centerDisplayItem = self->_centerDisplayItem;
  if (centerDisplayItem)
  {
    dictionaryRepresentation3 = [(SBPBDisplayItem *)centerDisplayItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"centerDisplayItem"];
  }

  centerConfiguration = self->_centerConfiguration;
  if (centerConfiguration >= 3)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_centerConfiguration];
  }

  else
  {
    v20 = off_2783BACA0[centerConfiguration];
  }

  [dictionary setObject:v20 forKey:@"centerConfiguration"];

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relativeWidth];
  [dictionary setObject:v21 forKey:@"relativeWidth"];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_relativeHeight];
  [dictionary setObject:v22 forKey:@"relativeHeight"];

  primaryLayoutAttributes = self->_primaryLayoutAttributes;
  if (primaryLayoutAttributes)
  {
    dictionaryRepresentation4 = [(SBPBDisplayItemLayoutAttributes *)primaryLayoutAttributes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"primaryLayoutAttributes"];
  }

  secondaryLayoutAttributes = self->_secondaryLayoutAttributes;
  if (secondaryLayoutAttributes)
  {
    dictionaryRepresentation5 = [(SBPBDisplayItemLayoutAttributes *)secondaryLayoutAttributes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"secondaryLayoutAttributes"];
  }

  centerLayoutAttributes = self->_centerLayoutAttributes;
  if (centerLayoutAttributes)
  {
    dictionaryRepresentation6 = [(SBPBDisplayItemLayoutAttributes *)centerLayoutAttributes dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"centerLayoutAttributes"];
  }

  if ([(NSMutableArray *)self->_displayItems count])
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_displayItems, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v30 = self->_displayItems;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v73;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation7 = [*(*(&v72 + 1) + 8 * i) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation7];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v32);
    }

    [dictionary setObject:v29 forKey:@"displayItems"];
  }

  if ([(NSMutableArray *)self->_displayItemLayoutAttributes count])
  {
    v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_displayItemLayoutAttributes, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v37 = self->_displayItemLayoutAttributes;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v69;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v69 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation8 = [*(*(&v68 + 1) + 8 * j) dictionaryRepresentation];
          [v36 addObject:dictionaryRepresentation8];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v39);
    }

    [dictionary setObject:v36 forKey:@"displayItemLayoutAttributes"];
  }

  v43 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_preferredDisplayOrdinal];
  [dictionary setObject:v43 forKey:@"preferredDisplayOrdinal"];

  continuousExposeIdentifier = self->_continuousExposeIdentifier;
  if (continuousExposeIdentifier)
  {
    [dictionary setObject:continuousExposeIdentifier forKey:@"continuousExposeIdentifier"];
  }

  if ([(NSMutableArray *)self->_displayItemLayoutAttributesForNonPreferredDisplays count])
  {
    v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_displayItemLayoutAttributesForNonPreferredDisplays, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = self->_displayItemLayoutAttributesForNonPreferredDisplays;
    v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v65;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(v46);
          }

          dictionaryRepresentation9 = [*(*(&v64 + 1) + 8 * k) dictionaryRepresentation];
          [v45 addObject:dictionaryRepresentation9];
        }

        v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v48);
    }

    [dictionary setObject:v45 forKey:@"displayItemLayoutAttributesForNonPreferredDisplay"];
  }

  if ([(NSMutableArray *)self->_layoutAttributesEntries count])
  {
    v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_layoutAttributesEntries, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v53 = self->_layoutAttributesEntries;
    v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v61;
      do
      {
        for (m = 0; m != v55; ++m)
        {
          if (*v61 != v56)
          {
            objc_enumerationMutation(v53);
          }

          dictionaryRepresentation10 = [*(*(&v60 + 1) + 8 * m) dictionaryRepresentation];
          [v52 addObject:dictionaryRepresentation10];
        }

        v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v55);
    }

    [dictionary setObject:v52 forKey:@"layoutAttributesEntries"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (self->_primaryDisplayItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_secondaryDisplayItem)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_centerDisplayItem)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  if (self->_primaryLayoutAttributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_secondaryLayoutAttributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_centerLayoutAttributes)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_displayItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_displayItemLayoutAttributes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  PBDataWriterWriteInt64Field();
  if (self->_continuousExposeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_displayItemLayoutAttributesForNonPreferredDisplays;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_layoutAttributesEntries;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 112) = self->_layoutConfiguration;
  v6 = [(SBPBDisplayItem *)self->_primaryDisplayItem copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 144) = self->_secondaryDisplayItemRole;
    *(v5 + 164) |= 2u;
  }

  v8 = [(SBPBDisplayItem *)self->_secondaryDisplayItem copyWithZone:zone];
  v9 = *(v5 + 136);
  *(v5 + 136) = v8;

  *(v5 + 96) = self->_environment;
  *(v5 + 160) = self->_hidden;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_centerDisplayItemRole;
    *(v5 + 164) |= 1u;
  }

  v10 = [(SBPBDisplayItem *)self->_centerDisplayItem copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 32) = self->_centerConfiguration;
  *(v5 + 24) = self->_relativeWidth;
  *(v5 + 16) = self->_relativeHeight;
  v12 = [(SBPBDisplayItemLayoutAttributes *)self->_primaryLayoutAttributes copyWithZone:zone];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  v14 = [(SBPBDisplayItemLayoutAttributes *)self->_secondaryLayoutAttributes copyWithZone:zone];
  v15 = *(v5 + 152);
  *(v5 + 152) = v14;

  v16 = [(SBPBDisplayItemLayoutAttributes *)self->_centerLayoutAttributes copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = self->_displayItems;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    do
    {
      v22 = 0;
      do
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v57 + 1) + 8 * v22) copyWithZone:zone];
        [(SBPBAppLayout *)v5 addDisplayItems:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v20);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = self->_displayItemLayoutAttributes;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      v28 = 0;
      do
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v53 + 1) + 8 * v28) copyWithZone:zone];
        [(SBPBAppLayout *)v5 addDisplayItemLayoutAttributes:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v26);
  }

  *(v5 + 8) = self->_preferredDisplayOrdinal;
  v30 = [(NSString *)self->_continuousExposeIdentifier copyWithZone:zone];
  v31 = *(v5 + 64);
  *(v5 + 64) = v30;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = self->_displayItemLayoutAttributesForNonPreferredDisplays;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      v36 = 0;
      do
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v49 + 1) + 8 * v36) copyWithZone:zone];
        [(SBPBAppLayout *)v5 addDisplayItemLayoutAttributesForNonPreferredDisplay:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v34);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = self->_layoutAttributesEntries;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v46;
    do
    {
      v42 = 0;
      do
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v45 + 1) + 8 * v42) copyWithZone:{zone, v45}];
        [(SBPBAppLayout *)v5 addLayoutAttributesEntries:v43];

        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v40);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if (self->_layoutConfiguration != *(equalCopy + 28))
  {
    goto LABEL_44;
  }

  primaryDisplayItem = self->_primaryDisplayItem;
  if (primaryDisplayItem | *(equalCopy + 15))
  {
    if (![(SBPBDisplayItem *)primaryDisplayItem isEqual:?])
    {
      goto LABEL_44;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 164) & 2) == 0 || self->_secondaryDisplayItemRole != *(equalCopy + 36))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 164) & 2) != 0)
  {
    goto LABEL_44;
  }

  secondaryDisplayItem = self->_secondaryDisplayItem;
  if (secondaryDisplayItem | *(equalCopy + 17) && ![(SBPBDisplayItem *)secondaryDisplayItem isEqual:?]|| self->_environment != *(equalCopy + 24))
  {
    goto LABEL_44;
  }

  if (self->_hidden)
  {
    if ((*(equalCopy + 160) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 160))
  {
LABEL_44:
    v16 = 0;
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 164) & 1) == 0 || self->_centerDisplayItemRole != *(equalCopy + 12))
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 164))
  {
    goto LABEL_44;
  }

  centerDisplayItem = self->_centerDisplayItem;
  if (centerDisplayItem | *(equalCopy + 5) && ![(SBPBDisplayItem *)centerDisplayItem isEqual:?])
  {
    goto LABEL_44;
  }

  if (self->_centerConfiguration != *(equalCopy + 8))
  {
    goto LABEL_44;
  }

  if (self->_relativeWidth != *(equalCopy + 3))
  {
    goto LABEL_44;
  }

  if (self->_relativeHeight != *(equalCopy + 2))
  {
    goto LABEL_44;
  }

  primaryLayoutAttributes = self->_primaryLayoutAttributes;
  if (primaryLayoutAttributes | *(equalCopy + 16))
  {
    if (![(SBPBDisplayItemLayoutAttributes *)primaryLayoutAttributes isEqual:?])
    {
      goto LABEL_44;
    }
  }

  secondaryLayoutAttributes = self->_secondaryLayoutAttributes;
  if (secondaryLayoutAttributes | *(equalCopy + 19))
  {
    if (![(SBPBDisplayItemLayoutAttributes *)secondaryLayoutAttributes isEqual:?])
    {
      goto LABEL_44;
    }
  }

  centerLayoutAttributes = self->_centerLayoutAttributes;
  if (centerLayoutAttributes | *(equalCopy + 7))
  {
    if (![(SBPBDisplayItemLayoutAttributes *)centerLayoutAttributes isEqual:?])
    {
      goto LABEL_44;
    }
  }

  displayItems = self->_displayItems;
  if (displayItems | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)displayItems isEqual:?])
    {
      goto LABEL_44;
    }
  }

  displayItemLayoutAttributes = self->_displayItemLayoutAttributes;
  if (displayItemLayoutAttributes | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)displayItemLayoutAttributes isEqual:?])
    {
      goto LABEL_44;
    }
  }

  if (self->_preferredDisplayOrdinal != *(equalCopy + 1))
  {
    goto LABEL_44;
  }

  continuousExposeIdentifier = self->_continuousExposeIdentifier;
  if (continuousExposeIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)continuousExposeIdentifier isEqual:?])
    {
      goto LABEL_44;
    }
  }

  displayItemLayoutAttributesForNonPreferredDisplays = self->_displayItemLayoutAttributesForNonPreferredDisplays;
  if (displayItemLayoutAttributesForNonPreferredDisplays | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)displayItemLayoutAttributesForNonPreferredDisplays isEqual:?])
    {
      goto LABEL_44;
    }
  }

  layoutAttributesEntries = self->_layoutAttributesEntries;
  if (layoutAttributesEntries | *(equalCopy + 13))
  {
    v16 = [(NSMutableArray *)layoutAttributesEntries isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_45:

  return v16;
}

- (unint64_t)hash
{
  layoutConfiguration = self->_layoutConfiguration;
  v4 = [(SBPBDisplayItem *)self->_primaryDisplayItem hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_secondaryDisplayItemRole;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SBPBDisplayItem *)self->_secondaryDisplayItem hash];
  environment = self->_environment;
  hidden = self->_hidden;
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_centerDisplayItemRole;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBPBDisplayItem *)self->_centerDisplayItem hash];
  relativeWidth = self->_relativeWidth;
  if (relativeWidth < 0.0)
  {
    relativeWidth = -relativeWidth;
  }

  *v12.i64 = floor(relativeWidth + 0.5);
  v15 = (relativeWidth - *v12.i64) * 1.84467441e19;
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v18 = 2654435761u * *vbslq_s8(v17, v13, v12).i64;
  v19 = v18 + v15;
  v20 = fabs(v15);
  if (v15 <= 0.0)
  {
    v19 = v18;
  }

  v21 = v18 - v20;
  if (v15 >= 0.0)
  {
    v21 = v19;
  }

  relativeHeight = self->_relativeHeight;
  if (relativeHeight < 0.0)
  {
    relativeHeight = -relativeHeight;
  }

  *v11.i64 = floor(relativeHeight + 0.5);
  v23 = relativeHeight - *v11.i64;
  *v13.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.i64[0] = vbslq_s8(v17, v13, v11).i64[0];
  v24 = v23 * 1.84467441e19;
  v25 = 2654435761u * *v11.i64;
  v26 = v25 + v24;
  if (v24 <= 0.0)
  {
    v26 = 2654435761u * *v11.i64;
  }

  v27 = v25 - fabs(v24);
  if (v24 < 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v29 = v4 ^ v5 ^ v6 ^ (2654435761 * layoutConfiguration) ^ (2654435761 * environment) ^ (2654435761 * hidden) ^ v9 ^ v10 ^ (2654435761 * self->_centerConfiguration) ^ v21;
  v30 = v29 ^ v28 ^ [(SBPBDisplayItemLayoutAttributes *)self->_primaryLayoutAttributes hash];
  v31 = [(SBPBDisplayItemLayoutAttributes *)self->_secondaryLayoutAttributes hash];
  v32 = v31 ^ [(SBPBDisplayItemLayoutAttributes *)self->_centerLayoutAttributes hash];
  v33 = v32 ^ [(NSMutableArray *)self->_displayItems hash];
  v34 = v33 ^ [(NSMutableArray *)self->_displayItemLayoutAttributes hash]^ (2654435761 * self->_preferredDisplayOrdinal);
  v35 = v34 ^ [(NSString *)self->_continuousExposeIdentifier hash];
  v36 = v35 ^ [(NSMutableArray *)self->_displayItemLayoutAttributesForNonPreferredDisplays hash];
  return v30 ^ v36 ^ [(NSMutableArray *)self->_layoutAttributesEntries hash];
}

- (__CFString)layoutConfigurationAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 5)
  {
    string = off_2783BAC30[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsLayoutConfiguration:(uint64_t)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Undefined"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Full"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"NarrowWide"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"HalfHalf"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"WideNarrow"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasPrimaryDisplayItem
{
  if (result)
  {
    return *(result + 120) != 0;
  }

  return result;
}

- (uint64_t)secondaryDisplayItemRole
{
  if (result)
  {
    if ((*(result + 164) & 2) != 0)
    {
      return *(result + 144);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setSecondaryDisplayItemRole:(uint64_t)result
{
  if (result)
  {
    *(result + 164) |= 2u;
    *(result + 144) = a2;
  }

  return result;
}

- (uint64_t)setHasSecondaryDisplayItemRole:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 164) = *(result + 164) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasSecondaryDisplayItemRole
{
  if (result)
  {
    return (*(result + 164) >> 1) & 1;
  }

  return result;
}

- (__CFString)secondaryDisplayItemRoleAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 5)
  {
    string = off_2783BAC78[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsSecondaryDisplayItemRole:(uint64_t)role
{
  v3 = a2;
  v4 = v3;
  if (role)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Undefined"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Primary"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Side"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Floating"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Center"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSecondaryDisplayItem
{
  if (result)
  {
    return *(result + 136) != 0;
  }

  return result;
}

- (__CFString)environmentAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 4)
  {
    string = off_2783BAC58[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsEnvironment:(uint64_t)environment
{
  v3 = a2;
  v4 = v3;
  if (environment)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Main"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Floating"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Inline"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"CenterModal"])
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)centerDisplayItemRole
{
  if (result)
  {
    if (*(result + 164))
    {
      return *(result + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setCenterDisplayItemRole:(uint64_t)result
{
  if (result)
  {
    *(result + 164) |= 1u;
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setHasCenterDisplayItemRole:(uint64_t)result
{
  if (result)
  {
    *(result + 164) = *(result + 164) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasCenterDisplayItemRole
{
  if (result)
  {
    return *(result + 164) & 1;
  }

  return result;
}

- (BOOL)hasCenterDisplayItem
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (__CFString)centerConfigurationAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 3)
  {
    string = off_2783BACA0[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsCenterConfiguration:(uint64_t)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Undefined"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Page"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"FullScreen"])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasPrimaryLayoutAttributes
{
  if (result)
  {
    return *(result + 128) != 0;
  }

  return result;
}

- (BOOL)hasSecondaryLayoutAttributes
{
  if (result)
  {
    return *(result + 152) != 0;
  }

  return result;
}

- (BOOL)hasCenterLayoutAttributes
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (uint64_t)clearDisplayItems
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_20(result, 88);
  }

  return result;
}

- (void)addDisplayItems:(uint64_t)items
{
  v3 = a2;
  if (items)
  {
    v4 = OUTLINED_FUNCTION_19_0();
    v6 = v5;
    if (!v4)
    {
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CBEB18]), 88);
      v4 = OUTLINED_FUNCTION_19_0();
    }

    [v4 addObject:v6];
    v3 = v6;
  }
}

- (uint64_t)displayItemsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_24(result, 88);
  }

  return result;
}

- (id)displayItemsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_22(index 88)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearDisplayItemLayoutAttributes
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_20(result, 72);
  }

  return result;
}

- (void)addDisplayItemLayoutAttributes:(uint64_t)attributes
{
  v3 = a2;
  if (attributes)
  {
    v4 = OUTLINED_FUNCTION_15_0();
    v6 = v5;
    if (!v4)
    {
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CBEB18]), 72);
      v4 = OUTLINED_FUNCTION_15_0();
    }

    [v4 addObject:v6];
    v3 = v6;
  }
}

- (uint64_t)displayItemLayoutAttributesCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_24(result, 72);
  }

  return result;
}

- (id)displayItemLayoutAttributesAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_22(index 72)];
    v1 = vars8;
  }

  return index;
}

- (BOOL)hasContinuousExposeIdentifier
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

- (uint64_t)clearDisplayItemLayoutAttributesForNonPreferredDisplays
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_20(result, 80);
  }

  return result;
}

- (void)addDisplayItemLayoutAttributesForNonPreferredDisplay:(uint64_t)display
{
  v3 = a2;
  if (display)
  {
    v4 = OUTLINED_FUNCTION_12_3();
    v6 = v5;
    if (!v4)
    {
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CBEB18]), 80);
      v4 = OUTLINED_FUNCTION_12_3();
    }

    [v4 addObject:v6];
    v3 = v6;
  }
}

- (uint64_t)displayItemLayoutAttributesForNonPreferredDisplaysCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_24(result, 80);
  }

  return result;
}

- (id)displayItemLayoutAttributesForNonPreferredDisplayAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_22(index 80)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearLayoutAttributesEntries
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_20(result, 104);
  }

  return result;
}

- (void)addLayoutAttributesEntries:(uint64_t)entries
{
  v3 = a2;
  if (entries)
  {
    v4 = OUTLINED_FUNCTION_11_2();
    v6 = v5;
    if (!v4)
    {
      OUTLINED_FUNCTION_24(objc_alloc_init(MEMORY[0x277CBEB18]), 104);
      v4 = OUTLINED_FUNCTION_11_2();
    }

    [v4 addObject:v6];
    v3 = v6;
  }
}

- (uint64_t)layoutAttributesEntriesCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_24(result, 104);
  }

  return result;
}

- (id)layoutAttributesEntriesAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_22(index 104)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)copyTo:(uint64_t)to
{
  v4 = a2;
  if (to)
  {
    OUTLINED_FUNCTION_9_3(v4, 112);
    v6 = *(to + 120);
    v62 = v5;
    if (v6)
    {
      [(SBPBAppLayout *)v5 setPrimaryDisplayItem:v6];
      v5 = v62;
    }

    if ((*(to + 164) & 2) != 0)
    {
      OUTLINED_FUNCTION_9_3(v5, 144);
      *(v5 + 164) |= 2u;
    }

    v7 = *(to + 136);
    if (v7)
    {
      [(SBPBAppLayout *)v62 setSecondaryDisplayItem:v7];
      v5 = v62;
    }

    OUTLINED_FUNCTION_9_3(v5, 96);
    *(v8 + 160) = *(to + 160);
    if (*(to + 164))
    {
      OUTLINED_FUNCTION_9_3(v8, 48);
      *(v8 + 164) |= 1u;
    }

    v9 = *(to + 40);
    if (v9)
    {
      [(SBPBAppLayout *)v62 setCenterDisplayItem:v9];
      v8 = v62;
    }

    OUTLINED_FUNCTION_9_3(v8, 32);
    *(v10 + 24) = *(to + 24);
    *(v10 + 16) = *(to + 16);
    v11 = *(to + 128);
    if (v11)
    {
      [(SBPBAppLayout *)v62 setPrimaryLayoutAttributes:v11];
    }

    v12 = *(to + 152);
    if (v12)
    {
      [(SBPBAppLayout *)v62 setSecondaryLayoutAttributes:v12];
    }

    v13 = *(to + 56);
    if (v13)
    {
      [(SBPBAppLayout *)v62 setCenterLayoutAttributes:v13];
    }

    if ([OUTLINED_FUNCTION_19_0() count])
    {
      [*(v62 + 88) removeAllObjects];
      if ([OUTLINED_FUNCTION_19_0() count])
      {
        OUTLINED_FUNCTION_17_0();
        do
        {
          v14 = OUTLINED_FUNCTION_16_0();
          v15 = [SBPBAppLayout displayItemsAtIndex:v14];
          v23 = OUTLINED_FUNCTION_4_9(v15, v16, v17, v18, v19, v20, v21, v22, v61, v62);
          [(SBPBAppLayout *)v23 addDisplayItems:v24];

          OUTLINED_FUNCTION_10_4();
        }

        while (!v25);
      }
    }

    if ([OUTLINED_FUNCTION_15_0() count])
    {
      if (v62)
      {
        [*(v62 + 72) removeAllObjects];
      }

      if ([OUTLINED_FUNCTION_15_0() count])
      {
        OUTLINED_FUNCTION_17_0();
        do
        {
          v26 = OUTLINED_FUNCTION_16_0();
          v27 = [SBPBAppLayout displayItemLayoutAttributesAtIndex:v26];
          v35 = OUTLINED_FUNCTION_4_9(v27, v28, v29, v30, v31, v32, v33, v34, v61, v62);
          [(SBPBAppLayout *)v35 addDisplayItemLayoutAttributes:v36];

          OUTLINED_FUNCTION_10_4();
        }

        while (!v25);
      }
    }

    *(v62 + 8) = *(to + 8);
    v37 = *(to + 64);
    if (v37)
    {
      [(SBPBAppLayout *)v62 setContinuousExposeIdentifier:v37];
    }

    if ([OUTLINED_FUNCTION_12_3() count])
    {
      [*(v62 + 80) removeAllObjects];
      if ([OUTLINED_FUNCTION_12_3() count])
      {
        OUTLINED_FUNCTION_17_0();
        do
        {
          v38 = OUTLINED_FUNCTION_16_0();
          v39 = [SBPBAppLayout displayItemLayoutAttributesForNonPreferredDisplayAtIndex:v38];
          v47 = OUTLINED_FUNCTION_4_9(v39, v40, v41, v42, v43, v44, v45, v46, v61, v62);
          [(SBPBAppLayout *)v47 addDisplayItemLayoutAttributesForNonPreferredDisplay:v48];

          OUTLINED_FUNCTION_10_4();
        }

        while (!v25);
      }
    }

    v4 = [OUTLINED_FUNCTION_11_2() count];
    if (v4)
    {
      if (v62)
      {
        [*(v62 + 104) removeAllObjects];
      }

      v4 = [OUTLINED_FUNCTION_11_2() count];
      if (v4)
      {
        OUTLINED_FUNCTION_17_0();
        do
        {
          v49 = OUTLINED_FUNCTION_16_0();
          v50 = [SBPBAppLayout layoutAttributesEntriesAtIndex:v49];
          v58 = OUTLINED_FUNCTION_4_9(v50, v51, v52, v53, v54, v55, v56, v57, v61, v62);
          [(SBPBAppLayout *)v58 addLayoutAttributesEntries:v59];

          OUTLINED_FUNCTION_10_4();
        }

        while (!v25);
      }
    }
  }

  return MEMORY[0x2821F9730](v4);
}

- (void)setPrimaryDisplayItem:(uint64_t)item
{
  if (item)
  {
    OUTLINED_FUNCTION_0_18(item, a2, 120);
  }
}

- (void)setSecondaryDisplayItem:(uint64_t)item
{
  if (item)
  {
    OUTLINED_FUNCTION_0_18(item, a2, 136);
  }
}

- (void)setCenterDisplayItem:(uint64_t)item
{
  if (item)
  {
    OUTLINED_FUNCTION_0_18(item, a2, 40);
  }
}

- (void)setPrimaryLayoutAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_0_18(attributes, a2, 128);
  }
}

- (void)setSecondaryLayoutAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_0_18(attributes, a2, 152);
  }
}

- (void)setCenterLayoutAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_0_18(attributes, a2, 56);
  }
}

- (void)setContinuousExposeIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    OUTLINED_FUNCTION_0_18(identifier, a2, 64);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (from)
  {
    OUTLINED_FUNCTION_8_3(112);
    v4 = OUTLINED_FUNCTION_7_2(120);
    if (v4)
    {
      if (v5)
      {
        [(SBPBDisplayItem *)v4 mergeFrom:v5];
      }
    }

    else if (v5)
    {
      [(SBPBAppLayout *)from setPrimaryDisplayItem:v5];
    }

    if ((*(v3 + 164) & 2) != 0)
    {
      OUTLINED_FUNCTION_8_3(144);
      *(from + 164) |= 2u;
    }

    v6 = OUTLINED_FUNCTION_7_2(136);
    if (v6)
    {
      if (v7)
      {
        [(SBPBDisplayItem *)v6 mergeFrom:v7];
      }
    }

    else if (v7)
    {
      [(SBPBAppLayout *)from setSecondaryDisplayItem:v7];
    }

    OUTLINED_FUNCTION_8_3(96);
    *(from + 160) = *(v3 + 160);
    if (*(v3 + 164))
    {
      OUTLINED_FUNCTION_8_3(48);
      *(from + 164) |= 1u;
    }

    v8 = OUTLINED_FUNCTION_7_2(40);
    if (v8)
    {
      if (v9)
      {
        [(SBPBDisplayItem *)v8 mergeFrom:v9];
      }
    }

    else if (v9)
    {
      [(SBPBAppLayout *)from setCenterDisplayItem:v9];
    }

    OUTLINED_FUNCTION_8_3(32);
    *(from + 24) = *(v3 + 3);
    *(from + 16) = *(v3 + 2);
    v10 = OUTLINED_FUNCTION_7_2(128);
    if (v10)
    {
      if (v11)
      {
        [(SBPBDisplayItemLayoutAttributes *)v10 mergeFrom:v11];
      }
    }

    else if (v11)
    {
      [(SBPBAppLayout *)from setPrimaryLayoutAttributes:v11];
    }

    v12 = OUTLINED_FUNCTION_7_2(152);
    if (v12)
    {
      if (v13)
      {
        [(SBPBDisplayItemLayoutAttributes *)v12 mergeFrom:v13];
      }
    }

    else if (v13)
    {
      [(SBPBAppLayout *)from setSecondaryLayoutAttributes:v13];
    }

    v14 = OUTLINED_FUNCTION_7_2(56);
    if (v14)
    {
      if (v15)
      {
        [(SBPBDisplayItemLayoutAttributes *)v14 mergeFrom:v15];
      }
    }

    else if (v15)
    {
      [(SBPBAppLayout *)from setCenterLayoutAttributes:v15];
    }

    memset(v41, 0, sizeof(v41));
    v16 = *(v3 + 11);
    if ([v16 countByEnumeratingWithState:v41 objects:v45 count:16])
    {
      do
      {
        OUTLINED_FUNCTION_13_2();
        if (!v17)
        {
          objc_enumerationMutation(v16);
        }

        v18 = OUTLINED_FUNCTION_21();
        [(SBPBAppLayout *)v18 addDisplayItems:v19];
        OUTLINED_FUNCTION_20();
      }

      while (!v17 || OUTLINED_FUNCTION_23(v20, v21, v41, v45));
    }

    memset(v40, 0, sizeof(v40));
    v22 = *(v3 + 9);
    if ([v22 countByEnumeratingWithState:v40 objects:v44 count:16])
    {
      do
      {
        OUTLINED_FUNCTION_13_2();
        if (!v17)
        {
          objc_enumerationMutation(v22);
        }

        v23 = OUTLINED_FUNCTION_21();
        [(SBPBAppLayout *)v23 addDisplayItemLayoutAttributes:v24];
        OUTLINED_FUNCTION_20();
      }

      while (!v17 || OUTLINED_FUNCTION_23(v25, v26, v40, v44));
    }

    *(from + 8) = *(v3 + 1);
    v27 = *(v3 + 8);
    if (v27)
    {
      [(SBPBAppLayout *)from setContinuousExposeIdentifier:v27];
    }

    memset(v39, 0, sizeof(v39));
    v28 = *(v3 + 10);
    if ([v28 countByEnumeratingWithState:v39 objects:v43 count:16])
    {
      do
      {
        OUTLINED_FUNCTION_13_2();
        if (!v17)
        {
          objc_enumerationMutation(v28);
        }

        v29 = OUTLINED_FUNCTION_21();
        [(SBPBAppLayout *)v29 addDisplayItemLayoutAttributesForNonPreferredDisplay:v30];
        OUTLINED_FUNCTION_20();
      }

      while (!v17 || OUTLINED_FUNCTION_23(v31, v32, v39, v43));
    }

    memset(v38, 0, sizeof(v38));
    v33 = *(v3 + 13);
    if ([v33 countByEnumeratingWithState:v38 objects:v42 count:16])
    {
      do
      {
        OUTLINED_FUNCTION_13_2();
        if (!v17)
        {
          objc_enumerationMutation(v33);
        }

        v34 = OUTLINED_FUNCTION_21();
        [(SBPBAppLayout *)v34 addLayoutAttributesEntries:v35];
        OUTLINED_FUNCTION_20();
      }

      while (!v17 || OUTLINED_FUNCTION_23(v36, v37, v38, v42));
    }
  }
}

- (uint64_t)layoutConfiguration
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)setLayoutConfiguration:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)primaryDisplayItem
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)secondaryDisplayItem
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)environment
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)setEnvironment:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

- (uint64_t)hidden
{
  if (self)
  {
    v1 = *(self + 160);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setHidden:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)centerDisplayItem
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)centerConfiguration
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)setCenterConfiguration:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (double)relativeWidth
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setRelativeWidth:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (double)relativeHeight
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setRelativeHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)primaryLayoutAttributes
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)secondaryLayoutAttributes
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

- (uint64_t)centerLayoutAttributes
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)displayItems
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (void)setDisplayItems:(uint64_t)items
{
  if (items)
  {
    OUTLINED_FUNCTION_0_18(items, a2, 88);
  }
}

- (uint64_t)displayItemLayoutAttributes
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setDisplayItemLayoutAttributes:(uint64_t)attributes
{
  if (attributes)
  {
    OUTLINED_FUNCTION_0_18(attributes, a2, 72);
  }
}

- (uint64_t)preferredDisplayOrdinal
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)setPreferredDisplayOrdinal:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)continuousExposeIdentifier
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)displayItemLayoutAttributesForNonPreferredDisplays
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)setDisplayItemLayoutAttributesForNonPreferredDisplays:(uint64_t)displays
{
  if (displays)
  {
    OUTLINED_FUNCTION_0_18(displays, a2, 80);
  }
}

- (uint64_t)layoutAttributesEntries
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (void)setLayoutAttributesEntries:(uint64_t)entries
{
  if (entries)
  {
    OUTLINED_FUNCTION_0_18(entries, a2, 104);
  }
}

@end