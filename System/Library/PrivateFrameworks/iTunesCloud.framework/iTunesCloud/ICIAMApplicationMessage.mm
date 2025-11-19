@interface ICIAMApplicationMessage
- (BOOL)isEqual:(id)a3;
- (id)assetPrefetchStrategyAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)globalPresentationPolicyGroupAsString:(int)a3;
- (id)messageTypeAsString:(int)a3;
- (id)modalPresentationStyleAsString:(int)a3;
- (int)StringAsAssetPrefetchStrategy:(id)a3;
- (int)StringAsGlobalPresentationPolicyGroup:(id)a3;
- (int)StringAsMessageType:(id)a3;
- (int)StringAsModalPresentationStyle:(id)a3;
- (int)assetPrefetchStrategy;
- (int)globalPresentationPolicyGroup;
- (int)messageType;
- (int)modalPresentationStyle;
- (unint64_t)hash;
- (void)addContentPages:(id)a3;
- (void)addPresentationTriggers:(id)a3;
- (void)addTarget:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAssetPrefetchStrategy:(BOOL)a3;
- (void)setHasCarousel:(BOOL)a3;
- (void)setHasGlobalPresentationPolicyGroup:(BOOL)a3;
- (void)setHasHasCloseButton:(BOOL)a3;
- (void)setHasMaximumDisplays:(BOOL)a3;
- (void)setHasMessageType:(BOOL)a3;
- (void)setHasModalPresentationStyle:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasReportingEnabled:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ICIAMApplicationMessage

- (void)mergeFrom:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 8))
  {
    [(ICIAMApplicationMessage *)self setIdentifier:?];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = *(v4 + 16);
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ICIAMApplicationMessage *)self addTarget:*(*(&v41 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 78);
  if ((v10 & 0x20) != 0)
  {
    self->_messageType = *(v4 + 23);
    *&self->_has |= 0x20u;
    v10 = *(v4 + 78);
    if ((v10 & 0x100) == 0)
    {
LABEL_12:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 78) & 0x100) == 0)
  {
    goto LABEL_12;
  }

  self->_carousel = *(v4 + 152);
  *&self->_has |= 0x100u;
  if ((*(v4 + 78) & 0x80) != 0)
  {
LABEL_13:
    self->_priority = *(v4 + 28);
    *&self->_has |= 0x80u;
  }

LABEL_14:
  if (*(v4 + 17))
  {
    [(ICIAMApplicationMessage *)self setTemplateURL:?];
  }

  v11 = *(v4 + 78);
  if ((v11 & 0x10) != 0)
  {
    self->_maximumDisplays = *(v4 + 22);
    *&self->_has |= 0x10u;
    v11 = *(v4 + 78);
    if ((v11 & 2) == 0)
    {
LABEL_18:
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_18;
  }

  self->_startDate = *(v4 + 2);
  *&self->_has |= 2u;
  v11 = *(v4 + 78);
  if ((v11 & 1) == 0)
  {
LABEL_19:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  self->_endDate = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 78) & 0x200) != 0)
  {
LABEL_20:
    self->_hasCloseButton = *(v4 + 153);
    *&self->_has |= 0x200u;
  }

