@interface SFNotificationInfo
- (SFNotificationInfo)initWithCoder:(id)coder;
- (SFNotificationInfo)mediumBubbleVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFNotificationInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    attachmentURL = [(SFNotificationInfo *)self attachmentURL];
    v6 = [attachmentURL copy];
    [v4 setAttachmentURL:v6];

    body = [(SFNotificationInfo *)self body];
    v8 = [body copy];
    [v4 setBody:v8];

    [v4 setDeviceClass:{-[SFNotificationInfo deviceClass](self, "deviceClass")}];
    error = [(SFNotificationInfo *)self error];
    v10 = [error copy];
    [v4 setError:v10];

    header = [(SFNotificationInfo *)self header];
    v12 = [header copy];
    [v4 setHeader:v12];

    [v4 setInteractionBehavior:{-[SFNotificationInfo interactionBehavior](self, "interactionBehavior")}];
    [v4 setInteractionDirection:{-[SFNotificationInfo interactionDirection](self, "interactionDirection")}];
    [v4 setNotificationType:{-[SFNotificationInfo notificationType](self, "notificationType")}];
    title = [(SFNotificationInfo *)self title];
    v14 = [title copy];
    [v4 setTitle:v14];

    [v4 setHomePodType:{-[SFNotificationInfo homePodType](self, "homePodType")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attachmentURL = self->_attachmentURL;
  v12 = coderCopy;
  if (attachmentURL)
  {
    [coderCopy encodeObject:attachmentURL forKey:@"url"];
    coderCopy = v12;
  }

  body = self->_body;
  if (body)
  {
    [v12 encodeObject:body forKey:@"bod"];
    coderCopy = v12;
  }

  if (self->_deviceClass)
  {
    [v12 encodeInteger:? forKey:?];
    coderCopy = v12;
  }

  error = self->_error;
  if (error)
  {
    [v12 encodeObject:error forKey:@"er"];
    coderCopy = v12;
  }

  header = self->_header;
  if (header)
  {
    [v12 encodeObject:header forKey:@"hea"];
    coderCopy = v12;
  }

  if (self->_interactionBehavior)
  {
    [v12 encodeInteger:? forKey:?];
    coderCopy = v12;
  }

  if (self->_interactionDirection)
  {
    [v12 encodeInteger:? forKey:?];
    coderCopy = v12;
  }

  notificationType = self->_notificationType;
  if (notificationType)
  {
    [v12 encodeInt64:notificationType forKey:@"nt"];
    coderCopy = v12;
  }

  title = self->_title;
  if (title)
  {
    [v12 encodeObject:title forKey:@"tit"];
    coderCopy = v12;
  }

  homePodType = self->_homePodType;
  if (homePodType)
  {
    [v12 encodeInteger:homePodType forKey:@"homePodType"];
    coderCopy = v12;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"SFNotificationInfo"];
  v4 = v3;
  if (self->_body)
  {
    [v3 appendFormat:@", b=%@", self->_body];
  }

  if (self->_header)
  {
    [v4 appendFormat:@", h=%@", self->_header];
  }

  if (self->_title)
  {
    [v4 appendFormat:@", t=%@", self->_title];
  }

  deviceClass = self->_deviceClass;
  if (deviceClass > 8)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E788EBD0[deviceClass];
  }

  [v4 appendFormat:@", d=%s", v6];
  if (self->_attachmentURL)
  {
    [v4 appendFormat:@", u=%@", self->_attachmentURL];
  }

  interactionDirection = self->_interactionDirection;
  v8 = @"?";
  v9 = @"Push";
  if (interactionDirection != 2)
  {
    v9 = @"?";
  }

  if (interactionDirection == 1)
  {
    v10 = @"Pull";
  }

  else
  {
    v10 = v9;
  }

  [v4 appendFormat:@", %@", v10];
  if (self->_interactionBehavior - 1 <= 2)
  {
    v8 = off_1E788EC18[(self->_interactionBehavior - 1)];
  }

  [v4 appendFormat:@", %@", v8];
  if (self->_error)
  {
    [v4 appendFormat:@", e=%@", self->_error];
  }

  if (self->_homePodType)
  {
    [v4 appendFormat:@", e=%lx", self->_homePodType];
  }

  return v4;
}

