@interface SLDHighlightPillSlotTag
+ (id)tagForHighlightAttributions:(id)a3 maxWidth:(double)a4 maxSendersToDisplay:(unint64_t)a5 variant:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (SLDHighlightPillSlotTag)initWithCoder:(id)a3;
- (SLDHighlightPillSlotTag)initWithHighlightAttributions:(id)a3 maxWidth:(double)a4 maxSendersToDisplay:(unint64_t)a5 variant:(unint64_t)a6;
- (id)_personOtherThanPerson:(id)a3 inArray:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)allSendersCount;
- (unint64_t)hash;
- (unint64_t)maxPossibleImageCount;
- (void)_generateCollaborationSendersForMultipleAttributions:(id)a3 maxSendersToDisplay:(unint64_t)a4;
- (void)_generateCollaborationSendersForSingleAttribution:(id)a3 maxSendersToDisplay:(unint64_t)a4;
- (void)_generateSendersWithDisplayPolicyForAttributions:(id)a3 maxSendersToDisplay:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLDHighlightPillSlotTag

+ (id)tagForHighlightAttributions:(id)a3 maxWidth:(double)a4 maxSendersToDisplay:(unint64_t)a5 variant:(unint64_t)a6
{
  v9 = a3;
  v10 = [[SLDHighlightPillSlotTag alloc] initWithHighlightAttributions:v9 maxWidth:a5 maxSendersToDisplay:a6 variant:a4];

  return v10;
}

