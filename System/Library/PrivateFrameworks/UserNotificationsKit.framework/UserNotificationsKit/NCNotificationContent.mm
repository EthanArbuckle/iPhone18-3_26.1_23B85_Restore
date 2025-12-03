@interface NCNotificationContent
- (BOOL)isAirDrop;
- (BOOL)isCallType;
- (BOOL)isCommunicationType;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMessagingType;
- (NCNotificationContent)initWithNotificationContent:(id)content;
- (NSArray)carPlayIcons;
- (NSArray)fullScreenIcons;
- (NSString)header;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation NCNotificationContent

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contentType hash];
  v4 = [(NSString *)self->_customHeader hash]+ v3;
  v5 = [(NSString *)self->_defaultHeader hash];
  v6 = v4 + v5 + [(NSString *)self->_title hash];
  v7 = [(NSString *)self->_subtitle hash];
  v8 = v7 + [(NSAttributedString *)self->_attributedMessage hash];
  v9 = v6 + v8 + [(NSAttributedString *)self->_summary hash];
  v10 = [(NSAttributedString *)self->_threadSummary hash];
  v11 = v10 + [(NSString *)self->_spotlightIdentifier hash];
  v12 = v11 + [(NSString *)self->_footer hash];
  v13 = v9 + v12 + [(NSString *)self->_hiddenPreviewsBodyPlaceholder hash];
  v14 = [(NSString *)self->_categorySummaryFormat hash];
  v15 = v14 + [(NSString *)self->_summaryArgument hash]+ self->_summaryArgumentCount;
  v16 = v15 + [(_UNNotificationCommunicationContext *)self->_communicationContext hash];
  v17 = v13 + v16 + [(NSDate *)self->_date hash];
  dateAllDay = self->_dateAllDay;
  return v17 + dateAllDay + [(NSTimeZone *)self->_timeZone hash];
}