- (SFNotificationInfo)mediumBubbleVersion
{
  v3 = self->_cachedMediumBubbleVersion;
  if (!v3)
  {
    if (SFDeviceClassCodeGet_sOnce != -1)
    {
      [SFNotificationInfo mediumBubbleVersion];
    }

    v4 = SFDeviceClassCodeGet_sResult;
    if (SFDeviceClassCodeGet_sResult == 1)
    {
      v5 = @"HOMEPOD_HANDOFF_MEDIUM_BODY_IPHONE";
    }

    else
    {
      if (SFDeviceClassCodeGet_sResult != 2)
      {
        v3 = 0;
        v6 = &stru_1F1D30528;
LABEL_18:

        goto LABEL_19;
      }

      v5 = @"HOMEPOD_HANDOFF_MEDIUM_BODY_IPOD";
    }

    v6 = SFLocalizedStringForKey(v5);
    interactionDirection = self->_interactionDirection;
    if (interactionDirection == 2)
    {
      v8 = @"HOMEPOD_HANDOFF_SUBTITLE_TRANSFER";
    }

    else
    {
      if (interactionDirection != 1)
      {
        v3 = 0;
        v9 = &stru_1F1D30528;
        goto LABEL_17;
      }

      if (v4 == 1)
      {
        v8 = @"HOMEPOD_HANDOFF_SUBTITLE_TRANSFER_IPHONE";
      }

      else
      {
        v8 = @"HOMEPOD_HANDOFF_SUBTITLE_TRANSFER_IPOD";
      }
    }

    v9 = SFLocalizedStringForKey(v8);
    v10 = objc_alloc_init(SFNotificationInfo);
    [(SFNotificationInfo *)v10 setBody:v6];
    [(SFNotificationInfo *)v10 setTitle:v9];
    v11 = SFLocalizedStringForKey(@"HOMEPOD_HANDOFF_HEADER_DEFAULT");
    [(SFNotificationInfo *)v10 setHeader:v11];

    [(SFNotificationInfo *)v10 setInteractionBehavior:self->_interactionBehavior];
    [(SFNotificationInfo *)v10 setInteractionDirection:self->_interactionDirection];
    [(SFNotificationInfo *)v10 setNotificationType:self->_notificationType];
    [(SFNotificationInfo *)v10 setHomePodType:self->_homePodType];
    cachedMediumBubbleVersion = self->_cachedMediumBubbleVersion;
    self->_cachedMediumBubbleVersion = v10;
    v13 = v10;

    v3 = self->_cachedMediumBubbleVersion;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:

  return v3;
}

- (SFNotificationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFNotificationInfo;
  v6 = [(SFNotificationInfo *)&v13 init];
  if (v6)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = coderCopy;
    OUTLINED_FUNCTION_1_14();
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = 0;
    OUTLINED_FUNCTION_0_15();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_deviceClass = v14;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v8 = v3;
    OUTLINED_FUNCTION_1_14();
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = 0;
    OUTLINED_FUNCTION_0_15();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_interactionBehavior = v14;
    }

    v14 = 0;
    OUTLINED_FUNCTION_0_15();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_interactionDirection = v14;
    }

    v14 = 0;
    OUTLINED_FUNCTION_0_15();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_notificationType = v14;
    }

    v9 = v3;
    OUTLINED_FUNCTION_1_14();
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v3;
    if ([v10 containsValueForKey:@"homePodType"])
    {
      v6->_homePodType = [v10 decodeIntegerForKey:@"homePodType"];
    }

    v11 = v6;
  }

  return v6;
}

@end