- (SLDHighlightPillSlotTag)initWithHighlightAttributions:(id)a3 maxWidth:(double)a4 maxSendersToDisplay:(unint64_t)a5 variant:(unint64_t)a6
{
  v10 = a3;
  v18.receiver = self;
  v18.super_class = SLDHighlightPillSlotTag;
  v11 = [(SLDHighlightPillSlotTag *)&v18 init];
  v13 = v11;
  if (v11)
  {
    v11->_maxWidth = a4;
    *&v12 = a4;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    widthNumber = v13->_widthNumber;
    v13->_widthNumber = v14;

    v13->_variant = a6;
    if (a6 <= 0xA && ((1 << a6) & 0x4AA) != 0)
    {
      if ([v10 count] == 1)
      {
        v16 = [v10 firstObject];
        [(SLDHighlightPillSlotTag *)v13 _generateCollaborationSendersForSingleAttribution:v16 maxSendersToDisplay:a5];
      }

      else
      {
        [(SLDHighlightPillSlotTag *)v13 _generateCollaborationSendersForMultipleAttributions:v10 maxSendersToDisplay:a5];
      }
    }

    else
    {
      [(SLDHighlightPillSlotTag *)v13 _generateSendersWithDisplayPolicyForAttributions:v10 maxSendersToDisplay:a5];
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLDHighlightPillSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDHighlightPillSlotTag: %p> maxWidth:[%@]", self, v4];

  return v5;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v15 = MEMORY[0x277D777E0];
  v3 = a3;
  v4 = [v3 accessibilityButtonShapes];
  v5 = [v3 accessibilityContrast];
  v6 = [v3 displayScale];
  v7 = [v3 layoutDirection];
  v8 = [v3 localization];
  v9 = [v3 preferredContentSizeCategory];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  v11 = [v3 userInterfaceIdiom];
  v12 = [v3 userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:v4 accessibilityContrast:v5 displayRange:1 displayScale:v6 layoutDirection:v7 legibilityWeight:0 localization:v8 preferredContentSizeCategory:v9 tintColor:ConstantColor userInterfaceIdiom:v11 userInterfaceStyle:v12];

  return v13;
}

- (SLDHighlightPillSlotTag)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SLDHighlightPillSlotTag;
  v5 = [(SLDHighlightPillSlotTag *)&v29 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allSendersCount"];
    v10 = v9;
    if (v9)
    {
      v5->_allSendersNumber = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v5->_allSendersNumber = v11;
    }

    v12 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"sendersToDisplay"];
    sendersToDisplay = v5->_sendersToDisplay;
    v5->_sendersToDisplay = v15;

    v5->_variant = [v4 decodeIntegerForKey:@"variant"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedSender"];
    pinnedSender = v5->_pinnedSender;
    v5->_pinnedSender = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"meSender"];
    meSender = v5->_meSender;
    v5->_meSender = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupPhotoPath"];
    groupPhotoPath = v5->_groupPhotoPath;
    v5->_groupPhotoPath = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupName = v5->_groupName;
    v5->_groupName = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SLDHighlightPillSlotTag *)self maxWidth];
  [v4 encodeDouble:@"maxWidth" forKey:?];
  v5 = [(SLDHighlightPillSlotTag *)self widthNumber];
  [v4 encodeObject:v5 forKey:@"maxWidthNumber"];

  v6 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  [v4 encodeObject:v6 forKey:@"allSendersCount"];

  v7 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  [v4 encodeObject:v7 forKey:@"sendersToDisplay"];

  [v4 encodeInteger:-[SLDHighlightPillSlotTag variant](self forKey:{"variant"), @"variant"}];
  v8 = [(SLDHighlightPillSlotTag *)self pinnedSender];
  [v4 encodeObject:v8 forKey:@"pinnedSender"];

  v9 = [(SLDHighlightPillSlotTag *)self meSender];
  [v4 encodeObject:v9 forKey:@"meSender"];

  v10 = [(SLDHighlightPillSlotTag *)self groupID];
  [v4 encodeObject:v10 forKey:@"groupID"];

  v11 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  [v4 encodeObject:v11 forKey:@"groupPhotoPath"];

  v12 = [(SLDHighlightPillSlotTag *)self groupName];
  [v4 encodeObject:v12 forKey:@"groupName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDHighlightPillSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  v5 = [(SLDHighlightPillSlotTag *)self widthNumber];
  [v4 setWidthNumber:v5];

  v6 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  [v4 setSendersToDisplay:v6];

  v7 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  [v4 setAllSendersNumber:v7];

  [v4 setVariant:{-[SLDHighlightPillSlotTag variant](self, "variant")}];
  v8 = [(SLDHighlightPillSlotTag *)self pinnedSender];
  [v4 setPinnedSender:v8];

  v9 = [(SLDHighlightPillSlotTag *)self meSender];
  [v4 setMeSender:v9];

  v10 = [(SLDHighlightPillSlotTag *)self groupID];
  [v4 setGroupID:v10];

  v11 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  [v4 setGroupPhotoPath:v11];

  v12 = [(SLDHighlightPillSlotTag *)self groupName];
  [v4 setGroupName:v12];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (v6 == self)
    {
      v19 = 1;
LABEL_61:

      goto LABEL_62;
    }

    [(SLDHighlightPillSlotTag *)v6 maxWidth];
    v9 = v8;
    [(SLDHighlightPillSlotTag *)self maxWidth];
    if (!SL_CGFloatApproximatelyEqualToFloat(v9, v10))
    {
      goto LABEL_60;
    }

    v11 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
    if (v11 || ([(SLDHighlightPillSlotTag *)v7 allSendersNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = v12;
      v14 = [(SLDHighlightPillSlotTag *)v7 allSendersNumber];
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = v14;
      v16 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
      v17 = [(SLDHighlightPillSlotTag *)v7 allSendersNumber];
      v18 = [v16 isEqualToNumber:v17];

      if (v11)
      {

        if (!v18)
        {
          goto LABEL_60;
        }
      }

      else
      {

        if ((v18 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    v11 = [(SLDHighlightPillSlotTag *)self widthNumber];
    if (!v11)
    {
      v3 = [(SLDHighlightPillSlotTag *)v7 widthNumber];
      if (!v3)
      {
LABEL_26:
        v26 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
        if (v26 || ([(SLDHighlightPillSlotTag *)v7 sendersToDisplay], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v27 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
          v28 = [(SLDHighlightPillSlotTag *)v7 sendersToDisplay];
          v29 = SLPersonArrayisEqualToArray(v27, v28);

          if (v26)
          {

            if (!v29)
            {
              goto LABEL_60;
            }
          }

          else
          {

            if ((v29 & 1) == 0)
            {
              goto LABEL_60;
            }
          }
        }

        v30 = [(SLDHighlightPillSlotTag *)self pinnedSender];
        if (v30 || ([(SLDHighlightPillSlotTag *)v7 pinnedSender], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v31 = [(SLDHighlightPillSlotTag *)self pinnedSender];
          v32 = [(SLDHighlightPillSlotTag *)v7 pinnedSender];
          IsEqualToPerson = SLPersonIsEqualToPerson(v31, v32);

          if (v30)
          {

            if (!IsEqualToPerson)
            {
              goto LABEL_60;
            }
          }

          else
          {

            if ((IsEqualToPerson & 1) == 0)
            {
              goto LABEL_60;
            }
          }
        }

        v34 = [(SLDHighlightPillSlotTag *)self meSender];
        if (v34 || ([(SLDHighlightPillSlotTag *)v7 meSender], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v35 = [(SLDHighlightPillSlotTag *)self meSender];
          v36 = [(SLDHighlightPillSlotTag *)v7 meSender];
          v37 = SLPersonIsEqualToPerson(v35, v36);

          if (v34)
          {

            if (!v37)
            {
              goto LABEL_60;
            }
          }

          else
          {

            if ((v37 & 1) == 0)
            {
              goto LABEL_60;
            }
          }
        }

        v38 = [(SLDHighlightPillSlotTag *)self variant];
        if (v38 == [(SLDHighlightPillSlotTag *)v7 variant])
        {
          v39 = [(SLDHighlightPillSlotTag *)self groupID];
          if (v39 || ([(SLDHighlightPillSlotTag *)v7 groupID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v40 = [(SLDHighlightPillSlotTag *)self groupID];
            v41 = [(SLDHighlightPillSlotTag *)v7 groupID];
            v42 = [v40 isEqualToString:v41];

            if (v39)
            {

              if (!v42)
              {
                goto LABEL_60;
              }
            }

            else
            {

              if ((v42 & 1) == 0)
              {
                goto LABEL_60;
              }
            }
          }

          v43 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
          if (!v43)
          {
            v3 = [(SLDHighlightPillSlotTag *)v7 groupPhotoPath];
            if (!v3)
            {
LABEL_55:
              v11 = [(SLDHighlightPillSlotTag *)self groupName];
              if (v11 || ([(SLDHighlightPillSlotTag *)v7 groupName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v47 = [(SLDHighlightPillSlotTag *)self groupName];
                v48 = [(SLDHighlightPillSlotTag *)v7 groupName];
                v19 = [v47 isEqual:v48];

                if (v11)
                {
LABEL_24:

                  goto LABEL_61;
                }
              }

              else
              {
                v19 = 1;
              }

              goto LABEL_24;
            }
          }

          v44 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
          v45 = [(SLDHighlightPillSlotTag *)v7 groupPhotoPath];
          v46 = [v44 isEqual:v45];

          if (v43)
          {

            if (v46)
            {
              goto LABEL_55;
            }
          }

          else
          {

            if (v46)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_60:
        v19 = 0;
        goto LABEL_61;
      }
    }

    v20 = [(SLDHighlightPillSlotTag *)self widthNumber];
    if (!v20)
    {
LABEL_22:
      v19 = 0;
      if (!v11)
      {
        v11 = v3;
      }

      goto LABEL_24;
    }

    v13 = v20;
    v21 = [(SLDHighlightPillSlotTag *)v7 widthNumber];
    if (v21)
    {
      v22 = v21;
      v23 = [(SLDHighlightPillSlotTag *)self widthNumber];
      v24 = [(SLDHighlightPillSlotTag *)v7 widthNumber];
      v25 = [v23 isEqualToNumber:v24];

      if (v11)
      {

        if (!v25)
        {
          goto LABEL_60;
        }
      }

      else
      {

        if ((v25 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_26;
    }

LABEL_21:

    goto LABEL_22;
  }

  v19 = 0;
LABEL_62:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(SLDHighlightPillSlotTag *)self widthNumber];
  v4 = [v3 hash];
  v5 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  v6 = [v5 hash] ^ v4;
  v7 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  v8 = [v7 hash];
  v9 = [(SLDHighlightPillSlotTag *)self pinnedSender];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SLDHighlightPillSlotTag *)self meSender];
  v12 = [v11 hash];
  v13 = v12 ^ [(SLDHighlightPillSlotTag *)self variant];
  v14 = [(SLDHighlightPillSlotTag *)self groupID];
  v15 = v10 ^ v13 ^ [v14 hash];
  v16 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  v17 = [v16 hash];
  v18 = [(SLDHighlightPillSlotTag *)self groupName];
  v19 = v17 ^ [v18 hash];

  return v15 ^ v19;
}

- (unint64_t)maxPossibleImageCount
{
  v3 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  if (v3 && (v4 = v3, [(SLDHighlightPillSlotTag *)self groupID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
    v6 = [v7 count];
  }

  v8 = [(SLDHighlightPillSlotTag *)self pinnedSender];

  if (v8)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)allSendersCount
{
  v3 = [(SLDHighlightPillSlotTag *)self allSendersNumber];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)_generateCollaborationSendersForSingleAttribution:(id)a3 maxSendersToDisplay:(unint64_t)a4
{
  v43 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v45 = [MEMORY[0x277CBEA60] array];
  v48 = +[SLPerson fetchMeContact];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v4 relatedPersons];
  v6 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  v49 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    v9 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        if ([v4 isFromMe])
        {
          v12 = [v4 sender];
          IsEqualToPerson = SLPersonIsEqualToPerson(v12, v11);
        }

        else
        {
          IsEqualToPerson = 0;
        }

        v14 = [v11 contact];
        v15 = [v14 identifier];
        v16 = [v48 identifier];
        v17 = [v15 isEqualToString:v16];

        v5 = v49;
        if ((SLPersonArrayContainsPerson(v49, v11) & 1) == 0 && (IsEqualToPerson & 1) == 0 && (v17 & 1) == 0)
        {
          [v49 addObject:v11];
        }

        v4 = v9;
      }

      v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v7);
  }

  if (![v5 count])
  {
    v18 = [v4 relatedPersons];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v4 relatedPersons];
      v21 = [v20 firstObject];
      [v49 addObject:v21];
    }
  }

  v22 = [v4 groupPhotoPath];
  [(SLDHighlightPillSlotTag *)self setGroupPhotoPath:v22];

  v23 = [v4 groupID];
  v24 = [v23 UUIDString];
  [(SLDHighlightPillSlotTag *)self setGroupID:v24];

  v25 = [v4 groupDisplayName];
  v26 = [v25 length];

  if (v26)
  {
    v27 = [v4 groupDisplayName];
    [(SLDHighlightPillSlotTag *)self setGroupName:v27];

    v28 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
    if (v28)
    {
      v29 = v28;
      v30 = [(SLDHighlightPillSlotTag *)self groupID];

      if (v30)
      {
        v31 = 1;
        v32 = v49;
        v33 = v45;
        goto LABEL_31;
      }
    }

    v32 = v49;
    if (v44)
    {
      v34 = v49;
    }

    else
    {
      v34 = [v49 subarrayWithRange:{0, 0}];
    }

    v37 = v34;
    v31 = 1;
    v35 = v45;
  }

  else
  {
    v32 = v49;
    v31 = [v49 count];
    v35 = v45;
    if (v31 >= v44)
    {
      v36 = [v49 subarrayWithRange:0];
    }

    else
    {
      v36 = v49;
    }

    v37 = v36;
  }

  v33 = v37;
LABEL_31:
  self->_allSendersNumber = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  v38 = [v33 copy];
  sendersToDisplay = self->_sendersToDisplay;
  self->_sendersToDisplay = v38;

  v40 = [v4 isPinned];
  if (v40)
  {
    v41 = [v4 sender];
  }

  else
  {
    v41 = 0;
  }

  objc_storeStrong(&self->_pinnedSender, v41);
  if (v40)
  {
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_generateCollaborationSendersForMultipleAttributions:(id)a3 maxSendersToDisplay:(unint64_t)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v8 = [MEMORY[0x277CBEB18] array];
  v47 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
  v44 = v5;
  v45 = v4;
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        if ([v14 isPinned])
        {
          v15 = [v14 sender];
          if ([v14 isFromMe])
          {
            v16 = [v14 sender];
            v17 = [v14 relatedPersons];
            v18 = [(SLDHighlightPillSlotTag *)self _personOtherThanPerson:v16 inArray:v17];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = v15;
            }

            v21 = v20;

            v15 = v21;
          }

          [v47 addObject:v15];
          [v8 addObject:v15];
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_16:
  v43 = v15;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v9;
  v50 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v50)
  {
    v49 = *v56;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v56 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v55 + 1) + 8 * j);
        if (([v23 isPinned] & 1) == 0)
        {
          v24 = [v23 sender];
          if ([v23 isFromMe])
          {
            v25 = [v23 sender];
            v26 = [v23 relatedPersons];
            v27 = [(SLDHighlightPillSlotTag *)self _personOtherThanPerson:v25 inArray:v26];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v24;
            }

            v30 = v29;

            v24 = v30;
          }

          if ((SLPersonArrayContainsPerson(v8, v24) & 1) == 0)
          {
            [v47 addObject:v24];
            [v8 addObject:v24];
          }
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v31 = [v23 relatedPersons];
        v32 = [v31 countByEnumeratingWithState:&v51 objects:v63 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v52;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v52 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v51 + 1) + 8 * k);
              if ([v23 isFromMe])
              {
                v37 = [v23 sender];
                IsEqualToPerson = SLPersonIsEqualToPerson(v37, v36);

                if (IsEqualToPerson)
                {
                  continue;
                }
              }

              if ((SLPersonArrayContainsPerson(v8, v36) & 1) == 0)
              {
                [v8 addObject:v36];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v51 objects:v63 count:16];
          }

          while (v33);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v50);
  }

  self->_allSendersNumber = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v39 = [v47 copy];
  sendersToDisplay = self->_sendersToDisplay;
  self->_sendersToDisplay = v39;

  pinnedSender = self->_pinnedSender;
  self->_pinnedSender = v43;

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_generateSendersWithDisplayPolicyForAttributions:(id)a3 maxSendersToDisplay:(unint64_t)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v40 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v42 = v5;
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v11)
  {

    v39 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v49;
  obj = v10;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v48 + 1) + 8 * i);
      if (v14 && v13)
      {
        v10 = obj;

LABEL_23:
        if ((SLPersonArrayContainsPerson(v8, v14) & 1) == 0)
        {
          [v8 addObject:v14];
          [v9 addObject:v14];
        }

        goto LABEL_25;
      }

      v18 = [*(*(&v48 + 1) + 8 * i) sender];

      if (v18)
      {
        if (!v14)
        {
          if (![v17 isPinned])
          {
            v14 = 0;
            if (v13)
            {
              continue;
            }

            goto LABEL_13;
          }

          v14 = [v17 sender];
        }

        if (v13)
        {
          continue;
        }

LABEL_13:
        if ([v17 isFromMe])
        {
          v13 = [v17 sender];
        }

        else
        {
          v13 = 0;
        }

        continue;
      }
    }

    v10 = obj;
    v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  if (v14)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v13)
  {
    v39 = v13;
    if ((SLPersonArrayContainsPerson(v8, v13) & 1) == 0)
    {
      [v8 addObject:v13];
      [v9 addObject:v13];
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_30:
  v38 = v14;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = v10;
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        v25 = [v24 sender];
        if (v25)
        {
          v26 = v25;
          v27 = [v24 isFromMe];

          if ((v27 & 1) == 0)
          {
            v28 = [v24 sender];
            v29 = SLPersonArrayContainsPerson(v8, v28);

            if ((v29 & 1) == 0)
            {
              v30 = [v24 sender];
              [v8 addObject:v30];

              if ([v9 count] < a4)
              {
                v31 = [v24 sender];
                [v9 addObject:v31];
              }
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v21);
  }

  self->_allSendersNumber = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v32 = [v9 copy];
  sendersToDisplay = self->_sendersToDisplay;
  self->_sendersToDisplay = v32;

  pinnedSender = self->_pinnedSender;
  self->_pinnedSender = v38;
  v35 = v38;

  meSender = self->_meSender;
  self->_meSender = v39;

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_personOtherThanPerson:(id)a3 inArray:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((SLPersonIsEqualToPerson(v10, v5) & 1) == 0)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

@end