- (NCNotificationContent)initWithNotificationContent:(id)content
{
  contentCopy = content;
  v54.receiver = self;
  v54.super_class = NCNotificationContent;
  v5 = [(NCNotificationContent *)&v54 init];
  if (v5)
  {
    contentType = [contentCopy contentType];
    v7 = [contentType copy];
    contentType = v5->_contentType;
    v5->_contentType = v7;

    customHeader = [contentCopy customHeader];
    v10 = [customHeader copy];
    customHeader = v5->_customHeader;
    v5->_customHeader = v10;

    defaultHeader = [contentCopy defaultHeader];
    v13 = [defaultHeader copy];
    defaultHeader = v5->_defaultHeader;
    v5->_defaultHeader = v13;

    title = [contentCopy title];
    v16 = [title copy];
    title = v5->_title;
    v5->_title = v16;

    subtitle = [contentCopy subtitle];
    v19 = [subtitle copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v19;

    attributedMessage = [contentCopy attributedMessage];
    v22 = [attributedMessage copy];
    attributedMessage = v5->_attributedMessage;
    v5->_attributedMessage = v22;

    summary = [contentCopy summary];
    v25 = [summary copy];
    summary = v5->_summary;
    v5->_summary = v25;

    threadSummary = [contentCopy threadSummary];
    v28 = [threadSummary copy];
    threadSummary = v5->_threadSummary;
    v5->_threadSummary = v28;

    spotlightIdentifier = [contentCopy spotlightIdentifier];
    v31 = [spotlightIdentifier copy];
    spotlightIdentifier = v5->_spotlightIdentifier;
    v5->_spotlightIdentifier = v31;

    footer = [contentCopy footer];
    v34 = [footer copy];
    footer = v5->_footer;
    v5->_footer = v34;

    hiddenPreviewsBodyPlaceholder = [contentCopy hiddenPreviewsBodyPlaceholder];
    v37 = [hiddenPreviewsBodyPlaceholder copy];
    hiddenPreviewsBodyPlaceholder = v5->_hiddenPreviewsBodyPlaceholder;
    v5->_hiddenPreviewsBodyPlaceholder = v37;

    categorySummaryFormat = [contentCopy categorySummaryFormat];
    v40 = [categorySummaryFormat copy];
    categorySummaryFormat = v5->_categorySummaryFormat;
    v5->_categorySummaryFormat = v40;

    communicationContext = [contentCopy communicationContext];
    v43 = [communicationContext copy];
    communicationContext = v5->_communicationContext;
    v5->_communicationContext = v43;

    icons = [contentCopy icons];
    icons = v5->_icons;
    v5->_icons = icons;

    attachmentImage = [contentCopy attachmentImage];
    attachmentImage = v5->_attachmentImage;
    v5->_attachmentImage = attachmentImage;

    date = [contentCopy date];
    date = v5->_date;
    v5->_date = date;

    v5->_dateAllDay = [contentCopy isDateAllDay];
    timeZone = [contentCopy timeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = timeZone;
  }

  return v5;
}

- (BOOL)isMessagingType
{
  contentType = [(NCNotificationContent *)self contentType];
  if ([contentType isEqualToString:*MEMORY[0x277CE2158]])
  {
    v4 = 1;
  }

  else
  {
    contentType2 = [(NCNotificationContent *)self contentType];
    v4 = [contentType2 isEqualToString:*MEMORY[0x277CE2160]];
  }

  return v4;
}

- (BOOL)isCallType
{
  contentType = [(NCNotificationContent *)self contentType];
  if ([contentType isEqualToString:*MEMORY[0x277CE2148]])
  {
    v4 = 1;
  }

  else
  {
    contentType2 = [(NCNotificationContent *)self contentType];
    if ([contentType2 isEqualToString:*MEMORY[0x277CE2168]])
    {
      v4 = 1;
    }

    else
    {
      contentType3 = [(NCNotificationContent *)self contentType];
      if ([contentType3 isEqualToString:*MEMORY[0x277CE2170]])
      {
        v4 = 1;
      }

      else
      {
        contentType4 = [(NCNotificationContent *)self contentType];
        v4 = [contentType4 isEqualToString:*MEMORY[0x277CE2138]];
      }
    }
  }

  return v4;
}

- (BOOL)isAirDrop
{
  contentType = [(NCNotificationContent *)self contentType];
  v3 = [contentType isEqualToString:*MEMORY[0x277CE2130]];

  return v3;
}

- (BOOL)isCommunicationType
{
  if ([(NCNotificationContent *)self isMessagingType]|| [(NCNotificationContent *)self isCallType])
  {
    return 1;
  }

  return [(NCNotificationContent *)self isAirDrop];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_22:
      v54 = 0;
      goto LABEL_23;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_22;
  }

  contentType = [(NCNotificationContent *)self contentType];
  contentType2 = [v5 contentType];
  v8 = NCIsEqual(contentType, contentType2);

  if (!v8)
  {
    goto LABEL_22;
  }

  customHeader = [(NCNotificationContent *)self customHeader];
  customHeader2 = [v5 customHeader];
  v11 = NCIsEqual(customHeader, customHeader2);

  if (!v11)
  {
    goto LABEL_22;
  }

  defaultHeader = [(NCNotificationContent *)self defaultHeader];
  defaultHeader2 = [v5 defaultHeader];
  v14 = NCIsEqual(defaultHeader, defaultHeader2);

  if (!v14)
  {
    goto LABEL_22;
  }

  title = [(NCNotificationContent *)self title];
  title2 = [v5 title];
  v17 = NCIsEqual(title, title2);

  if (!v17)
  {
    goto LABEL_22;
  }

  subtitle = [(NCNotificationContent *)self subtitle];
  subtitle2 = [v5 subtitle];
  v20 = NCIsEqual(subtitle, subtitle2);

  if (!v20)
  {
    goto LABEL_22;
  }

  message = [(NCNotificationContent *)self message];
  message2 = [v5 message];
  v23 = NCIsEqual(message, message2);

  if (!v23)
  {
    goto LABEL_22;
  }

  attributedMessage = [(NCNotificationContent *)self attributedMessage];
  attributedMessage2 = [v5 attributedMessage];
  v26 = NCIsEqual(attributedMessage, attributedMessage2);

  if (!v26)
  {
    goto LABEL_22;
  }

  summary = [(NCNotificationContent *)self summary];
  summary2 = [v5 summary];
  v29 = NCIsEqual(summary, summary2);

  if (!v29)
  {
    goto LABEL_22;
  }

  threadSummary = [(NCNotificationContent *)self threadSummary];
  threadSummary2 = [v5 threadSummary];
  v32 = NCIsEqual(threadSummary, threadSummary2);

  if (!v32)
  {
    goto LABEL_22;
  }

  spotlightIdentifier = [(NCNotificationContent *)self spotlightIdentifier];
  spotlightIdentifier2 = [v5 spotlightIdentifier];
  v35 = NCIsEqual(spotlightIdentifier, spotlightIdentifier2);

  if (!v35)
  {
    goto LABEL_22;
  }

  footer = [(NCNotificationContent *)self footer];
  footer2 = [v5 footer];
  v38 = NCIsEqual(footer, footer2);

  if (!v38)
  {
    goto LABEL_22;
  }

  hiddenPreviewsBodyPlaceholder = [(NCNotificationContent *)self hiddenPreviewsBodyPlaceholder];
  hiddenPreviewsBodyPlaceholder2 = [v5 hiddenPreviewsBodyPlaceholder];
  v41 = NCIsEqual(hiddenPreviewsBodyPlaceholder, hiddenPreviewsBodyPlaceholder2);

  if (!v41)
  {
    goto LABEL_22;
  }

  categorySummaryFormat = [(NCNotificationContent *)self categorySummaryFormat];
  categorySummaryFormat2 = [v5 categorySummaryFormat];
  v44 = NCIsEqual(categorySummaryFormat, categorySummaryFormat2);

  if (!v44)
  {
    goto LABEL_22;
  }

  communicationContext = [(NCNotificationContent *)self communicationContext];
  communicationContext2 = [v5 communicationContext];
  v47 = NCIsEqual(communicationContext, communicationContext2);

  if (!v47)
  {
    goto LABEL_22;
  }

  date = [(NCNotificationContent *)self date];
  date2 = [v5 date];
  v50 = NCIsEqual(date, date2);

  if (!v50)
  {
    goto LABEL_22;
  }

  isDateAllDay = [(NCNotificationContent *)self isDateAllDay];
  if (isDateAllDay != [v5 isDateAllDay])
  {
    goto LABEL_22;
  }

  timeZone = [(NCNotificationContent *)self timeZone];
  timeZone2 = [v5 timeZone];
  v54 = NCIsEqual(timeZone, timeZone2);

LABEL_23:
  return v54;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationContent alloc];

  return [(NCNotificationContent *)v4 initWithNotificationContent:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationContent *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationContent_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __63__NCNotificationContent_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contentType];
  v4 = [v2 appendObject:v3 withName:@"contentType"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) customHeader];
  v7 = [v5 appendObject:v6 withName:@"customHeader"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) defaultHeader];
  v10 = [v8 appendObject:v9 withName:@"defaultHeader"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) title];
  v13 = [v11 appendObject:v12 withName:@"title"];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) subtitle];
  v16 = [v14 appendObject:v15 withName:@"subtitle" skipIfNil:1];

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) message];
  v19 = [v17 appendObject:v18 withName:@"message"];

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) attributedMessage];
  v22 = [v20 appendObject:v21 withName:@"attributedMessage"];

  v23 = *(a1 + 32);
  v24 = [*(a1 + 40) summary];
  v25 = [v23 appendObject:v24 withName:@"summary"];

  v26 = *(a1 + 32);
  v27 = [*(a1 + 40) threadSummary];
  v28 = [v26 appendObject:v27 withName:@"threadSummary"];

  v29 = *(a1 + 32);
  v30 = [*(a1 + 40) spotlightIdentifier];
  v31 = [v29 appendObject:v30 withName:@"spotlightIdentifier"];

  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) footer];
  v34 = [v32 appendObject:v33 withName:@"footer"];

  v35 = *(a1 + 32);
  v36 = [*(a1 + 40) hiddenPreviewsBodyPlaceholder];
  v37 = [v35 appendObject:v36 withName:@"hiddenPreviewsBodyPlaceholder"];

  v38 = *(a1 + 32);
  v39 = [*(a1 + 40) categorySummaryFormat];
  v40 = [v38 appendObject:v39 withName:@"categorySummaryFormat"];

  v41 = *(a1 + 32);
  v42 = [*(a1 + 40) summaryArgument];
  v43 = [v41 appendObject:v42 withName:@"summaryArgument"];

  v44 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  v45 = *(a1 + 32);
  v46 = [*(a1 + 40) communicationContext];
  v47 = [v45 appendObject:v46 withName:@"communicationContext" skipIfNil:1];

  v48 = *(a1 + 32);
  v49 = [*(a1 + 40) icons];
  v50 = [v48 appendObject:v49 withName:@"icons"];

  v51 = *(a1 + 32);
  v52 = [*(a1 + 40) attachmentImage];
  v53 = [v51 appendObject:v52 withName:@"attachmentImage"];

  v54 = *(a1 + 32);
  v55 = [*(a1 + 40) date];
  v56 = [v54 appendObject:v55 withName:@"date"];

  v57 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDateAllDay"), @"isDateAllDay"}];
  v58 = *(a1 + 32);
  v60 = [*(a1 + 40) timeZone];
  v59 = [v58 appendObject:v60 withName:@"timeZone"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationContent *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  date = [(NCNotificationContent *)self date];
  v5 = [v3 appendObject:date withName:@"date"];

  return v3;
}

- (NSString)header
{
  v3 = [(NSString *)self->_customHeader length];
  v4 = 16;
  if (!v3)
  {
    v4 = 24;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (NSArray)fullScreenIcons
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCNotificationContent(Deprecated) fullScreenIcons];
  }

  return MEMORY[0x277CBEBF8];
}

- (NSArray)carPlayIcons
{
  if (os_log_type_enabled(NCUILogIcons, OS_LOG_TYPE_ERROR))
  {
    [NCNotificationContent(Deprecated) carPlayIcons];
  }

  return MEMORY[0x277CBEBF8];
}

@end