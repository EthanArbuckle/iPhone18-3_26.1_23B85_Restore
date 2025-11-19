@interface NCMutableNotificationContent
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAttributedMessage:(id)a3;
- (void)setCarPlayIcons:(id)a3;
- (void)setCategorySummaryFormat:(id)a3;
- (void)setCommunicationContext:(id)a3;
- (void)setContentType:(id)a3;
- (void)setCustomHeader:(id)a3;
- (void)setDefaultHeader:(id)a3;
- (void)setFooter:(id)a3;
- (void)setFullScreenIcons:(id)a3;
- (void)setHiddenPreviewsBodyPlaceholder:(id)a3;
- (void)setIcon:(id)a3;
- (void)setIcons:(id)a3;
- (void)setMessage:(id)a3;
- (void)setSpotlightIdentifier:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSummary:(id)a3;
- (void)setSummaryArgument:(id)a3;
- (void)setThreadSummary:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation NCMutableNotificationContent

- (void)setContentType:(id)a3
{
  self->super._contentType = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCustomHeader:(id)a3
{
  self->super._customHeader = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setDefaultHeader:(id)a3
{
  self->super._defaultHeader = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setTitle:(id)a3
{
  self->super._title = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)a3
{
  self->super._subtitle = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setMessage:(id)a3
{
  self->super._attributedMessage = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:a3];

  MEMORY[0x2821F96F8]();
}

- (void)setAttributedMessage:(id)a3
{
  self->super._attributedMessage = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSummary:(id)a3
{
  self->super._summary = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setThreadSummary:(id)a3
{
  self->super._threadSummary = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSpotlightIdentifier:(id)a3
{
  self->super._spotlightIdentifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setFooter:(id)a3
{
  self->super._footer = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setHiddenPreviewsBodyPlaceholder:(id)a3
{
  self->super._hiddenPreviewsBodyPlaceholder = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCategorySummaryFormat:(id)a3
{
  self->super._categorySummaryFormat = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setCommunicationContext:(id)a3
{
  self->super._communicationContext = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationContent alloc];

  return [(NCNotificationContent *)v4 initWithNotificationContent:self];
}

- (void)setSummaryArgument:(id)a3
{
  self->super._summaryArgument = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIcons:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setIcons:];
  }

  v5 = [v4 copy];
  icons = self->super._icons;
  self->super._icons = v5;
}

- (void)setFullScreenIcons:(id)a3
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setFullScreenIcons:];
  }
}

- (void)setCarPlayIcons:(id)a3
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setCarPlayIcons:];
  }
}

- (void)setIcon:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCMutableNotificationContent(Deprecated) setIcon:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    icons = self->super._icons;
    self->super._icons = 0;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8[0] = v4;
  icons = [MEMORY[0x277CBEB68] null];
  v8[1] = icons;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7 = self->super._icons;
  self->super._icons = v6;

LABEL_6:
}

@end