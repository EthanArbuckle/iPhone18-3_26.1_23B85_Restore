@interface SLDHighlightDisambiguationPillSlotTag
+ (id)tagForHighlightAttribution:(id)a3 maxWidth:(double)a4 variant:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (SLDHighlightDisambiguationPillSlotTag)initWithCoder:(id)a3;
- (SLDHighlightDisambiguationPillSlotTag)initWithHighlightAttribution:(id)a3 maxWidth:(double)a4 variant:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLDHighlightDisambiguationPillSlotTag

+ (id)tagForHighlightAttribution:(id)a3 maxWidth:(double)a4 variant:(unint64_t)a5
{
  v7 = a3;
  v8 = [[SLDHighlightDisambiguationPillSlotTag alloc] initWithHighlightAttribution:v7 maxWidth:a5 variant:a4];

  return v8;
}

- (SLDHighlightDisambiguationPillSlotTag)initWithHighlightAttribution:(id)a3 maxWidth:(double)a4 variant:(unint64_t)a5
{
  v8 = a3;
  v27.receiver = self;
  v27.super_class = SLDHighlightDisambiguationPillSlotTag;
  v9 = [(SLDHighlightDisambiguationPillSlotTag *)&v27 init];
  v11 = v9;
  if (v9)
  {
    v9->_maxWidth = a4;
    *&v10 = a4;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    widthNumber = v11->_widthNumber;
    v11->_widthNumber = v12;

    v11->_variant = a5;
    v14 = [v8 sender];
    sender = v11->_sender;
    v11->_sender = v14;

    v11->_fromMe = [v8 isFromMe];
    v16 = [v8 isGroupConversation];
    v11->_isGroupConversation = v16;
    if (!v16)
    {
      v21 = SLDaemonLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [SLDHighlightDisambiguationPillSlotTag initWithHighlightAttribution:v11 maxWidth:v8 variant:v21];
      }

      goto LABEL_10;
    }

    v17 = [v8 groupDisplayName];
    v18 = [v17 length];

    if (v18)
    {
      v19 = [v8 groupDisplayName];
      v20 = 40;
    }

    else
    {
      v22 = [v8 relatedPersons];
      v23 = [v22 count];

      if (v23 < 3)
      {
        v21 = SLDaemonLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SLDHighlightDisambiguationPillSlotTag initWithHighlightAttribution:v11 maxWidth:v8 variant:v21];
        }

        goto LABEL_10;
      }

      v24 = [v8 relatedPersons];
      v25 = [v24 count] - 2;

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v20 = 48;
    }

    v21 = *(&v11->super.super.super.isa + v20);
    *(&v11->super.super.super.isa + v20) = v19;
LABEL_10:
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDHighlightDisambiguationPillSlotTag: %p> maxWidth:[%@]", self, v4];

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

