@interface NCNotificationContent
- (BOOL)isAirDrop;
- (BOOL)isCallType;
- (BOOL)isCommunicationType;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMessagingType;
- (NCNotificationContent)initWithNotificationContent:(id)a3;
- (NSArray)carPlayIcons;
- (NSArray)fullScreenIcons;
- (NSString)header;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (NCNotificationContent)initWithNotificationContent:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = NCNotificationContent;
  v5 = [(NCNotificationContent *)&v54 init];
  if (v5)
  {
    v6 = [v4 contentType];
    v7 = [v6 copy];
    contentType = v5->_contentType;
    v5->_contentType = v7;

    v9 = [v4 customHeader];
    v10 = [v9 copy];
    customHeader = v5->_customHeader;
    v5->_customHeader = v10;

    v12 = [v4 defaultHeader];
    v13 = [v12 copy];
    defaultHeader = v5->_defaultHeader;
    v5->_defaultHeader = v13;

    v15 = [v4 title];
    v16 = [v15 copy];
    title = v5->_title;
    v5->_title = v16;

    v18 = [v4 subtitle];
    v19 = [v18 copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v19;

    v21 = [v4 attributedMessage];
    v22 = [v21 copy];
    attributedMessage = v5->_attributedMessage;
    v5->_attributedMessage = v22;

    v24 = [v4 summary];
    v25 = [v24 copy];
    summary = v5->_summary;
    v5->_summary = v25;

    v27 = [v4 threadSummary];
    v28 = [v27 copy];
    threadSummary = v5->_threadSummary;
    v5->_threadSummary = v28;

    v30 = [v4 spotlightIdentifier];
    v31 = [v30 copy];
    spotlightIdentifier = v5->_spotlightIdentifier;
    v5->_spotlightIdentifier = v31;

    v33 = [v4 footer];
    v34 = [v33 copy];
    footer = v5->_footer;
    v5->_footer = v34;

    v36 = [v4 hiddenPreviewsBodyPlaceholder];
    v37 = [v36 copy];
    hiddenPreviewsBodyPlaceholder = v5->_hiddenPreviewsBodyPlaceholder;
    v5->_hiddenPreviewsBodyPlaceholder = v37;

    v39 = [v4 categorySummaryFormat];
    v40 = [v39 copy];
    categorySummaryFormat = v5->_categorySummaryFormat;
    v5->_categorySummaryFormat = v40;

    v42 = [v4 communicationContext];
    v43 = [v42 copy];
    communicationContext = v5->_communicationContext;
    v5->_communicationContext = v43;

    v45 = [v4 icons];
    icons = v5->_icons;
    v5->_icons = v45;

    v47 = [v4 attachmentImage];
    attachmentImage = v5->_attachmentImage;
    v5->_attachmentImage = v47;

    v49 = [v4 date];
    date = v5->_date;
    v5->_date = v49;

    v5->_dateAllDay = [v4 isDateAllDay];
    v51 = [v4 timeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = v51;
  }

  return v5;
}

- (BOOL)isMessagingType
{
  v3 = [(NCNotificationContent *)self contentType];
  if ([v3 isEqualToString:*MEMORY[0x277CE2158]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NCNotificationContent *)self contentType];
    v4 = [v5 isEqualToString:*MEMORY[0x277CE2160]];
  }

  return v4;
}

- (BOOL)isCallType
{
  v3 = [(NCNotificationContent *)self contentType];
  if ([v3 isEqualToString:*MEMORY[0x277CE2148]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NCNotificationContent *)self contentType];
    if ([v5 isEqualToString:*MEMORY[0x277CE2168]])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NCNotificationContent *)self contentType];
      if ([v6 isEqualToString:*MEMORY[0x277CE2170]])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NCNotificationContent *)self contentType];
        v4 = [v7 isEqualToString:*MEMORY[0x277CE2138]];
      }
    }
  }

  return v4;
}

- (BOOL)isAirDrop
{
  v2 = [(NCNotificationContent *)self contentType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CE2130]];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = [(NCNotificationContent *)self contentType];
  v7 = [v5 contentType];
  v8 = NCIsEqual(v6, v7);

  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = [(NCNotificationContent *)self customHeader];
  v10 = [v5 customHeader];
  v11 = NCIsEqual(v9, v10);

  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = [(NCNotificationContent *)self defaultHeader];
  v13 = [v5 defaultHeader];
  v14 = NCIsEqual(v12, v13);

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = [(NCNotificationContent *)self title];
  v16 = [v5 title];
  v17 = NCIsEqual(v15, v16);

  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = [(NCNotificationContent *)self subtitle];
  v19 = [v5 subtitle];
  v20 = NCIsEqual(v18, v19);

  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = [(NCNotificationContent *)self message];
  v22 = [v5 message];
  v23 = NCIsEqual(v21, v22);

  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = [(NCNotificationContent *)self attributedMessage];
  v25 = [v5 attributedMessage];
  v26 = NCIsEqual(v24, v25);

  if (!v26)
  {
    goto LABEL_22;
  }

  v27 = [(NCNotificationContent *)self summary];
  v28 = [v5 summary];
  v29 = NCIsEqual(v27, v28);

  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = [(NCNotificationContent *)self threadSummary];
  v31 = [v5 threadSummary];
  v32 = NCIsEqual(v30, v31);

  if (!v32)
  {
    goto LABEL_22;
  }

  v33 = [(NCNotificationContent *)self spotlightIdentifier];
  v34 = [v5 spotlightIdentifier];
  v35 = NCIsEqual(v33, v34);

  if (!v35)
  {
    goto LABEL_22;
  }

  v36 = [(NCNotificationContent *)self footer];
  v37 = [v5 footer];
  v38 = NCIsEqual(v36, v37);

  if (!v38)
  {
    goto LABEL_22;
  }

  v39 = [(NCNotificationContent *)self hiddenPreviewsBodyPlaceholder];
  v40 = [v5 hiddenPreviewsBodyPlaceholder];
  v41 = NCIsEqual(v39, v40);

  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = [(NCNotificationContent *)self categorySummaryFormat];
  v43 = [v5 categorySummaryFormat];
  v44 = NCIsEqual(v42, v43);

  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = [(NCNotificationContent *)self communicationContext];
  v46 = [v5 communicationContext];
  v47 = NCIsEqual(v45, v46);

  if (!v47)
  {
    goto LABEL_22;
  }

  v48 = [(NCNotificationContent *)self date];
  v49 = [v5 date];
  v50 = NCIsEqual(v48, v49);

  if (!v50)
  {
    goto LABEL_22;
  }

  v51 = [(NCNotificationContent *)self isDateAllDay];
  if (v51 != [v5 isDateAllDay])
  {
    goto LABEL_22;
  }

  v52 = [(NCNotificationContent *)self timeZone];
  v53 = [v5 timeZone];
  v54 = NCIsEqual(v52, v53);

LABEL_23:
  return v54;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationContent alloc];

  return [(NCNotificationContent *)v4 initWithNotificationContent:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationContent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationContent_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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
  v2 = [(NCNotificationContent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationContent *)self date];
  v5 = [v3 appendObject:v4 withName:@"date"];

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