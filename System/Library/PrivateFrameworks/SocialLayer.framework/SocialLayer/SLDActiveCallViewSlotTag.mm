@interface SLDActiveCallViewSlotTag
- (BOOL)isCallActive;
- (BOOL)isEqual:(id)equal;
- (SLDActiveCallViewSlotTag)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLDActiveCallViewSlotTag

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  maxWidthNumber = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  isCallActive = [(SLDActiveCallViewSlotTag *)self isCallActive];
  v6 = @"NO";
  if (isCallActive)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"<SLDActiveCallViewSlotTag: %p> maxWidth:[%@], callActive: [%@]", self, maxWidthNumber, v6];

  return v7;
}

- (BOOL)isCallActive
{
  callActiveNumber = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  bOOLValue = [callActiveNumber BOOLValue];

  return bOOLValue;
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

- (SLDActiveCallViewSlotTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SLDActiveCallViewSlotTag;
  v5 = [(SLDActiveCallViewSlotTag *)&v16 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    maxWidthNumber = v5->_maxWidthNumber;
    v5->_maxWidthNumber = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callActive"];
    callActiveNumber = v5->_callActiveNumber;
    v5->_callActiveNumber = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeCallGroupPhotoData"];
    activeCallGroupPhotoData = v5->_activeCallGroupPhotoData;
    v5->_activeCallGroupPhotoData = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeCallDisplayName"];
    activeCallDisplayName = v5->_activeCallDisplayName;
    v5->_activeCallDisplayName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SLDActiveCallViewSlotTag *)self maxWidth];
  [coderCopy encodeDouble:@"maxWidth" forKey:?];
  maxWidthNumber = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  [coderCopy encodeObject:maxWidthNumber forKey:@"maxWidthNumber"];

  [coderCopy encodeBool:-[SLDActiveCallViewSlotTag isCallActive](self forKey:{"isCallActive"), @"callActive"}];
  activeCallGroupPhotoData = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  [coderCopy encodeObject:activeCallGroupPhotoData forKey:@"activeCallGroupPhotoData"];

  activeCallDisplayName = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  [coderCopy encodeObject:activeCallDisplayName forKey:@"activeCallDisplayName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDActiveCallViewSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  maxWidthNumber = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  [v4 setMaxWidthNumber:maxWidthNumber];

  callActiveNumber = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  [v4 setCallActiveNumber:callActiveNumber];

  activeCallGroupPhotoData = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  [v4 setActiveCallGroupPhotoData:activeCallGroupPhotoData];

  activeCallDisplayName = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  [v4 setActiveCallDisplayName:activeCallDisplayName];

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
LABEL_40:

      goto LABEL_41;
    }

    [(SLDActiveCallViewSlotTag *)v6 maxWidth];
    v9 = v8;
    [(SLDActiveCallViewSlotTag *)self maxWidth];
    if (!SL_CGFloatApproximatelyEqualToFloat(v9, v10))
    {
      goto LABEL_39;
    }

    maxWidthNumber = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
    if (maxWidthNumber || ([(SLDActiveCallViewSlotTag *)v7 maxWidthNumber], (activeCallGroupPhotoData = objc_claimAutoreleasedReturnValue()) != 0))
    {
      maxWidthNumber2 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
      if (!maxWidthNumber2)
      {
        goto LABEL_35;
      }

      v13 = maxWidthNumber2;
      maxWidthNumber3 = [(SLDActiveCallViewSlotTag *)v7 maxWidthNumber];
      if (!maxWidthNumber3)
      {
        goto LABEL_34;
      }

      v15 = maxWidthNumber3;
      maxWidthNumber4 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
      maxWidthNumber5 = [(SLDActiveCallViewSlotTag *)v7 maxWidthNumber];
      v18 = [maxWidthNumber4 isEqualToNumber:maxWidthNumber5];

      if (maxWidthNumber)
      {

        if (!v18)
        {
          goto LABEL_39;
        }
      }

      else
      {

        if ((v18 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    maxWidthNumber = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
    if (maxWidthNumber || ([(SLDActiveCallViewSlotTag *)v7 callActiveNumber], (activeCallGroupPhotoData = objc_claimAutoreleasedReturnValue()) != 0))
    {
      callActiveNumber = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
      if (!callActiveNumber)
      {
        goto LABEL_35;
      }

      v13 = callActiveNumber;
      callActiveNumber2 = [(SLDActiveCallViewSlotTag *)v7 callActiveNumber];
      if (!callActiveNumber2)
      {
        goto LABEL_34;
      }

      v22 = callActiveNumber2;
      callActiveNumber3 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
      callActiveNumber4 = [(SLDActiveCallViewSlotTag *)v7 callActiveNumber];
      v25 = [callActiveNumber3 isEqualToNumber:callActiveNumber4];

      if (maxWidthNumber)
      {

        if (!v25)
        {
          goto LABEL_39;
        }
      }

      else
      {

        if ((v25 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    maxWidthNumber = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
    if (!maxWidthNumber)
    {
      activeCallGroupPhotoData = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
      if (!activeCallGroupPhotoData)
      {
LABEL_28:
        maxWidthNumber = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
        if (!maxWidthNumber)
        {
          activeCallGroupPhotoData = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
          if (!activeCallGroupPhotoData)
          {
            v19 = 1;
LABEL_46:

            goto LABEL_37;
          }
        }

        activeCallDisplayName = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
        if (activeCallDisplayName)
        {
          v33 = activeCallDisplayName;
          activeCallDisplayName2 = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
          if (activeCallDisplayName2)
          {
            v35 = activeCallDisplayName2;
            activeCallDisplayName3 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
            activeCallDisplayName4 = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
            v19 = [activeCallDisplayName3 isEqualToString:activeCallDisplayName4];

            if (!maxWidthNumber)
            {
              goto LABEL_46;
            }

LABEL_37:

            goto LABEL_40;
          }
        }

        v19 = 0;
        if (!maxWidthNumber)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }
    }

    activeCallGroupPhotoData2 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
    if (!activeCallGroupPhotoData2)
    {
LABEL_35:
      v19 = 0;
      if (!maxWidthNumber)
      {
        maxWidthNumber = activeCallGroupPhotoData;
      }

      goto LABEL_37;
    }

    v13 = activeCallGroupPhotoData2;
    activeCallGroupPhotoData3 = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
    if (activeCallGroupPhotoData3)
    {
      v28 = activeCallGroupPhotoData3;
      activeCallGroupPhotoData4 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
      activeCallGroupPhotoData5 = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
      v31 = [activeCallGroupPhotoData4 isEqualToData:activeCallGroupPhotoData5];

      if (maxWidthNumber)
      {

        if (v31)
        {
          goto LABEL_28;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_28;
        }
      }

LABEL_39:
      v19 = 0;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v19 = 0;
LABEL_41:

  return v19;
}

- (unint64_t)hash
{
  maxWidthNumber = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  v4 = [maxWidthNumber hash];
  callActiveNumber = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  v6 = [callActiveNumber hash] ^ v4;
  activeCallGroupPhotoData = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  v8 = [activeCallGroupPhotoData hash];
  activeCallDisplayName = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  v10 = v8 ^ [activeCallDisplayName hash];

  return v6 ^ v10;
}

@end