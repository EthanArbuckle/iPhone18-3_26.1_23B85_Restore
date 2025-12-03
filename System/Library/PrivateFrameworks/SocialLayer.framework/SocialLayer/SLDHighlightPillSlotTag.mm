@interface SLDHighlightPillSlotTag
+ (id)tagForHighlightAttributions:(id)attributions maxWidth:(double)width maxSendersToDisplay:(unint64_t)display variant:(unint64_t)variant;
- (BOOL)isEqual:(id)equal;
- (SLDHighlightPillSlotTag)initWithCoder:(id)coder;
- (SLDHighlightPillSlotTag)initWithHighlightAttributions:(id)attributions maxWidth:(double)width maxSendersToDisplay:(unint64_t)display variant:(unint64_t)variant;
- (id)_personOtherThanPerson:(id)person inArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)allSendersCount;
- (unint64_t)hash;
- (unint64_t)maxPossibleImageCount;
- (void)_generateCollaborationSendersForMultipleAttributions:(id)attributions maxSendersToDisplay:(unint64_t)display;
- (void)_generateCollaborationSendersForSingleAttribution:(id)attribution maxSendersToDisplay:(unint64_t)display;
- (void)_generateSendersWithDisplayPolicyForAttributions:(id)attributions maxSendersToDisplay:(unint64_t)display;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLDHighlightPillSlotTag

+ (id)tagForHighlightAttributions:(id)attributions maxWidth:(double)width maxSendersToDisplay:(unint64_t)display variant:(unint64_t)variant
{
  attributionsCopy = attributions;
  v10 = [[SLDHighlightPillSlotTag alloc] initWithHighlightAttributions:attributionsCopy maxWidth:display maxSendersToDisplay:variant variant:width];

  return v10;
}