LABEL_21:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = *(v4 + 5);
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ICIAMApplicationMessage *)self addContentPages:*(*(&v37 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v14);
  }

  rule = self->_rule;
  v18 = *(v4 + 15);
  if (rule)
  {
    if (v18)
    {
      [(ICIAMMessageRule *)rule mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(ICIAMApplicationMessage *)self setRule:?];
  }

  if (*(v4 + 18))
  {
    [(ICIAMApplicationMessage *)self setWebArchiveURL:?];
  }

  v19 = *(v4 + 78);
  if ((v19 & 0x40) != 0)
  {
    self->_modalPresentationStyle = *(v4 + 24);
    *&self->_has |= 0x40u;
    v19 = *(v4 + 78);
    if ((v19 & 8) == 0)
    {
LABEL_44:
      if ((v19 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((v19 & 8) == 0)
  {
    goto LABEL_44;
  }

  self->_globalPresentationPolicyGroup = *(v4 + 12);
  *&self->_has |= 8u;
  if ((*(v4 + 78) & 4) != 0)
  {
LABEL_45:
    self->_assetPrefetchStrategy = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_46:
  holdoutEvent = self->_holdoutEvent;
  v21 = *(v4 + 7);
  if (holdoutEvent)
  {
    if (v21)
    {
      [(ICIAMMetricEvent *)holdoutEvent mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(ICIAMApplicationMessage *)self setHoldoutEvent:?];
  }

  localNotification = self->_localNotification;
  v23 = *(v4 + 10);
  if (localNotification)
  {
    if (v23)
    {
      [(ICIAMLocalNotification *)localNotification mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(ICIAMApplicationMessage *)self setLocalNotification:?];
  }

  impressionEvent = self->_impressionEvent;
  v25 = *(v4 + 9);
  if (impressionEvent)
  {
    if (v25)
    {
      [(ICIAMMetricEvent *)impressionEvent mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(ICIAMApplicationMessage *)self setImpressionEvent:?];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = *(v4 + 13);
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(ICIAMApplicationMessage *)self addPresentationTriggers:*(*(&v33 + 1) + 8 * k), v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  applicationBadge = self->_applicationBadge;
  v32 = *(v4 + 3);
  if (applicationBadge)
  {
    if (v32)
    {
      [(ICIAMApplicationBadge *)applicationBadge mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(ICIAMApplicationMessage *)self setApplicationBadge:?];
  }

  if ((*(v4 + 78) & 0x400) != 0)
  {
    self->_reportingEnabled = *(v4 + 154);
    *&self->_has |= 0x400u;
  }
}

- (unint64_t)hash
{
  v38 = [(NSString *)self->_identifier hash];
  v37 = [(NSMutableArray *)self->_targets hash];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
    v36 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v35 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v36 = 2654435761 * self->_messageType;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v35 = 2654435761 * self->_carousel;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v34 = 2654435761 * self->_priority;
    goto LABEL_8;
  }

LABEL_7:
  v34 = 0;
LABEL_8:
  v33 = [(NSString *)self->_templateURL hash];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    v32 = 2654435761 * self->_maximumDisplays;
    if ((v6 & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v32 = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v4.i64 = floor(startDate + 0.5);
  v8 = (startDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_16:
  if (v6)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v4.i64 = floor(endDate + 0.5);
    v13 = (endDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v30 = v11;
  v31 = v10;
  if ((*&self->_has & 0x200) != 0)
  {
    v29 = 2654435761 * self->_hasCloseButton;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(NSMutableArray *)self->_contentPages hash];
  v27 = [(ICIAMMessageRule *)self->_rule hash];
  v26 = [(NSString *)self->_webArchiveURL hash];
  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
    v16 = 0;
    if ((v15 & 8) != 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v17 = 0;
    if ((v15 & 4) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v16 = 2654435761 * self->_modalPresentationStyle;
  if ((v15 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v17 = 2654435761 * self->_globalPresentationPolicyGroup;
  if ((v15 & 4) != 0)
  {
LABEL_32:
    v18 = 2654435761 * self->_assetPrefetchStrategy;
    goto LABEL_36;
  }

LABEL_35:
  v18 = 0;
LABEL_36:
  v19 = [(ICIAMMetricEvent *)self->_holdoutEvent hash];
  v20 = [(ICIAMLocalNotification *)self->_localNotification hash];
  v21 = [(ICIAMMetricEvent *)self->_impressionEvent hash];
  v22 = [(NSMutableArray *)self->_presentationTriggers hash];
  v23 = [(ICIAMApplicationBadge *)self->_applicationBadge hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v24 = 2654435761 * self->_reportingEnabled;
  }

  else
  {
    v24 = 0;
  }

  return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 8))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  targets = self->_targets;
  if (targets | *(v4 + 16))
  {
    if (![(NSMutableArray *)targets isEqual:?])
    {
      goto LABEL_54;
    }
  }

  has = self->_has;
  v8 = *(v4 + 78);
  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_messageType != *(v4 + 23))
    {
      goto LABEL_54;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 78) & 0x100) == 0)
    {
      goto LABEL_54;
    }

    if (self->_carousel)
    {
      if ((*(v4 + 152) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 152))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 78) & 0x100) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_priority != *(v4 + 28))
    {
      goto LABEL_54;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_54;
  }

  templateURL = self->_templateURL;
  if (templateURL | *(v4 + 17))
  {
    if (![(NSString *)templateURL isEqual:?])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v8 = *(v4 + 78);
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_maximumDisplays != *(v4 + 22))
    {
      goto LABEL_54;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_startDate != *(v4 + 2))
    {
      goto LABEL_54;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_54;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_54;
    }
  }

  else if (v8)
  {
    goto LABEL_54;
  }

  if ((has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_54;
    }

    if (self->_hasCloseButton)
    {
      if ((*(v4 + 153) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 153))
    {
      goto LABEL_54;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_54;
  }

  contentPages = self->_contentPages;
  if (contentPages | *(v4 + 5) && ![(NSMutableArray *)contentPages isEqual:?])
  {
    goto LABEL_54;
  }

  rule = self->_rule;
  if (rule | *(v4 + 15))
  {
    if (![(ICIAMMessageRule *)rule isEqual:?])
    {
      goto LABEL_54;
    }
  }

  webArchiveURL = self->_webArchiveURL;
  if (webArchiveURL | *(v4 + 18))
  {
    if (![(NSString *)webArchiveURL isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v13 = self->_has;
  v14 = *(v4 + 78);
  if ((v13 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0 || self->_modalPresentationStyle != *(v4 + 24))
    {
      goto LABEL_54;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_54;
  }

  if ((v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_globalPresentationPolicyGroup != *(v4 + 12))
    {
      goto LABEL_54;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_54;
  }

  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_assetPrefetchStrategy != *(v4 + 8))
    {
      goto LABEL_54;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_54;
  }

  holdoutEvent = self->_holdoutEvent;
  if (!(holdoutEvent | *(v4 + 7)) || [(ICIAMMetricEvent *)holdoutEvent isEqual:?])
  {
    localNotification = self->_localNotification;
    if (!(localNotification | *(v4 + 10)) || [(ICIAMLocalNotification *)localNotification isEqual:?])
    {
      impressionEvent = self->_impressionEvent;
      if (!(impressionEvent | *(v4 + 9)) || [(ICIAMMetricEvent *)impressionEvent isEqual:?])
      {
        presentationTriggers = self->_presentationTriggers;
        if (!(presentationTriggers | *(v4 + 13)) || [(NSMutableArray *)presentationTriggers isEqual:?])
        {
          applicationBadge = self->_applicationBadge;
          if (!(applicationBadge | *(v4 + 3)) || [(ICIAMApplicationBadge *)applicationBadge isEqual:?])
          {
            if ((*&self->_has & 0x400) == 0)
            {
              v15 = (*(v4 + 78) & 0x400) == 0;
              goto LABEL_55;
            }

            if ((*(v4 + 78) & 0x400) != 0)
            {
              if (self->_reportingEnabled)
              {
                if (*(v4 + 154))
                {
                  goto LABEL_90;
                }
              }

              else if (!*(v4 + 154))
              {
LABEL_90:
                v15 = 1;
                goto LABEL_55;
              }
            }
          }
        }
      }
    }
  }

LABEL_54:
  v15 = 0;
LABEL_55:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = self->_targets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v52 + 1) + 8 * i) copyWithZone:a3];
        [v5 addTarget:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 92) = self->_messageType;
    *(v5 + 156) |= 0x20u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_10:
      if ((has & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 152) = self->_carousel;
  *(v5 + 156) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(v5 + 112) = self->_priority;
    *(v5 + 156) |= 0x80u;
  }

LABEL_12:
  v15 = [(NSString *)self->_templateURL copyWithZone:a3];
  v16 = *(v5 + 136);
  *(v5 + 136) = v15;

  v17 = self->_has;
  if ((v17 & 0x10) != 0)
  {
    *(v5 + 88) = self->_maximumDisplays;
    *(v5 + 156) |= 0x10u;
    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_14:
      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_14;
  }

  *(v5 + 16) = self->_startDate;
  *(v5 + 156) |= 2u;
  v17 = self->_has;
  if ((v17 & 1) == 0)
  {
LABEL_15:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_43:
  *(v5 + 8) = self->_endDate;
  *(v5 + 156) |= 1u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_16:
    *(v5 + 153) = self->_hasCloseButton;
    *(v5 + 156) |= 0x200u;
  }

LABEL_17:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = self->_contentPages;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v48 + 1) + 8 * j) copyWithZone:a3];
        [v5 addContentPages:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v20);
  }

  v24 = [(ICIAMMessageRule *)self->_rule copyWithZone:a3];
  v25 = *(v5 + 120);
  *(v5 + 120) = v24;

  v26 = [(NSString *)self->_webArchiveURL copyWithZone:a3];
  v27 = *(v5 + 144);
  *(v5 + 144) = v26;

  v28 = self->_has;
  if ((v28 & 0x40) != 0)
  {
    *(v5 + 96) = self->_modalPresentationStyle;
    *(v5 + 156) |= 0x40u;
    v28 = self->_has;
    if ((v28 & 8) == 0)
    {
LABEL_26:
      if ((v28 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v28 & 8) == 0)
  {
    goto LABEL_26;
  }

  *(v5 + 48) = self->_globalPresentationPolicyGroup;
  *(v5 + 156) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_27:
    *(v5 + 32) = self->_assetPrefetchStrategy;
    *(v5 + 156) |= 4u;
  }

LABEL_28:
  v29 = [(ICIAMMetricEvent *)self->_holdoutEvent copyWithZone:a3];
  v30 = *(v5 + 56);
  *(v5 + 56) = v29;

  v31 = [(ICIAMLocalNotification *)self->_localNotification copyWithZone:a3];
  v32 = *(v5 + 80);
  *(v5 + 80) = v31;

  v33 = [(ICIAMMetricEvent *)self->_impressionEvent copyWithZone:a3];
  v34 = *(v5 + 72);
  *(v5 + 72) = v33;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = self->_presentationTriggers;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v45;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v44 + 1) + 8 * k) copyWithZone:{a3, v44}];
        [v5 addPresentationTriggers:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v37);
  }

  v41 = [(ICIAMApplicationBadge *)self->_applicationBadge copyWithZone:a3];
  v42 = *(v5 + 24);
  *(v5 + 24) = v41;

  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 154) = self->_reportingEnabled;
    *(v5 + 156) |= 0x400u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v21 = a3;
  if (self->_identifier)
  {
    [v21 setIdentifier:?];
  }

  if ([(ICIAMApplicationMessage *)self targetsCount])
  {
    [v21 clearTargets];
    v4 = [(ICIAMApplicationMessage *)self targetsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ICIAMApplicationMessage *)self targetAtIndex:i];
        [v21 addTarget:v7];
      }
    }
  }

  has = self->_has;
  v9 = v21;
  if ((has & 0x20) != 0)
  {
    *(v21 + 23) = self->_messageType;
    *(v21 + 78) |= 0x20u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_9;
  }

  *(v21 + 152) = self->_carousel;
  *(v21 + 78) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_10:
    *(v21 + 28) = self->_priority;
    *(v21 + 78) |= 0x80u;
  }

LABEL_11:
  if (self->_templateURL)
  {
    [v21 setTemplateURL:?];
    v9 = v21;
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    v9[22] = self->_maximumDisplays;
    *(v9 + 78) |= 0x10u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_15:
      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_52:
      *(v9 + 1) = *&self->_endDate;
      *(v9 + 78) |= 1u;
      if ((*&self->_has & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v9 + 2) = *&self->_startDate;
  *(v9 + 78) |= 2u;
  v10 = self->_has;
  if (v10)
  {
    goto LABEL_52;
  }

LABEL_16:
  if ((v10 & 0x200) != 0)
  {
LABEL_17:
    *(v9 + 153) = self->_hasCloseButton;
    *(v9 + 78) |= 0x200u;
  }

LABEL_18:
  if ([(ICIAMApplicationMessage *)self contentPagesCount])
  {
    [v21 clearContentPages];
    v11 = [(ICIAMApplicationMessage *)self contentPagesCount];
    if (v11)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(ICIAMApplicationMessage *)self contentPagesAtIndex:j];
        [v21 addContentPages:v14];
      }
    }
  }

  if (self->_rule)
  {
    [v21 setRule:?];
  }

  v15 = v21;
  if (self->_webArchiveURL)
  {
    [v21 setWebArchiveURL:?];
    v15 = v21;
  }

  v16 = self->_has;
  if ((v16 & 0x40) != 0)
  {
    v15[24] = self->_modalPresentationStyle;
    *(v15 + 78) |= 0x40u;
    v16 = self->_has;
    if ((v16 & 8) == 0)
    {
LABEL_28:
      if ((v16 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 8) == 0)
  {
    goto LABEL_28;
  }

  v15[12] = self->_globalPresentationPolicyGroup;
  *(v15 + 78) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_29:
    v15[8] = self->_assetPrefetchStrategy;
    *(v15 + 78) |= 4u;
  }

LABEL_30:
  if (self->_holdoutEvent)
  {
    [v21 setHoldoutEvent:?];
  }

  if (self->_localNotification)
  {
    [v21 setLocalNotification:?];
  }

  if (self->_impressionEvent)
  {
    [v21 setImpressionEvent:?];
  }

  if ([(ICIAMApplicationMessage *)self presentationTriggersCount])
  {
    [v21 clearPresentationTriggers];
    v17 = [(ICIAMApplicationMessage *)self presentationTriggersCount];
    if (v17)
    {
      v18 = v17;
      for (k = 0; k != v18; ++k)
      {
        v20 = [(ICIAMApplicationMessage *)self presentationTriggersAtIndex:k];
        [v21 addPresentationTriggers:v20];
      }
    }
  }

  if (self->_applicationBadge)
  {
    [v21 setApplicationBadge:?];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v21 + 154) = self->_reportingEnabled;
    *(v21 + 78) |= 0x400u;
  }
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_targets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_12:
      if ((has & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_13:
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
  if (self->_templateURL)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_18:
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_59;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteDoubleField();
  v11 = self->_has;
  if ((v11 & 1) == 0)
  {
LABEL_19:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_59:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_20:
    PBDataWriterWriteBOOLField();
  }

LABEL_21:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = self->_contentPages;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  if (self->_rule)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_webArchiveURL)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((v17 & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    v17 = self->_has;
    if ((v17 & 8) == 0)
    {
LABEL_34:
      if ((v17 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_34;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_35:
    PBDataWriterWriteInt32Field();
  }

LABEL_36:
  if (self->_holdoutEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_localNotification)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_impressionEvent)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->_presentationTriggers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v20);
  }

  if (self->_applicationBadge)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  targets = self->_targets;
  if (targets)
  {
    [v4 setObject:targets forKey:@"target"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    messageType = self->_messageType;
    if (messageType < 5 && ((0x17u >> messageType) & 1) != 0)
    {
      v9 = off_1E7BF3818[messageType];
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messageType];
    }

    [v4 setObject:v9 forKey:@"messageType"];

    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_carousel];
    [v4 setObject:v10 forKey:@"carousel"];

    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_priority];
    [v4 setObject:v11 forKey:@"priority"];
  }

  templateURL = self->_templateURL;
  if (templateURL)
  {
    [v4 setObject:templateURL forKey:@"templateURL"];
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_maximumDisplays];
    [v4 setObject:v26 forKey:@"maximumDisplays"];

    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_19:
      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_19;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [v4 setObject:v27 forKey:@"startDate"];

  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_20:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_41:
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
  [v4 setObject:v28 forKey:@"endDate"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasCloseButton];
    [v4 setObject:v14 forKey:@"hasCloseButton"];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_contentPages count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_contentPages, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = self->_contentPages;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"contentPages"];
  }

  rule = self->_rule;
  if (rule)
  {
    v23 = [(ICIAMMessageRule *)rule dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"rule"];
  }

  webArchiveURL = self->_webArchiveURL;
  if (webArchiveURL)
  {
    [v4 setObject:webArchiveURL forKey:@"webArchiveURL"];
  }

  v25 = self->_has;
  if ((v25 & 0x40) != 0)
  {
    modalPresentationStyle = self->_modalPresentationStyle;
    if (modalPresentationStyle)
    {
      if (modalPresentationStyle == 1)
      {
        v30 = @"Fullscreen";
      }

      else
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modalPresentationStyle];
      }
    }

    else
    {
      v30 = @"Card";
    }

    [v4 setObject:v30 forKey:@"modalPresentationStyle"];

    v25 = self->_has;
    if ((v25 & 8) == 0)
    {
LABEL_37:
      if ((v25 & 4) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }
  }

  else if ((v25 & 8) == 0)
  {
    goto LABEL_37;
  }

  globalPresentationPolicyGroup = self->_globalPresentationPolicyGroup;
  if (globalPresentationPolicyGroup)
  {
    if (globalPresentationPolicyGroup == 1)
    {
      v32 = @"Restricted";
    }

    else
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_globalPresentationPolicyGroup];
    }
  }

  else
  {
    v32 = @"Normal";
  }

  [v4 setObject:v32 forKey:@"globalPresentationPolicyGroup"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_55:
    assetPrefetchStrategy = self->_assetPrefetchStrategy;
    if (assetPrefetchStrategy >= 3)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_assetPrefetchStrategy];
    }

    else
    {
      v34 = off_1E7BF3840[assetPrefetchStrategy];
    }

    [v4 setObject:v34 forKey:@"assetPrefetchStrategy"];
  }

