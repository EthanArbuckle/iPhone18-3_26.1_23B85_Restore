@interface PCDisplayContext
- (BOOL)isEqual:(id)a3;
- (PCDisplayContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCDisplayContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 legacyAttachmentURL];
    legacyAttachmentURL = self->_legacyAttachmentURL;
    v8 = v6;
    v9 = legacyAttachmentURL;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) == (v9 == 0))
      {
        goto LABEL_22;
      }

      v11 = [(NSURL *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    v13 = [v5 legacyBodyText];
    legacyBodyText = self->_legacyBodyText;
    v8 = v13;
    v15 = legacyBodyText;
    v10 = v15;
    if (v8 == v15)
    {
    }

    else
    {
      if ((v8 != 0) == (v15 == 0))
      {
        goto LABEL_22;
      }

      v16 = [(NSURL *)v8 isEqual:v15];

      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v17 = [v5 localizedPrimaryAltText];
    localizedPrimaryAltText = self->_localizedPrimaryAltText;
    v8 = v17;
    v19 = localizedPrimaryAltText;
    v10 = v19;
    if (v8 == v19)
    {
    }

    else
    {
      if ((v8 != 0) == (v19 == 0))
      {
        goto LABEL_22;
      }

      v20 = [(NSURL *)v8 isEqual:v19];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v21 = [v5 localizedSecondaryAltText];
    localizedSecondaryAltText = self->_localizedSecondaryAltText;
    v8 = v21;
    v23 = localizedSecondaryAltText;
    v10 = v23;
    if (v8 == v23)
    {

LABEL_27:
      if ([v5 interactionBehavior] == self->_interactionBehavior)
      {
        v12 = [v5 interactionDirection] == self->_interactionDirection;
        goto LABEL_24;
      }

LABEL_23:
      v12 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ((v8 != 0) != (v23 == 0))
    {
      v24 = [(NSURL *)v8 isEqual:v23];

      if (!v24)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_22:

    goto LABEL_23;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PCDisplayContext);
  [(PCDisplayContext *)v4 setInteractionBehavior:self->_interactionBehavior];
  [(PCDisplayContext *)v4 setInteractionDirection:self->_interactionDirection];
  [(PCDisplayContext *)v4 setLegacyAttachmentURL:self->_legacyAttachmentURL];
  [(PCDisplayContext *)v4 setLegacyBodyText:self->_legacyBodyText];
  [(PCDisplayContext *)v4 setLocalizedPrimaryAltText:self->_localizedPrimaryAltText];
  [(PCDisplayContext *)v4 setLocalizedSecondaryAltText:self->_localizedSecondaryAltText];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  interactionBehavior = self->_interactionBehavior;
  v11 = v4;
  if (interactionBehavior)
  {
    [v4 encodeInteger:interactionBehavior forKey:@"be"];
    v4 = v11;
  }

  interactionDirection = self->_interactionDirection;
  if (interactionDirection)
  {
    [v11 encodeInteger:interactionDirection forKey:@"dir"];
    v4 = v11;
  }

  legacyAttachmentURL = self->_legacyAttachmentURL;
  if (legacyAttachmentURL)
  {
    [v11 encodeObject:legacyAttachmentURL forKey:@"lu"];
    v4 = v11;
  }

  legacyBodyText = self->_legacyBodyText;
  if (legacyBodyText)
  {
    [v11 encodeObject:legacyBodyText forKey:@"lb"];
    v4 = v11;
  }

  localizedPrimaryAltText = self->_localizedPrimaryAltText;
  if (localizedPrimaryAltText)
  {
    [v11 encodeObject:localizedPrimaryAltText forKey:@"prime"];
    v4 = v11;
  }

  localizedSecondaryAltText = self->_localizedSecondaryAltText;
  if (localizedSecondaryAltText)
  {
    [v11 encodeObject:localizedSecondaryAltText forKey:@"sec"];
    v4 = v11;
  }
}

- (PCDisplayContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PCDisplayContext;
  v5 = [(PCDisplayContext *)&v9 init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"be"])
    {
      v5->_interactionBehavior = [v6 decodeIntegerForKey:@"be"];
    }

    v7 = v6;
    if ([v7 containsValueForKey:@"dir"])
    {
      v5->_interactionDirection = [v7 decodeIntegerForKey:@"dir"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end