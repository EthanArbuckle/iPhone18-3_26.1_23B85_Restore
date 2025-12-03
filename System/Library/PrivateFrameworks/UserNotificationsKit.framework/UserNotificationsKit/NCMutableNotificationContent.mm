@interface NCMutableNotificationContent
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAttributedMessage:(id)message;
- (void)setCarPlayIcons:(id)icons;
- (void)setCategorySummaryFormat:(id)format;
- (void)setCommunicationContext:(id)context;
- (void)setContentType:(id)type;
- (void)setCustomHeader:(id)header;
- (void)setDefaultHeader:(id)header;
- (void)setFooter:(id)footer;
- (void)setFullScreenIcons:(id)icons;
- (void)setHiddenPreviewsBodyPlaceholder:(id)placeholder;
- (void)setIcon:(id)icon;
- (void)setIcons:(id)icons;
- (void)setMessage:(id)message;
- (void)setSpotlightIdentifier:(id)identifier;
- (void)setSubtitle:(id)subtitle;
- (void)setSummary:(id)summary;
- (void)setSummaryArgument:(id)argument;
- (void)setThreadSummary:(id)summary;
- (void)setTitle:(id)title;
@end

@implementation NCMutableNotificationContent

- (void)setContentType:(id)type
{
  self->super._contentType = [type copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCustomHeader:(id)header
{
  self->super._customHeader = [header copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDefaultHeader:(id)header
{
  self->super._defaultHeader = [header copy];

  MEMORY[0x2821F96F8]();
}

- (void)setTitle:(id)title
{
  self->super._title = [title copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)subtitle
{
  self->super._subtitle = [subtitle copy];

  MEMORY[0x2821F96F8]();
}

- (void)setMessage:(id)message
{
  self->super._attributedMessage = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:message];

  MEMORY[0x2821F96F8]();
}

- (void)setAttributedMessage:(id)message
{
  self->super._attributedMessage = [message copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSummary:(id)summary
{
  self->super._summary = [summary copy];

  MEMORY[0x2821F96F8]();
}

- (void)setThreadSummary:(id)summary
{
  self->super._threadSummary = [summary copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSpotlightIdentifier:(id)identifier
{
  self->super._spotlightIdentifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setFooter:(id)footer
{
  self->super._footer = [footer copy];

  MEMORY[0x2821F96F8]();
}

- (void)setHiddenPreviewsBodyPlaceholder:(id)placeholder
{
  self->super._hiddenPreviewsBodyPlaceholder = [placeholder copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCategorySummaryFormat:(id)format
{
  self->super._categorySummaryFormat = [format copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCommunicationContext:(id)context
{
  self->super._communicationContext = [context copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationContent alloc];

  return [(NCNotificationContent *)v4 initWithNotificationContent:self];
}

- (void)setSummaryArgument:(id)argument
{
  self->super._summaryArgument = [argument copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIcons:(id)icons
{
  iconsCopy = icons;
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setIcons:];
  }

  v5 = [iconsCopy copy];
  icons = self->super._icons;
  self->super._icons = v5;
}

- (void)setFullScreenIcons:(id)icons
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setFullScreenIcons:];
  }
}

- (void)setCarPlayIcons:(id)icons
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setCarPlayIcons:];
  }
}

- (void)setIcon:(id)icon
{
  v8[2] = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setIcon:];
    if (iconCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    icons = self->super._icons;
    self->super._icons = 0;
    goto LABEL_6;
  }

  if (!iconCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8[0] = iconCopy;
  icons = [MEMORY[0x277CBEB68] null];
  v8[1] = icons;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7 = self->super._icons;
  self->super._icons = v6;

LABEL_6:
}

@end