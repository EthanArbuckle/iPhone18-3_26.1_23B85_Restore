@interface SLDActiveCallViewSlotTag
- (BOOL)isCallActive;
- (BOOL)isEqual:(id)a3;
- (SLDActiveCallViewSlotTag)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLDActiveCallViewSlotTag

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  v5 = [(SLDActiveCallViewSlotTag *)self isCallActive];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"<SLDActiveCallViewSlotTag: %p> maxWidth:[%@], callActive: [%@]", self, v4, v6];

  return v7;
}

- (BOOL)isCallActive
{
  v2 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  v3 = [v2 BOOLValue];

  return v3;
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

- (SLDActiveCallViewSlotTag)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SLDActiveCallViewSlotTag;
  v5 = [(SLDActiveCallViewSlotTag *)&v16 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    maxWidthNumber = v5->_maxWidthNumber;
    v5->_maxWidthNumber = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callActive"];
    callActiveNumber = v5->_callActiveNumber;
    v5->_callActiveNumber = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeCallGroupPhotoData"];
    activeCallGroupPhotoData = v5->_activeCallGroupPhotoData;
    v5->_activeCallGroupPhotoData = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeCallDisplayName"];
    activeCallDisplayName = v5->_activeCallDisplayName;
    v5->_activeCallDisplayName = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SLDActiveCallViewSlotTag *)self maxWidth];
  [v4 encodeDouble:@"maxWidth" forKey:?];
  v5 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  [v4 encodeObject:v5 forKey:@"maxWidthNumber"];

  [v4 encodeBool:-[SLDActiveCallViewSlotTag isCallActive](self forKey:{"isCallActive"), @"callActive"}];
  v6 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  [v4 encodeObject:v6 forKey:@"activeCallGroupPhotoData"];

  v7 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  [v4 encodeObject:v7 forKey:@"activeCallDisplayName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDActiveCallViewSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  v5 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  [v4 setMaxWidthNumber:v5];

  v6 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  [v4 setCallActiveNumber:v6];

  v7 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  [v4 setActiveCallGroupPhotoData:v7];

  v8 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  [v4 setActiveCallDisplayName:v8];

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

    v11 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
    if (v11 || ([(SLDActiveCallViewSlotTag *)v7 maxWidthNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
      if (!v12)
      {
        goto LABEL_35;
      }

      v13 = v12;
      v14 = [(SLDActiveCallViewSlotTag *)v7 maxWidthNumber];
      if (!v14)
      {
        goto LABEL_34;
      }

      v15 = v14;
      v16 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
      v17 = [(SLDActiveCallViewSlotTag *)v7 maxWidthNumber];
      v18 = [v16 isEqualToNumber:v17];

      if (v11)
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

    v11 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
    if (v11 || ([(SLDActiveCallViewSlotTag *)v7 callActiveNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
      if (!v20)
      {
        goto LABEL_35;
      }

      v13 = v20;
      v21 = [(SLDActiveCallViewSlotTag *)v7 callActiveNumber];
      if (!v21)
      {
        goto LABEL_34;
      }

      v22 = v21;
      v23 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
      v24 = [(SLDActiveCallViewSlotTag *)v7 callActiveNumber];
      v25 = [v23 isEqualToNumber:v24];

      if (v11)
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

    v11 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
    if (!v11)
    {
      v3 = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
      if (!v3)
      {
LABEL_28:
        v11 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
        if (!v11)
        {
          v3 = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
          if (!v3)
          {
            v19 = 1;
LABEL_46:

            goto LABEL_37;
          }
        }

        v32 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
        if (v32)
        {
          v33 = v32;
          v34 = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
          if (v34)
          {
            v35 = v34;
            v36 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
            v37 = [(SLDActiveCallViewSlotTag *)v7 activeCallDisplayName];
            v19 = [v36 isEqualToString:v37];

            if (!v11)
            {
              goto LABEL_46;
            }

LABEL_37:

            goto LABEL_40;
          }
        }

        v19 = 0;
        if (!v11)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }
    }

    v26 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
    if (!v26)
    {
LABEL_35:
      v19 = 0;
      if (!v11)
      {
        v11 = v3;
      }

      goto LABEL_37;
    }

    v13 = v26;
    v27 = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
    if (v27)
    {
      v28 = v27;
      v29 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
      v30 = [(SLDActiveCallViewSlotTag *)v7 activeCallGroupPhotoData];
      v31 = [v29 isEqualToData:v30];

      if (v11)
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
  v3 = [(SLDActiveCallViewSlotTag *)self maxWidthNumber];
  v4 = [v3 hash];
  v5 = [(SLDActiveCallViewSlotTag *)self callActiveNumber];
  v6 = [v5 hash] ^ v4;
  v7 = [(SLDActiveCallViewSlotTag *)self activeCallGroupPhotoData];
  v8 = [v7 hash];
  v9 = [(SLDActiveCallViewSlotTag *)self activeCallDisplayName];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end