- (SLDHighlightDisambiguationPillSlotTag)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SLDHighlightDisambiguationPillSlotTag;
  v5 = [(SLDHighlightDisambiguationPillSlotTag *)&v16 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;

    v5->_isGroupConversation = [v4 decodeBoolForKey:@"isGroup"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupDisplayName = v5->_groupDisplayName;
    v5->_groupDisplayName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientCount"];
    otherRecipientCount = v5->_otherRecipientCount;
    v5->_otherRecipientCount = v13;

    v5->_variant = [v4 decodeIntegerForKey:@"variant"];
    v5->_pinned = [v4 decodeBoolForKey:@"pinned"];
    v5->_fromMe = [v4 decodeBoolForKey:@"fromMe"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
  [v8 encodeDouble:@"maxWidth" forKey:?];
  v4 = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  [v8 encodeObject:v4 forKey:@"maxWidthNumber"];

  v5 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  [v8 encodeObject:v5 forKey:@"sender"];

  [v8 encodeBool:-[SLDHighlightDisambiguationPillSlotTag isGroupConversation](self forKey:{"isGroupConversation"), @"isGroup"}];
  v6 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  [v8 encodeObject:v6 forKey:@"groupName"];

  v7 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  [v8 encodeObject:v7 forKey:@"recipientCount"];

  [v8 encodeInteger:-[SLDHighlightDisambiguationPillSlotTag variant](self forKey:{"variant"), @"variant"}];
  [v8 encodeBool:-[SLDHighlightDisambiguationPillSlotTag isPinned](self forKey:{"isPinned"), @"pinned"}];
  [v8 encodeBool:-[SLDHighlightDisambiguationPillSlotTag isFromMe](self forKey:{"isFromMe"), @"fromMe"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  v5 = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  [v4 setWidthNumber:v5];

  v6 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  [v4 setSender:v6];

  [v4 setIsGroupConversation:{-[SLDHighlightDisambiguationPillSlotTag isGroupConversation](self, "isGroupConversation")}];
  v7 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  [v4 setGroupDisplayName:v7];

  v8 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  [v4 setOtherRecipientCount:v8];

  [v4 setVariant:{-[SLDHighlightDisambiguationPillSlotTag variant](self, "variant")}];
  [v4 setPinned:{-[SLDHighlightDisambiguationPillSlotTag isPinned](self, "isPinned")}];
  [v4 setFromMe:{-[SLDHighlightDisambiguationPillSlotTag isFromMe](self, "isFromMe")}];
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
      v15 = 1;
LABEL_28:

      goto LABEL_29;
    }

    [(SLDHighlightDisambiguationPillSlotTag *)v6 maxWidth];
    v9 = v8;
    [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
    if (SL_CGFloatApproximatelyEqualToFloat(v9, v10))
    {
      v11 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
      if (v11 || ([(SLDHighlightDisambiguationPillSlotTag *)v7 sender], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
        v13 = [(SLDHighlightDisambiguationPillSlotTag *)v7 sender];
        v14 = [v12 isEqual:v13];

        if (v11)
        {

          if (!v14)
          {
            goto LABEL_27;
          }
        }

        else
        {

          if ((v14 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      v16 = [(SLDHighlightDisambiguationPillSlotTag *)self isGroupConversation];
      if (v16 == [(SLDHighlightDisambiguationPillSlotTag *)v7 isGroupConversation])
      {
        v17 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
        if (v17 || ([(SLDHighlightDisambiguationPillSlotTag *)v7 groupDisplayName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v18 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
          v19 = [(SLDHighlightDisambiguationPillSlotTag *)v7 groupDisplayName];
          v20 = [v18 isEqualToString:v19];

          if (v17)
          {

            if (!v20)
            {
              goto LABEL_27;
            }
          }

          else
          {

            if ((v20 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        v21 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
        if (!v21)
        {
          v3 = [(SLDHighlightDisambiguationPillSlotTag *)v7 otherRecipientCount];
          if (!v3)
          {
            goto LABEL_25;
          }
        }

        v22 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
        v23 = [(SLDHighlightDisambiguationPillSlotTag *)v7 otherRecipientCount];
        v24 = [v22 isEqualToNumber:v23];

        if (v21)
        {

          if (!v24)
          {
            goto LABEL_27;
          }

LABEL_25:
          v25 = [(SLDHighlightDisambiguationPillSlotTag *)self isPinned];
          if (v25 == [(SLDHighlightDisambiguationPillSlotTag *)v7 isPinned])
          {
            v26 = [(SLDHighlightDisambiguationPillSlotTag *)self isFromMe];
            if (v26 == [(SLDHighlightDisambiguationPillSlotTag *)v7 isFromMe])
            {
              v28 = [(SLDHighlightDisambiguationPillSlotTag *)self variant];
              v15 = v28 == [(SLDHighlightDisambiguationPillSlotTag *)v7 variant];
              goto LABEL_28;
            }
          }

          goto LABEL_27;
        }

        if (v24)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  v15 = 0;
LABEL_29:

  return v15;
}

- (unint64_t)hash
{
  v15 = [(SLDHighlightDisambiguationPillSlotTag *)self isPinned];
  v14 = [(SLDHighlightDisambiguationPillSlotTag *)self isFromMe];
  v3 = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  v4 = [v3 hash];
  v5 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  v6 = [v5 hash];
  v7 = [(SLDHighlightDisambiguationPillSlotTag *)self isGroupConversation];
  v8 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  v9 = [v8 hash];
  v10 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  v11 = [v10 hash];
  v12 = v9 ^ v11 ^ [(SLDHighlightDisambiguationPillSlotTag *)self variant];

  return v4 ^ v6 ^ v7 ^ v14 ^ v15 ^ v12;
}

- (void)initWithHighlightAttribution:(uint64_t)a1 maxWidth:(void *)a2 variant:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 uniqueIdentifier];
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(&dword_231772000, a3, OS_LOG_TYPE_DEBUG, "[SLDHighlightDisambiguationPillSlotTag: %p] SLAttribuition is not set as a group conversation: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithHighlightAttribution:(uint64_t)a1 maxWidth:(void *)a2 variant:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 uniqueIdentifier];
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[SLDHighlightDisambiguationPillSlotTag: %p] Initialized with an attribution (%@) for a group conversation without a display name, and with less than 3 related persons!", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end