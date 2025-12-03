@interface SLDHighlightDisambiguationPillSlotTag
+ (id)tagForHighlightAttribution:(id)attribution maxWidth:(double)width variant:(unint64_t)variant;
- (BOOL)isEqual:(id)equal;
- (SLDHighlightDisambiguationPillSlotTag)initWithCoder:(id)coder;
- (SLDHighlightDisambiguationPillSlotTag)initWithHighlightAttribution:(id)attribution maxWidth:(double)width variant:(unint64_t)variant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLDHighlightDisambiguationPillSlotTag

+ (id)tagForHighlightAttribution:(id)attribution maxWidth:(double)width variant:(unint64_t)variant
{
  attributionCopy = attribution;
  v8 = [[SLDHighlightDisambiguationPillSlotTag alloc] initWithHighlightAttribution:attributionCopy maxWidth:variant variant:width];

  return v8;
}

- (SLDHighlightDisambiguationPillSlotTag)initWithHighlightAttribution:(id)attribution maxWidth:(double)width variant:(unint64_t)variant
{
  attributionCopy = attribution;
  v27.receiver = self;
  v27.super_class = SLDHighlightDisambiguationPillSlotTag;
  v9 = [(SLDHighlightDisambiguationPillSlotTag *)&v27 init];
  v11 = v9;
  if (v9)
  {
    v9->_maxWidth = width;
    *&v10 = width;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    widthNumber = v11->_widthNumber;
    v11->_widthNumber = v12;

    v11->_variant = variant;
    sender = [attributionCopy sender];
    sender = v11->_sender;
    v11->_sender = sender;

    v11->_fromMe = [attributionCopy isFromMe];
    isGroupConversation = [attributionCopy isGroupConversation];
    v11->_isGroupConversation = isGroupConversation;
    if (!isGroupConversation)
    {
      v21 = SLDaemonLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [SLDHighlightDisambiguationPillSlotTag initWithHighlightAttribution:v11 maxWidth:attributionCopy variant:v21];
      }

      goto LABEL_10;
    }

    groupDisplayName = [attributionCopy groupDisplayName];
    v18 = [groupDisplayName length];

    if (v18)
    {
      groupDisplayName2 = [attributionCopy groupDisplayName];
      v20 = 40;
    }

    else
    {
      relatedPersons = [attributionCopy relatedPersons];
      v23 = [relatedPersons count];

      if (v23 < 3)
      {
        v21 = SLDaemonLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SLDHighlightDisambiguationPillSlotTag initWithHighlightAttribution:v11 maxWidth:attributionCopy variant:v21];
        }

        goto LABEL_10;
      }

      relatedPersons2 = [attributionCopy relatedPersons];
      v25 = [relatedPersons2 count] - 2;

      groupDisplayName2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v20 = 48;
    }

    v21 = *(&v11->super.super.super.isa + v20);
    *(&v11->super.super.super.isa + v20) = groupDisplayName2;
LABEL_10:
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  widthNumber = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDHighlightDisambiguationPillSlotTag: %p> maxWidth:[%@]", self, widthNumber];

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

- (SLDHighlightDisambiguationPillSlotTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SLDHighlightDisambiguationPillSlotTag;
  v5 = [(SLDHighlightDisambiguationPillSlotTag *)&v16 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v9;

    v5->_isGroupConversation = [coderCopy decodeBoolForKey:@"isGroup"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    groupDisplayName = v5->_groupDisplayName;
    v5->_groupDisplayName = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientCount"];
    otherRecipientCount = v5->_otherRecipientCount;
    v5->_otherRecipientCount = v13;

    v5->_variant = [coderCopy decodeIntegerForKey:@"variant"];
    v5->_pinned = [coderCopy decodeBoolForKey:@"pinned"];
    v5->_fromMe = [coderCopy decodeBoolForKey:@"fromMe"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
  [coderCopy encodeDouble:@"maxWidth" forKey:?];
  widthNumber = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  [coderCopy encodeObject:widthNumber forKey:@"maxWidthNumber"];

  sender = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  [coderCopy encodeBool:-[SLDHighlightDisambiguationPillSlotTag isGroupConversation](self forKey:{"isGroupConversation"), @"isGroup"}];
  groupDisplayName = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  [coderCopy encodeObject:groupDisplayName forKey:@"groupName"];

  otherRecipientCount = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  [coderCopy encodeObject:otherRecipientCount forKey:@"recipientCount"];

  [coderCopy encodeInteger:-[SLDHighlightDisambiguationPillSlotTag variant](self forKey:{"variant"), @"variant"}];
  [coderCopy encodeBool:-[SLDHighlightDisambiguationPillSlotTag isPinned](self forKey:{"isPinned"), @"pinned"}];
  [coderCopy encodeBool:-[SLDHighlightDisambiguationPillSlotTag isFromMe](self forKey:{"isFromMe"), @"fromMe"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  widthNumber = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  [v4 setWidthNumber:widthNumber];

  sender = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  [v4 setSender:sender];

  [v4 setIsGroupConversation:{-[SLDHighlightDisambiguationPillSlotTag isGroupConversation](self, "isGroupConversation")}];
  groupDisplayName = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  [v4 setGroupDisplayName:groupDisplayName];

  otherRecipientCount = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  [v4 setOtherRecipientCount:otherRecipientCount];

  [v4 setVariant:{-[SLDHighlightDisambiguationPillSlotTag variant](self, "variant")}];
  [v4 setPinned:{-[SLDHighlightDisambiguationPillSlotTag isPinned](self, "isPinned")}];
  [v4 setFromMe:{-[SLDHighlightDisambiguationPillSlotTag isFromMe](self, "isFromMe")}];
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
      v15 = 1;
LABEL_28:

      goto LABEL_29;
    }

    [(SLDHighlightDisambiguationPillSlotTag *)v6 maxWidth];
    v9 = v8;
    [(SLDHighlightDisambiguationPillSlotTag *)self maxWidth];
    if (SL_CGFloatApproximatelyEqualToFloat(v9, v10))
    {
      sender = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
      if (sender || ([(SLDHighlightDisambiguationPillSlotTag *)v7 sender], (otherRecipientCount2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        sender2 = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
        sender3 = [(SLDHighlightDisambiguationPillSlotTag *)v7 sender];
        v14 = [sender2 isEqual:sender3];

        if (sender)
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

      isGroupConversation = [(SLDHighlightDisambiguationPillSlotTag *)self isGroupConversation];
      if (isGroupConversation == [(SLDHighlightDisambiguationPillSlotTag *)v7 isGroupConversation])
      {
        groupDisplayName = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
        if (groupDisplayName || ([(SLDHighlightDisambiguationPillSlotTag *)v7 groupDisplayName], (otherRecipientCount2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          groupDisplayName2 = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
          groupDisplayName3 = [(SLDHighlightDisambiguationPillSlotTag *)v7 groupDisplayName];
          v20 = [groupDisplayName2 isEqualToString:groupDisplayName3];

          if (groupDisplayName)
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

        otherRecipientCount = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
        if (!otherRecipientCount)
        {
          otherRecipientCount2 = [(SLDHighlightDisambiguationPillSlotTag *)v7 otherRecipientCount];
          if (!otherRecipientCount2)
          {
            goto LABEL_25;
          }
        }

        otherRecipientCount3 = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
        otherRecipientCount4 = [(SLDHighlightDisambiguationPillSlotTag *)v7 otherRecipientCount];
        v24 = [otherRecipientCount3 isEqualToNumber:otherRecipientCount4];

        if (otherRecipientCount)
        {

          if (!v24)
          {
            goto LABEL_27;
          }

LABEL_25:
          isPinned = [(SLDHighlightDisambiguationPillSlotTag *)self isPinned];
          if (isPinned == [(SLDHighlightDisambiguationPillSlotTag *)v7 isPinned])
          {
            isFromMe = [(SLDHighlightDisambiguationPillSlotTag *)self isFromMe];
            if (isFromMe == [(SLDHighlightDisambiguationPillSlotTag *)v7 isFromMe])
            {
              variant = [(SLDHighlightDisambiguationPillSlotTag *)self variant];
              v15 = variant == [(SLDHighlightDisambiguationPillSlotTag *)v7 variant];
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
  isPinned = [(SLDHighlightDisambiguationPillSlotTag *)self isPinned];
  isFromMe = [(SLDHighlightDisambiguationPillSlotTag *)self isFromMe];
  widthNumber = [(SLDHighlightDisambiguationPillSlotTag *)self widthNumber];
  v4 = [widthNumber hash];
  sender = [(SLDHighlightDisambiguationPillSlotTag *)self sender];
  v6 = [sender hash];
  isGroupConversation = [(SLDHighlightDisambiguationPillSlotTag *)self isGroupConversation];
  groupDisplayName = [(SLDHighlightDisambiguationPillSlotTag *)self groupDisplayName];
  v9 = [groupDisplayName hash];
  otherRecipientCount = [(SLDHighlightDisambiguationPillSlotTag *)self otherRecipientCount];
  v11 = [otherRecipientCount hash];
  v12 = v9 ^ v11 ^ [(SLDHighlightDisambiguationPillSlotTag *)self variant];

  return v4 ^ v6 ^ isGroupConversation ^ isFromMe ^ isPinned ^ v12;
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