LABEL_59:
  holdoutEvent = self->_holdoutEvent;
  if (holdoutEvent)
  {
    v36 = [(ICIAMMetricEvent *)holdoutEvent dictionaryRepresentation];
    [v4 setObject:v36 forKey:@"holdoutEvent"];
  }

  localNotification = self->_localNotification;
  if (localNotification)
  {
    v38 = [(ICIAMLocalNotification *)localNotification dictionaryRepresentation];
    [v4 setObject:v38 forKey:@"localNotification"];
  }

  impressionEvent = self->_impressionEvent;
  if (impressionEvent)
  {
    v40 = [(ICIAMMetricEvent *)impressionEvent dictionaryRepresentation];
    [v4 setObject:v40 forKey:@"impressionEvent"];
  }

  if ([(NSMutableArray *)self->_presentationTriggers count])
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_presentationTriggers, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = self->_presentationTriggers;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v53;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v52 + 1) + 8 * j) dictionaryRepresentation];
          [v41 addObject:v47];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v44);
    }

    [v4 setObject:v41 forKey:@"presentationTriggers"];
  }

  applicationBadge = self->_applicationBadge;
  if (applicationBadge)
  {
    v49 = [(ICIAMApplicationBadge *)applicationBadge dictionaryRepresentation];
    [v4 setObject:v49 forKey:@"applicationBadge"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:self->_reportingEnabled];
    [v4 setObject:v50 forKey:@"reportingEnabled"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICIAMApplicationMessage;
  v4 = [(ICIAMApplicationMessage *)&v8 description];
  v5 = [(ICIAMApplicationMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasReportingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addPresentationTriggers:(id)a3
{
  v4 = a3;
  presentationTriggers = self->_presentationTriggers;
  v8 = v4;
  if (!presentationTriggers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_presentationTriggers;
    self->_presentationTriggers = v6;

    v4 = v8;
    presentationTriggers = self->_presentationTriggers;
  }

  [(NSMutableArray *)presentationTriggers addObject:v4];
}

- (int)StringAsAssetPrefetchStrategy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Immediate"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Never"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)assetPrefetchStrategyAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7BF3840[a3];
  }

  return v4;
}

- (void)setHasAssetPrefetchStrategy:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)assetPrefetchStrategy
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_assetPrefetchStrategy;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsGlobalPresentationPolicyGroup:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Normal"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Restricted"];
  }

  return v4;
}

- (id)globalPresentationPolicyGroupAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Restricted";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Normal";
  }

  return v4;
}

- (void)setHasGlobalPresentationPolicyGroup:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)globalPresentationPolicyGroup
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_globalPresentationPolicyGroup;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsModalPresentationStyle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Card"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Fullscreen"];
  }

  return v4;
}

- (id)modalPresentationStyleAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Fullscreen";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Card";
  }

  return v4;
}

- (void)setHasModalPresentationStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)modalPresentationStyle
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_modalPresentationStyle;
  }

  else
  {
    return 0;
  }
}

- (void)addContentPages:(id)a3
{
  v4 = a3;
  contentPages = self->_contentPages;
  v8 = v4;
  if (!contentPages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentPages;
    self->_contentPages = v6;

    v4 = v8;
    contentPages = self->_contentPages;
  }

  [(NSMutableArray *)contentPages addObject:v4];
}

- (void)setHasHasCloseButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasStartDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMaximumDisplays:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCarousel:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Modal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Native"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Notification"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)messageTypeAsString:(int)a3
{
  if (a3 < 5 && ((0x17u >> a3) & 1) != 0)
  {
    v4 = off_1E7BF3818[a3];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (void)setHasMessageType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)messageType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_messageType;
  }

  else
  {
    return 0;
  }
}

- (void)addTarget:(id)a3
{
  v4 = a3;
  targets = self->_targets;
  v8 = v4;
  if (!targets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_targets;
    self->_targets = v6;

    v4 = v8;
    targets = self->_targets;
  }

  [(NSMutableArray *)targets addObject:v4];
}

@end