- (SLDHighlightPillSlotTag)initWithHighlightAttributions:(id)attributions maxWidth:(double)width maxSendersToDisplay:(unint64_t)display variant:(unint64_t)variant
{
  attributionsCopy = attributions;
  v18.receiver = self;
  v18.super_class = SLDHighlightPillSlotTag;
  v11 = [(SLDHighlightPillSlotTag *)&v18 init];
  v13 = v11;
  if (v11)
  {
    v11->_maxWidth = width;
    *&v12 = width;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    widthNumber = v13->_widthNumber;
    v13->_widthNumber = v14;

    v13->_variant = variant;
    if (variant <= 0xA && ((1 << variant) & 0x4AA) != 0)
    {
      if ([attributionsCopy count] == 1)
      {
        firstObject = [attributionsCopy firstObject];
        [(SLDHighlightPillSlotTag *)v13 _generateCollaborationSendersForSingleAttribution:firstObject maxSendersToDisplay:display];
      }

      else
      {
        [(SLDHighlightPillSlotTag *)v13 _generateCollaborationSendersForMultipleAttributions:attributionsCopy maxSendersToDisplay:display];
      }
    }

    else
    {
      [(SLDHighlightPillSlotTag *)v13 _generateSendersWithDisplayPolicyForAttributions:attributionsCopy maxSendersToDisplay:display];
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  widthNumber = [(SLDHighlightPillSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDHighlightPillSlotTag: %p> maxWidth:[%@]", self, widthNumber];

  return v5;
}

- (id)resolvedStyleForStyle:(id)style
{
  v15 = MEMORY[0x277D777E0];
  styleCopy = style;
  accessibilityButtonShapes = [styleCopy accessibilityButtonShapes];
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  userInterfaceStyle = [styleCopy userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:accessibilityButtonShapes accessibilityContrast:accessibilityContrast displayRange:1 displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:0 localization:localization preferredContentSizeCategory:preferredContentSizeCategory tintColor:ConstantColor userInterfaceIdiom:userInterfaceIdiom userInterfaceStyle:userInterfaceStyle];

  return v13;
}

- (SLDHighlightPillSlotTag)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = SLDHighlightPillSlotTag;
  v5 = [(SLDHighlightPillSlotTag *)&v29 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allSendersCount"];
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sendersToDisplay"];
    sendersToDisplay = v5->_sendersToDisplay;
    v5->_sendersToDisplay = v15;

    v5->_variant = [coderCopy decodeIntegerForKey:@"variant"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedSender"];
    pinnedSender = v5->_pinnedSender;
    v5->_pinnedSender = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meSender"];
    meSender = v5->_meSender;
    v5->_meSender = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupPhotoPath"];
    groupPhotoPath = v5->_groupPhotoPath;
    v5->_groupPhotoPath = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupName = v5->_groupName;
    v5->_groupName = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SLDHighlightPillSlotTag *)self maxWidth];
  [coderCopy encodeDouble:@"maxWidth" forKey:?];
  widthNumber = [(SLDHighlightPillSlotTag *)self widthNumber];
  [coderCopy encodeObject:widthNumber forKey:@"maxWidthNumber"];

  allSendersNumber = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  [coderCopy encodeObject:allSendersNumber forKey:@"allSendersCount"];

  sendersToDisplay = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  [coderCopy encodeObject:sendersToDisplay forKey:@"sendersToDisplay"];

  [coderCopy encodeInteger:-[SLDHighlightPillSlotTag variant](self forKey:{"variant"), @"variant"}];
  pinnedSender = [(SLDHighlightPillSlotTag *)self pinnedSender];
  [coderCopy encodeObject:pinnedSender forKey:@"pinnedSender"];

  meSender = [(SLDHighlightPillSlotTag *)self meSender];
  [coderCopy encodeObject:meSender forKey:@"meSender"];

  groupID = [(SLDHighlightPillSlotTag *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];

  groupPhotoPath = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  [coderCopy encodeObject:groupPhotoPath forKey:@"groupPhotoPath"];

  groupName = [(SLDHighlightPillSlotTag *)self groupName];
  [coderCopy encodeObject:groupName forKey:@"groupName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDHighlightPillSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  widthNumber = [(SLDHighlightPillSlotTag *)self widthNumber];
  [v4 setWidthNumber:widthNumber];

  sendersToDisplay = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  [v4 setSendersToDisplay:sendersToDisplay];

  allSendersNumber = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  [v4 setAllSendersNumber:allSendersNumber];

  [v4 setVariant:{-[SLDHighlightPillSlotTag variant](self, "variant")}];
  pinnedSender = [(SLDHighlightPillSlotTag *)self pinnedSender];
  [v4 setPinnedSender:pinnedSender];

  meSender = [(SLDHighlightPillSlotTag *)self meSender];
  [v4 setMeSender:meSender];

  groupID = [(SLDHighlightPillSlotTag *)self groupID];
  [v4 setGroupID:groupID];

  groupPhotoPath = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  [v4 setGroupPhotoPath:groupPhotoPath];

  groupName = [(SLDHighlightPillSlotTag *)self groupName];
  [v4 setGroupName:groupName];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
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

    allSendersNumber = [(SLDHighlightPillSlotTag *)self allSendersNumber];
    if (allSendersNumber || ([(SLDHighlightPillSlotTag *)v7 allSendersNumber], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
    {
      allSendersNumber2 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
      if (!allSendersNumber2)
      {
        goto LABEL_22;
      }

      v13 = allSendersNumber2;
      allSendersNumber3 = [(SLDHighlightPillSlotTag *)v7 allSendersNumber];
      if (!allSendersNumber3)
      {
        goto LABEL_21;
      }

      v15 = allSendersNumber3;
      allSendersNumber4 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
      allSendersNumber5 = [(SLDHighlightPillSlotTag *)v7 allSendersNumber];
      v18 = [allSendersNumber4 isEqualToNumber:allSendersNumber5];

      if (allSendersNumber)
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

    allSendersNumber = [(SLDHighlightPillSlotTag *)self widthNumber];
    if (!allSendersNumber)
    {
      widthNumber = [(SLDHighlightPillSlotTag *)v7 widthNumber];
      if (!widthNumber)
      {
LABEL_26:
        sendersToDisplay = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
        if (sendersToDisplay || ([(SLDHighlightPillSlotTag *)v7 sendersToDisplay], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
        {
          sendersToDisplay2 = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
          sendersToDisplay3 = [(SLDHighlightPillSlotTag *)v7 sendersToDisplay];
          v29 = SLPersonArrayisEqualToArray(sendersToDisplay2, sendersToDisplay3);

          if (sendersToDisplay)
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

        pinnedSender = [(SLDHighlightPillSlotTag *)self pinnedSender];
        if (pinnedSender || ([(SLDHighlightPillSlotTag *)v7 pinnedSender], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
        {
          pinnedSender2 = [(SLDHighlightPillSlotTag *)self pinnedSender];
          pinnedSender3 = [(SLDHighlightPillSlotTag *)v7 pinnedSender];
          IsEqualToPerson = SLPersonIsEqualToPerson(pinnedSender2, pinnedSender3);

          if (pinnedSender)
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

        meSender = [(SLDHighlightPillSlotTag *)self meSender];
        if (meSender || ([(SLDHighlightPillSlotTag *)v7 meSender], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
        {
          meSender2 = [(SLDHighlightPillSlotTag *)self meSender];
          meSender3 = [(SLDHighlightPillSlotTag *)v7 meSender];
          v37 = SLPersonIsEqualToPerson(meSender2, meSender3);

          if (meSender)
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

        variant = [(SLDHighlightPillSlotTag *)self variant];
        if (variant == [(SLDHighlightPillSlotTag *)v7 variant])
        {
          groupID = [(SLDHighlightPillSlotTag *)self groupID];
          if (groupID || ([(SLDHighlightPillSlotTag *)v7 groupID], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
          {
            groupID2 = [(SLDHighlightPillSlotTag *)self groupID];
            groupID3 = [(SLDHighlightPillSlotTag *)v7 groupID];
            v42 = [groupID2 isEqualToString:groupID3];

            if (groupID)
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

          groupPhotoPath = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
          if (!groupPhotoPath)
          {
            widthNumber = [(SLDHighlightPillSlotTag *)v7 groupPhotoPath];
            if (!widthNumber)
            {
LABEL_55:
              allSendersNumber = [(SLDHighlightPillSlotTag *)self groupName];
              if (allSendersNumber || ([(SLDHighlightPillSlotTag *)v7 groupName], (widthNumber = objc_claimAutoreleasedReturnValue()) != 0))
              {
                groupName = [(SLDHighlightPillSlotTag *)self groupName];
                groupName2 = [(SLDHighlightPillSlotTag *)v7 groupName];
                v19 = [groupName isEqual:groupName2];

                if (allSendersNumber)
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

          groupPhotoPath2 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
          groupPhotoPath3 = [(SLDHighlightPillSlotTag *)v7 groupPhotoPath];
          v46 = [groupPhotoPath2 isEqual:groupPhotoPath3];

          if (groupPhotoPath)
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

    widthNumber2 = [(SLDHighlightPillSlotTag *)self widthNumber];
    if (!widthNumber2)
    {
LABEL_22:
      v19 = 0;
      if (!allSendersNumber)
      {
        allSendersNumber = widthNumber;
      }

      goto LABEL_24;
    }

    v13 = widthNumber2;
    widthNumber3 = [(SLDHighlightPillSlotTag *)v7 widthNumber];
    if (widthNumber3)
    {
      v22 = widthNumber3;
      widthNumber4 = [(SLDHighlightPillSlotTag *)self widthNumber];
      widthNumber5 = [(SLDHighlightPillSlotTag *)v7 widthNumber];
      v25 = [widthNumber4 isEqualToNumber:widthNumber5];

      if (allSendersNumber)
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
  widthNumber = [(SLDHighlightPillSlotTag *)self widthNumber];
  v4 = [widthNumber hash];
  sendersToDisplay = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
  v6 = [sendersToDisplay hash] ^ v4;
  allSendersNumber = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  v8 = [allSendersNumber hash];
  pinnedSender = [(SLDHighlightPillSlotTag *)self pinnedSender];
  v10 = v6 ^ v8 ^ [pinnedSender hash];
  meSender = [(SLDHighlightPillSlotTag *)self meSender];
  v12 = [meSender hash];
  v13 = v12 ^ [(SLDHighlightPillSlotTag *)self variant];
  groupID = [(SLDHighlightPillSlotTag *)self groupID];
  v15 = v10 ^ v13 ^ [groupID hash];
  groupPhotoPath = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  v17 = [groupPhotoPath hash];
  groupName = [(SLDHighlightPillSlotTag *)self groupName];
  v19 = v17 ^ [groupName hash];

  return v15 ^ v19;
}

- (unint64_t)maxPossibleImageCount
{
  groupPhotoPath = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
  if (groupPhotoPath && (v4 = groupPhotoPath, [(SLDHighlightPillSlotTag *)self groupID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = 1;
  }

  else
  {
    sendersToDisplay = [(SLDHighlightPillSlotTag *)self sendersToDisplay];
    v6 = [sendersToDisplay count];
  }

  pinnedSender = [(SLDHighlightPillSlotTag *)self pinnedSender];

  if (pinnedSender)
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
  allSendersNumber = [(SLDHighlightPillSlotTag *)self allSendersNumber];

  if (!allSendersNumber)
  {
    return 0;
  }

  allSendersNumber2 = [(SLDHighlightPillSlotTag *)self allSendersNumber];
  unsignedIntegerValue = [allSendersNumber2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_generateCollaborationSendersForSingleAttribution:(id)attribution maxSendersToDisplay:(unint64_t)display
{
  displayCopy = display;
  v55 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v48 = +[SLPerson fetchMeContact];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [attributionCopy relatedPersons];
  v6 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  v49 = array;
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    v9 = attributionCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        if ([attributionCopy isFromMe])
        {
          sender = [attributionCopy sender];
          IsEqualToPerson = SLPersonIsEqualToPerson(sender, v11);
        }

        else
        {
          IsEqualToPerson = 0;
        }

        contact = [v11 contact];
        identifier = [contact identifier];
        identifier2 = [v48 identifier];
        v17 = [identifier isEqualToString:identifier2];

        array = v49;
        if ((SLPersonArrayContainsPerson(v49, v11) & 1) == 0 && (IsEqualToPerson & 1) == 0 && (v17 & 1) == 0)
        {
          [v49 addObject:v11];
        }

        attributionCopy = v9;
      }

      v7 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v7);
  }

  if (![array count])
  {
    relatedPersons = [attributionCopy relatedPersons];
    v19 = [relatedPersons count];

    if (v19)
    {
      relatedPersons2 = [attributionCopy relatedPersons];
      firstObject = [relatedPersons2 firstObject];
      [v49 addObject:firstObject];
    }
  }

  groupPhotoPath = [attributionCopy groupPhotoPath];
  [(SLDHighlightPillSlotTag *)self setGroupPhotoPath:groupPhotoPath];

  groupID = [attributionCopy groupID];
  uUIDString = [groupID UUIDString];
  [(SLDHighlightPillSlotTag *)self setGroupID:uUIDString];

  groupDisplayName = [attributionCopy groupDisplayName];
  v26 = [groupDisplayName length];

  if (v26)
  {
    groupDisplayName2 = [attributionCopy groupDisplayName];
    [(SLDHighlightPillSlotTag *)self setGroupName:groupDisplayName2];

    groupPhotoPath2 = [(SLDHighlightPillSlotTag *)self groupPhotoPath];
    if (groupPhotoPath2)
    {
      v29 = groupPhotoPath2;
      groupID2 = [(SLDHighlightPillSlotTag *)self groupID];

      if (groupID2)
      {
        v31 = 1;
        v32 = v49;
        v33 = array2;
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
    v35 = array2;
  }

  else
  {
    v32 = v49;
    v31 = [v49 count];
    v35 = array2;
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

  isPinned = [attributionCopy isPinned];
  if (isPinned)
  {
    sender2 = [attributionCopy sender];
  }

  else
  {
    sender2 = 0;
  }

  objc_storeStrong(&self->_pinnedSender, sender2);
  if (isPinned)
  {
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_generateCollaborationSendersForMultipleAttributions:(id)attributions maxSendersToDisplay:(unint64_t)display
{
  v66 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
  v7 = [attributionsCopy sortedArrayUsingDescriptors:v6];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
  v44 = v5;
  v45 = attributionsCopy;
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
          sender = [v14 sender];
          if ([v14 isFromMe])
          {
            sender2 = [v14 sender];
            relatedPersons = [v14 relatedPersons];
            v18 = [(SLDHighlightPillSlotTag *)self _personOtherThanPerson:sender2 inArray:relatedPersons];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = sender;
            }

            v21 = v20;

            sender = v21;
          }

          [array2 addObject:sender];
          [array addObject:sender];
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

  sender = 0;
LABEL_16:
  v43 = sender;

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
          sender3 = [v23 sender];
          if ([v23 isFromMe])
          {
            sender4 = [v23 sender];
            relatedPersons2 = [v23 relatedPersons];
            v27 = [(SLDHighlightPillSlotTag *)self _personOtherThanPerson:sender4 inArray:relatedPersons2];
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = sender3;
            }

            v30 = v29;

            sender3 = v30;
          }

          if ((SLPersonArrayContainsPerson(array, sender3) & 1) == 0)
          {
            [array2 addObject:sender3];
            [array addObject:sender3];
          }
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        relatedPersons3 = [v23 relatedPersons];
        v32 = [relatedPersons3 countByEnumeratingWithState:&v51 objects:v63 count:16];
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
                objc_enumerationMutation(relatedPersons3);
              }

              v36 = *(*(&v51 + 1) + 8 * k);
              if ([v23 isFromMe])
              {
                sender5 = [v23 sender];
                IsEqualToPerson = SLPersonIsEqualToPerson(sender5, v36);

                if (IsEqualToPerson)
                {
                  continue;
                }
              }

              if ((SLPersonArrayContainsPerson(array, v36) & 1) == 0)
              {
                [array addObject:v36];
              }
            }

            v33 = [relatedPersons3 countByEnumeratingWithState:&v51 objects:v63 count:16];
          }

          while (v33);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v50);
  }

  self->_allSendersNumber = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(array, "count")}];
  v39 = [array2 copy];
  sendersToDisplay = self->_sendersToDisplay;
  self->_sendersToDisplay = v39;

  pinnedSender = self->_pinnedSender;
  self->_pinnedSender = v43;

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_generateSendersWithDisplayPolicyForAttributions:(id)attributions maxSendersToDisplay:(unint64_t)display
{
  v54 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  v40 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timestamp" ascending:0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v42 = attributionsCopy;
  v7 = [attributionsCopy sortedArrayUsingDescriptors:v6];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v11)
  {

    v39 = 0;
    sender2 = 0;
    goto LABEL_30;
  }

  v12 = v11;
  sender3 = 0;
  sender2 = 0;
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
      if (sender2 && sender3)
      {
        v10 = obj;

LABEL_23:
        if ((SLPersonArrayContainsPerson(array, sender2) & 1) == 0)
        {
          [array addObject:sender2];
          [array2 addObject:sender2];
        }

        goto LABEL_25;
      }

      sender = [*(*(&v48 + 1) + 8 * i) sender];

      if (sender)
      {
        if (!sender2)
        {
          if (![v17 isPinned])
          {
            sender2 = 0;
            if (sender3)
            {
              continue;
            }

            goto LABEL_13;
          }

          sender2 = [v17 sender];
        }

        if (sender3)
        {
          continue;
        }

LABEL_13:
        if ([v17 isFromMe])
        {
          sender3 = [v17 sender];
        }

        else
        {
          sender3 = 0;
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

  if (sender2)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (sender3)
  {
    v39 = sender3;
    if ((SLPersonArrayContainsPerson(array, sender3) & 1) == 0)
    {
      [array addObject:sender3];
      [array2 addObject:sender3];
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_30:
  v38 = sender2;
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
        sender4 = [v24 sender];
        if (sender4)
        {
          v26 = sender4;
          isFromMe = [v24 isFromMe];

          if ((isFromMe & 1) == 0)
          {
            sender5 = [v24 sender];
            v29 = SLPersonArrayContainsPerson(array, sender5);

            if ((v29 & 1) == 0)
            {
              sender6 = [v24 sender];
              [array addObject:sender6];

              if ([array2 count] < display)
              {
                sender7 = [v24 sender];
                [array2 addObject:sender7];
              }
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v21);
  }

  self->_allSendersNumber = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(array, "count")}];
  v32 = [array2 copy];
  sendersToDisplay = self->_sendersToDisplay;
  self->_sendersToDisplay = v32;

  pinnedSender = self->_pinnedSender;
  self->_pinnedSender = v38;
  v35 = v38;

  meSender = self->_meSender;
  self->_meSender = v39;

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_personOtherThanPerson:(id)person inArray:(id)array
{
  v18 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((SLPersonIsEqualToPerson(v10, personCopy) & 1) == 0)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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