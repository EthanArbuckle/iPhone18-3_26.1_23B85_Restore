@interface _SFPBMailRankingSignals
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMailRankingSignals)initWithDictionary:(id)a3;
- (_SFPBMailRankingSignals)initWithFacade:(id)a3;
- (_SFPBMailRankingSignals)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMailRankingSignals

- (_SFPBMailRankingSignals)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMailRankingSignals *)self init];

  if (v5)
  {
    if ([v4 hasWasReorderedByRecency])
    {
      -[_SFPBMailRankingSignals setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [v4 wasReorderedByRecency]);
    }

    if ([v4 hasNumEngagements])
    {
      -[_SFPBMailRankingSignals setNumEngagements:](v5, "setNumEngagements:", [v4 numEngagements]);
    }

    if ([v4 hasNumDaysEngagedLast30Days])
    {
      -[_SFPBMailRankingSignals setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [v4 numDaysEngagedLast30Days]);
    }

    v6 = [v4 averageEngagementAgeLast7Days];

    if (v6)
    {
      v7 = [v4 averageEngagementAgeLast7Days];
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast7Days:](v5, "setAverageEngagementAgeLast7Days:", [v7 intValue]);
    }

    v8 = [v4 averageEngagementAgeLast14Days];

    if (v8)
    {
      v9 = [v4 averageEngagementAgeLast14Days];
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast14Days:](v5, "setAverageEngagementAgeLast14Days:", [v9 intValue]);
    }

    v10 = [v4 averageEngagementAgeLast21Days];

    if (v10)
    {
      v11 = [v4 averageEngagementAgeLast21Days];
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast21Days:](v5, "setAverageEngagementAgeLast21Days:", [v11 intValue]);
    }

    v12 = [v4 averageEngagementAgeLast30Days];

    if (v12)
    {
      v13 = [v4 averageEngagementAgeLast30Days];
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast30Days:](v5, "setAverageEngagementAgeLast30Days:", [v13 intValue]);
    }

    if ([v4 hasDaysSinceReceipt])
    {
      -[_SFPBMailRankingSignals setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [v4 daysSinceReceipt]);
    }

    v14 = [v4 l1Score];

    if (v14)
    {
      v15 = [v4 l1Score];
      [v15 floatValue];
      [(_SFPBMailRankingSignals *)v5 setL1Score:?];
    }

    v16 = [v4 l2Score];

    if (v16)
    {
      v17 = [v4 l2Score];
      [v17 floatValue];
      [(_SFPBMailRankingSignals *)v5 setL2Score:?];
    }

    if ([v4 hasIsFlagged])
    {
      -[_SFPBMailRankingSignals setIsFlagged:](v5, "setIsFlagged:", [v4 isFlagged]);
    }

    if ([v4 hasIsRepliedTo])
    {
      -[_SFPBMailRankingSignals setIsRepliedTo:](v5, "setIsRepliedTo:", [v4 isRepliedTo]);
    }

    if ([v4 hasIsSemanticMatch])
    {
      -[_SFPBMailRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v4 isSemanticMatch]);
    }

    if ([v4 hasIsSyntacticMatch])
    {
      -[_SFPBMailRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v4 isSyntacticMatch]);
    }

    v18 = [v4 semanticScore];

    if (v18)
    {
      v19 = [v4 semanticScore];
      [v19 floatValue];
      [(_SFPBMailRankingSignals *)v5 setSemanticScore:?];
    }

    v20 = [v4 syntacticScore];

    if (v20)
    {
      v21 = [v4 syntacticScore];
      [v21 floatValue];
      [(_SFPBMailRankingSignals *)v5 setSyntacticScore:?];
    }

    if ([v4 hasCountUnigramMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [v4 countUnigramMatchInAuthors]);
    }

    if ([v4 hasCountBigramMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [v4 countBigramMatchInAuthors]);
    }

    if ([v4 hasCountNgramMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [v4 countNgramMatchInAuthors]);
    }

    if ([v4 hasCountUnigramPrefixMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [v4 countUnigramPrefixMatchInAuthors]);
    }

    if ([v4 hasCountBigramPrefixMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [v4 countBigramPrefixMatchInAuthors]);
    }

    if ([v4 hasCountNgramPrefixMatchInAuthors])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [v4 countNgramPrefixMatchInAuthors]);
    }

    if ([v4 hasCountUnigramMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [v4 countUnigramMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountBigramMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [v4 countBigramMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountNgramMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [v4 countNgramMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountUnigramPrefixMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [v4 countUnigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountBigramPrefixMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [v4 countBigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountNgramPrefixMatchInAuthorEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [v4 countNgramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 hasCountUnigramMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [v4 countUnigramMatchInSubject]);
    }

    if ([v4 hasCountBigramMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [v4 countBigramMatchInSubject]);
    }

    if ([v4 hasCountNgramMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [v4 countNgramMatchInSubject]);
    }

    if ([v4 hasCountUnigramPrefixMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [v4 countUnigramPrefixMatchInSubject]);
    }

    if ([v4 hasCountBigramPrefixMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [v4 countBigramPrefixMatchInSubject]);
    }

    if ([v4 hasCountNgramPrefixMatchInSubject])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [v4 countNgramPrefixMatchInSubject]);
    }

    if ([v4 hasCountUnigramMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [v4 countUnigramMatchInTextContent]);
    }

    if ([v4 hasCountBigramMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [v4 countBigramMatchInTextContent]);
    }

    if ([v4 hasCountNgramMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [v4 countNgramMatchInTextContent]);
    }

    if ([v4 hasCountUnigramPrefixMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [v4 countUnigramPrefixMatchInTextContent]);
    }

    if ([v4 hasCountBigramPrefixMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [v4 countBigramPrefixMatchInTextContent]);
    }

    if ([v4 hasCountNgramPrefixMatchInTextContent])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [v4 countNgramPrefixMatchInTextContent]);
    }

    if ([v4 hasCountUnigramMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [v4 countUnigramMatchInRecipients]);
    }

    if ([v4 hasCountBigramMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [v4 countBigramMatchInRecipients]);
    }

    if ([v4 hasCountNgramMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [v4 countNgramMatchInRecipients]);
    }

    if ([v4 hasCountUnigramPrefixMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [v4 countUnigramPrefixMatchInRecipients]);
    }

    if ([v4 hasCountBigramPrefixMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [v4 countBigramPrefixMatchInRecipients]);
    }

    if ([v4 hasCountNgramPrefixMatchInRecipients])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [v4 countNgramPrefixMatchInRecipients]);
    }

    if ([v4 hasCountUnigramMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [v4 countUnigramMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountBigramMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [v4 countBigramMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountNgramMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [v4 countNgramMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountUnigramPrefixMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [v4 countUnigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountBigramPrefixMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [v4 countBigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountNgramPrefixMatchInRecipientEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [v4 countNgramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 hasCountUnigramMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [v4 countUnigramMatchInEmailAddresses]);
    }

    if ([v4 hasCountBigramMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [v4 countBigramMatchInEmailAddresses]);
    }

    if ([v4 hasCountNgramMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [v4 countNgramMatchInEmailAddresses]);
    }

    if ([v4 hasCountUnigramPrefixMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [v4 countUnigramPrefixMatchInEmailAddresses]);
    }

    if ([v4 hasCountBigramPrefixMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [v4 countBigramPrefixMatchInEmailAddresses]);
    }

    if ([v4 hasCountNgramPrefixMatchInEmailAddresses])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [v4 countNgramPrefixMatchInEmailAddresses]);
    }

    if ([v4 hasCountUnigramMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [v4 countUnigramMatchInAttachmentTypes]);
    }

    if ([v4 hasCountBigramMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [v4 countBigramMatchInAttachmentTypes]);
    }

    if ([v4 hasCountNgramMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [v4 countNgramMatchInAttachmentTypes]);
    }

    if ([v4 hasCountUnigramPrefixMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [v4 countUnigramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 hasCountBigramPrefixMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [v4 countBigramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 hasCountNgramPrefixMatchInAttachmentTypes])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [v4 countNgramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 hasCountUnigramMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [v4 countUnigramMatchInAttachmentNames]);
    }

    if ([v4 hasCountBigramMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [v4 countBigramMatchInAttachmentNames]);
    }

    if ([v4 hasCountNgramMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [v4 countNgramMatchInAttachmentNames]);
    }

    if ([v4 hasCountUnigramPrefixMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [v4 countUnigramPrefixMatchInAttachmentNames]);
    }

    if ([v4 hasCountBigramPrefixMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [v4 countBigramPrefixMatchInAttachmentNames]);
    }

    if ([v4 hasCountNgramPrefixMatchInAttachmentNames])
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [v4 countNgramPrefixMatchInAttachmentNames]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBMailRankingSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v150.receiver = self;
  v150.super_class = _SFPBMailRankingSignals;
  v5 = [(_SFPBMailRankingSignals *)&v150 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"wasReorderedByRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numEngagements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setNumEngagements:](v5, "setNumEngagements:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numDaysEngagedLast30Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"averageEngagementAgeLast7Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast7Days:](v5, "setAverageEngagementAgeLast7Days:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"averageEngagementAgeLast14Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast14Days:](v5, "setAverageEngagementAgeLast14Days:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"averageEngagementAgeLast21Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast21Days:](v5, "setAverageEngagementAgeLast21Days:", [v11 intValue]);
    }

    v117 = v6;
    v12 = [v4 objectForKeyedSubscript:@"averageEngagementAgeLast30Days"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setAverageEngagementAgeLast30Days:](v5, "setAverageEngagementAgeLast30Days:", [v12 intValue]);
    }

    v111 = v12;
    v13 = [v4 objectForKeyedSubscript:@"daysSinceReceipt"];
    objc_opt_class();
    v149 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [v13 unsignedLongLongValue]);
    }

    v116 = v7;
    v14 = [v4 objectForKeyedSubscript:@"l1Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(_SFPBMailRankingSignals *)v5 setL1Score:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"l2Score"];
    objc_opt_class();
    v148 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(_SFPBMailRankingSignals *)v5 setL2Score:?];
    }

    v115 = v8;
    v16 = [v4 objectForKeyedSubscript:@"isFlagged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setIsFlagged:](v5, "setIsFlagged:", [v16 BOOLValue]);
    }

    v17 = v10;
    v18 = [v4 objectForKeyedSubscript:@"isRepliedTo"];
    objc_opt_class();
    v147 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setIsRepliedTo:](v5, "setIsRepliedTo:", [v18 BOOLValue]);
    }

    v19 = v9;
    v20 = [v4 objectForKeyedSubscript:@"isSemanticMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"isSyntacticMatch"];
    objc_opt_class();
    v146 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"semanticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(_SFPBMailRankingSignals *)v5 setSemanticScore:?];
    }

    v107 = v22;
    v23 = [v4 objectForKeyedSubscript:@"syntacticScore"];
    objc_opt_class();
    v145 = v23;
    v114 = v19;
    if (objc_opt_isKindOfClass())
    {
      [v23 floatValue];
      [(_SFPBMailRankingSignals *)v5 setSyntacticScore:?];
    }

    v24 = [v4 objectForKeyedSubscript:@"countUnigramMatchInAuthors"];
    objc_opt_class();
    v144 = v24;
    v113 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [v24 unsignedIntValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"countBigramMatchInAuthors"];
    objc_opt_class();
    v143 = v25;
    v112 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [v25 unsignedIntValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"countNgramMatchInAuthors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [v26 unsignedIntValue]);
    }

    v106 = v26;
    v27 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInAuthors"];
    objc_opt_class();
    v142 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [v27 unsignedIntValue]);
    }

    v28 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInAuthors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [v28 unsignedIntValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInAuthors"];
    objc_opt_class();
    v141 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [v29 unsignedIntValue]);
    }

    v30 = v20;
    v31 = [v4 objectForKeyedSubscript:@"countUnigramMatchInAuthorEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [v31 unsignedIntValue]);
    }

    v104 = v31;
    v32 = v16;
    v33 = [v4 objectForKeyedSubscript:@"countBigramMatchInAuthorEmailAddresses"];
    objc_opt_class();
    v140 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [v33 unsignedIntValue]);
    }

    v34 = v14;
    v35 = [v4 objectForKeyedSubscript:@"countNgramMatchInAuthorEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [v35 unsignedIntValue]);
    }

    v103 = v35;
    v36 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInAuthorEmailAddresses"];
    objc_opt_class();
    v139 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [v36 unsignedIntValue]);
    }

    v37 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInAuthorEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [v37 unsignedIntValue]);
    }

    v102 = v37;
    v38 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInAuthorEmailAddresses"];
    objc_opt_class();
    v138 = v38;
    v110 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [v38 unsignedIntValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"countUnigramMatchInSubject"];
    objc_opt_class();
    v137 = v39;
    v109 = v32;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [v39 unsignedIntValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"countBigramMatchInSubject"];
    objc_opt_class();
    v136 = v40;
    v108 = v30;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [v40 unsignedIntValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"countNgramMatchInSubject"];
    objc_opt_class();
    v135 = v41;
    v105 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [v41 unsignedIntValue]);
    }

    v42 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInSubject"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [v42 unsignedIntValue]);
    }

    v101 = v42;
    v43 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInSubject"];
    objc_opt_class();
    v134 = v43;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [v43 unsignedIntValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInSubject"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [v44 unsignedIntValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"countUnigramMatchInTextContent"];
    objc_opt_class();
    v133 = v45;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [v45 unsignedIntValue]);
    }

    v46 = [v4 objectForKeyedSubscript:@"countBigramMatchInTextContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [v46 unsignedIntValue]);
    }

    v47 = [v4 objectForKeyedSubscript:@"countNgramMatchInTextContent"];
    objc_opt_class();
    v132 = v47;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [v47 unsignedIntValue]);
    }

    v48 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInTextContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [v48 unsignedIntValue]);
    }

    v49 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInTextContent"];
    objc_opt_class();
    v131 = v49;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [v49 unsignedIntValue]);
    }

    v50 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInTextContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [v50 unsignedIntValue]);
    }

    v51 = [v4 objectForKeyedSubscript:@"countUnigramMatchInRecipients"];
    objc_opt_class();
    v130 = v51;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [v51 unsignedIntValue]);
    }

    v52 = [v4 objectForKeyedSubscript:@"countBigramMatchInRecipients"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [v52 unsignedIntValue]);
    }

    v96 = v52;
    v53 = v50;
    v54 = [v4 objectForKeyedSubscript:@"countNgramMatchInRecipients"];
    objc_opt_class();
    v129 = v54;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [v54 unsignedIntValue]);
    }

    v55 = v48;
    v56 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInRecipients"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [v56 unsignedIntValue]);
    }

    v95 = v56;
    v57 = v46;
    v58 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInRecipients"];
    objc_opt_class();
    v128 = v58;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [v58 unsignedIntValue]);
    }

    v59 = v44;
    v60 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInRecipients"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [v60 unsignedIntValue]);
    }

    v61 = [v4 objectForKeyedSubscript:@"countUnigramMatchInRecipientEmailAddresses"];
    objc_opt_class();
    v127 = v61;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [v61 unsignedIntValue]);
    }

    v62 = [v4 objectForKeyedSubscript:@"countBigramMatchInRecipientEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [v62 unsignedIntValue]);
    }

    v93 = v62;
    v63 = [v4 objectForKeyedSubscript:@"countNgramMatchInRecipientEmailAddresses"];
    objc_opt_class();
    v126 = v63;
    v100 = v59;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [v63 unsignedIntValue]);
    }

    v64 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInRecipientEmailAddresses"];
    objc_opt_class();
    v125 = v64;
    v99 = v57;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [v64 unsignedIntValue]);
    }

    v65 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInRecipientEmailAddresses"];
    objc_opt_class();
    v124 = v65;
    v98 = v55;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [v65 unsignedIntValue]);
    }

    v66 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInRecipientEmailAddresses"];
    objc_opt_class();
    v123 = v66;
    v97 = v53;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [v66 unsignedIntValue]);
    }

    v67 = [v4 objectForKeyedSubscript:@"countUnigramMatchInEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [v67 unsignedIntValue]);
    }

    v68 = [v4 objectForKeyedSubscript:@"countBigramMatchInEmailAddresses"];
    objc_opt_class();
    v122 = v68;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [v68 unsignedIntValue]);
    }

    v69 = [v4 objectForKeyedSubscript:@"countNgramMatchInEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [v69 unsignedIntValue]);
    }

    v70 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInEmailAddresses"];
    objc_opt_class();
    v121 = v70;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [v70 unsignedIntValue]);
    }

    v71 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInEmailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [v71 unsignedIntValue]);
    }

    v72 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInEmailAddresses"];
    objc_opt_class();
    v120 = v72;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [v72 unsignedIntValue]);
    }

    v73 = [v4 objectForKeyedSubscript:@"countUnigramMatchInAttachmentTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [v73 unsignedIntValue]);
    }

    v74 = [v4 objectForKeyedSubscript:@"countBigramMatchInAttachmentTypes"];
    objc_opt_class();
    v119 = v74;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [v74 unsignedIntValue]);
    }

    v75 = [v4 objectForKeyedSubscript:@"countNgramMatchInAttachmentTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [v75 unsignedIntValue]);
    }

    v76 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInAttachmentTypes"];
    objc_opt_class();
    v118 = v76;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [v76 unsignedIntValue]);
    }

    v94 = v60;
    v77 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInAttachmentTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [v77 unsignedIntValue]);
    }

    v91 = v69;
    v78 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInAttachmentTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [v78 unsignedIntValue]);
    }

    v90 = v71;
    v79 = [v4 objectForKeyedSubscript:{@"countUnigramMatchInAttachmentNames", v78}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [v79 unsignedIntValue]);
    }

    v89 = v73;
    v80 = [v4 objectForKeyedSubscript:@"countBigramMatchInAttachmentNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [v80 unsignedIntValue]);
    }

    v88 = v75;
    v81 = [v4 objectForKeyedSubscript:@"countNgramMatchInAttachmentNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [v81 unsignedIntValue]);
    }

    v92 = v67;
    v82 = [v4 objectForKeyedSubscript:@"countUnigramPrefixMatchInAttachmentNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [v82 unsignedIntValue]);
    }

    v83 = [v4 objectForKeyedSubscript:@"countBigramPrefixMatchInAttachmentNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [v83 unsignedIntValue]);
    }

    v84 = [v4 objectForKeyedSubscript:@"countNgramPrefixMatchInAttachmentNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMailRankingSignals setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [v84 unsignedIntValue]);
    }

    v85 = v5;
  }

  return v5;
}

- (_SFPBMailRankingSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMailRankingSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMailRankingSignals *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_averageEngagementAgeLast14Days)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBMailRankingSignals averageEngagementAgeLast14Days](self, "averageEngagementAgeLast14Days")}];
    [v3 setObject:v4 forKeyedSubscript:@"averageEngagementAgeLast14Days"];
  }

  if (self->_averageEngagementAgeLast21Days)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBMailRankingSignals averageEngagementAgeLast21Days](self, "averageEngagementAgeLast21Days")}];
    [v3 setObject:v5 forKeyedSubscript:@"averageEngagementAgeLast21Days"];
  }

  if (self->_averageEngagementAgeLast30Days)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBMailRankingSignals averageEngagementAgeLast30Days](self, "averageEngagementAgeLast30Days")}];
    [v3 setObject:v6 forKeyedSubscript:@"averageEngagementAgeLast30Days"];
  }

  if (self->_averageEngagementAgeLast7Days)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBMailRankingSignals averageEngagementAgeLast7Days](self, "averageEngagementAgeLast7Days")}];
    [v3 setObject:v7 forKeyedSubscript:@"averageEngagementAgeLast7Days"];
  }

  if (self->_countBigramMatchInAttachmentNames)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInAttachmentNames](self, "countBigramMatchInAttachmentNames")}];
    [v3 setObject:v8 forKeyedSubscript:@"countBigramMatchInAttachmentNames"];
  }

  if (self->_countBigramMatchInAttachmentTypes)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInAttachmentTypes](self, "countBigramMatchInAttachmentTypes")}];
    [v3 setObject:v9 forKeyedSubscript:@"countBigramMatchInAttachmentTypes"];
  }

  if (self->_countBigramMatchInAuthorEmailAddresses)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInAuthorEmailAddresses](self, "countBigramMatchInAuthorEmailAddresses")}];
    [v3 setObject:v10 forKeyedSubscript:@"countBigramMatchInAuthorEmailAddresses"];
  }

  if (self->_countBigramMatchInAuthors)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInAuthors](self, "countBigramMatchInAuthors")}];
    [v3 setObject:v11 forKeyedSubscript:@"countBigramMatchInAuthors"];
  }

  if (self->_countBigramMatchInEmailAddresses)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInEmailAddresses](self, "countBigramMatchInEmailAddresses")}];
    [v3 setObject:v12 forKeyedSubscript:@"countBigramMatchInEmailAddresses"];
  }

  if (self->_countBigramMatchInRecipientEmailAddresses)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInRecipientEmailAddresses](self, "countBigramMatchInRecipientEmailAddresses")}];
    [v3 setObject:v13 forKeyedSubscript:@"countBigramMatchInRecipientEmailAddresses"];
  }

  if (self->_countBigramMatchInRecipients)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInRecipients](self, "countBigramMatchInRecipients")}];
    [v3 setObject:v14 forKeyedSubscript:@"countBigramMatchInRecipients"];
  }

  if (self->_countBigramMatchInSubject)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInSubject](self, "countBigramMatchInSubject")}];
    [v3 setObject:v15 forKeyedSubscript:@"countBigramMatchInSubject"];
  }

  if (self->_countBigramMatchInTextContent)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramMatchInTextContent](self, "countBigramMatchInTextContent")}];
    [v3 setObject:v16 forKeyedSubscript:@"countBigramMatchInTextContent"];
  }

  if (self->_countBigramPrefixMatchInAttachmentNames)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInAttachmentNames](self, "countBigramPrefixMatchInAttachmentNames")}];
    [v3 setObject:v17 forKeyedSubscript:@"countBigramPrefixMatchInAttachmentNames"];
  }

  if (self->_countBigramPrefixMatchInAttachmentTypes)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInAttachmentTypes](self, "countBigramPrefixMatchInAttachmentTypes")}];
    [v3 setObject:v18 forKeyedSubscript:@"countBigramPrefixMatchInAttachmentTypes"];
  }

  if (self->_countBigramPrefixMatchInAuthorEmailAddresses)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInAuthorEmailAddresses](self, "countBigramPrefixMatchInAuthorEmailAddresses")}];
    [v3 setObject:v19 forKeyedSubscript:@"countBigramPrefixMatchInAuthorEmailAddresses"];
  }

  if (self->_countBigramPrefixMatchInAuthors)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInAuthors](self, "countBigramPrefixMatchInAuthors")}];
    [v3 setObject:v20 forKeyedSubscript:@"countBigramPrefixMatchInAuthors"];
  }

  if (self->_countBigramPrefixMatchInEmailAddresses)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInEmailAddresses](self, "countBigramPrefixMatchInEmailAddresses")}];
    [v3 setObject:v21 forKeyedSubscript:@"countBigramPrefixMatchInEmailAddresses"];
  }

  if (self->_countBigramPrefixMatchInRecipientEmailAddresses)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInRecipientEmailAddresses](self, "countBigramPrefixMatchInRecipientEmailAddresses")}];
    [v3 setObject:v22 forKeyedSubscript:@"countBigramPrefixMatchInRecipientEmailAddresses"];
  }

  if (self->_countBigramPrefixMatchInRecipients)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInRecipients](self, "countBigramPrefixMatchInRecipients")}];
    [v3 setObject:v23 forKeyedSubscript:@"countBigramPrefixMatchInRecipients"];
  }

  if (self->_countBigramPrefixMatchInSubject)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInSubject](self, "countBigramPrefixMatchInSubject")}];
    [v3 setObject:v24 forKeyedSubscript:@"countBigramPrefixMatchInSubject"];
  }

  if (self->_countBigramPrefixMatchInTextContent)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countBigramPrefixMatchInTextContent](self, "countBigramPrefixMatchInTextContent")}];
    [v3 setObject:v25 forKeyedSubscript:@"countBigramPrefixMatchInTextContent"];
  }

  if (self->_countNgramMatchInAttachmentNames)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInAttachmentNames](self, "countNgramMatchInAttachmentNames")}];
    [v3 setObject:v26 forKeyedSubscript:@"countNgramMatchInAttachmentNames"];
  }

  if (self->_countNgramMatchInAttachmentTypes)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInAttachmentTypes](self, "countNgramMatchInAttachmentTypes")}];
    [v3 setObject:v27 forKeyedSubscript:@"countNgramMatchInAttachmentTypes"];
  }

  if (self->_countNgramMatchInAuthorEmailAddresses)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInAuthorEmailAddresses](self, "countNgramMatchInAuthorEmailAddresses")}];
    [v3 setObject:v28 forKeyedSubscript:@"countNgramMatchInAuthorEmailAddresses"];
  }

  if (self->_countNgramMatchInAuthors)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInAuthors](self, "countNgramMatchInAuthors")}];
    [v3 setObject:v29 forKeyedSubscript:@"countNgramMatchInAuthors"];
  }

  if (self->_countNgramMatchInEmailAddresses)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInEmailAddresses](self, "countNgramMatchInEmailAddresses")}];
    [v3 setObject:v30 forKeyedSubscript:@"countNgramMatchInEmailAddresses"];
  }

  if (self->_countNgramMatchInRecipientEmailAddresses)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInRecipientEmailAddresses](self, "countNgramMatchInRecipientEmailAddresses")}];
    [v3 setObject:v31 forKeyedSubscript:@"countNgramMatchInRecipientEmailAddresses"];
  }

  if (self->_countNgramMatchInRecipients)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInRecipients](self, "countNgramMatchInRecipients")}];
    [v3 setObject:v32 forKeyedSubscript:@"countNgramMatchInRecipients"];
  }

  if (self->_countNgramMatchInSubject)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInSubject](self, "countNgramMatchInSubject")}];
    [v3 setObject:v33 forKeyedSubscript:@"countNgramMatchInSubject"];
  }

  if (self->_countNgramMatchInTextContent)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramMatchInTextContent](self, "countNgramMatchInTextContent")}];
    [v3 setObject:v34 forKeyedSubscript:@"countNgramMatchInTextContent"];
  }

  if (self->_countNgramPrefixMatchInAttachmentNames)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInAttachmentNames](self, "countNgramPrefixMatchInAttachmentNames")}];
    [v3 setObject:v35 forKeyedSubscript:@"countNgramPrefixMatchInAttachmentNames"];
  }

  if (self->_countNgramPrefixMatchInAttachmentTypes)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInAttachmentTypes](self, "countNgramPrefixMatchInAttachmentTypes")}];
    [v3 setObject:v36 forKeyedSubscript:@"countNgramPrefixMatchInAttachmentTypes"];
  }

  if (self->_countNgramPrefixMatchInAuthorEmailAddresses)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInAuthorEmailAddresses](self, "countNgramPrefixMatchInAuthorEmailAddresses")}];
    [v3 setObject:v37 forKeyedSubscript:@"countNgramPrefixMatchInAuthorEmailAddresses"];
  }

  if (self->_countNgramPrefixMatchInAuthors)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInAuthors](self, "countNgramPrefixMatchInAuthors")}];
    [v3 setObject:v38 forKeyedSubscript:@"countNgramPrefixMatchInAuthors"];
  }

  if (self->_countNgramPrefixMatchInEmailAddresses)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInEmailAddresses](self, "countNgramPrefixMatchInEmailAddresses")}];
    [v3 setObject:v39 forKeyedSubscript:@"countNgramPrefixMatchInEmailAddresses"];
  }

  if (self->_countNgramPrefixMatchInRecipientEmailAddresses)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInRecipientEmailAddresses](self, "countNgramPrefixMatchInRecipientEmailAddresses")}];
    [v3 setObject:v40 forKeyedSubscript:@"countNgramPrefixMatchInRecipientEmailAddresses"];
  }

  if (self->_countNgramPrefixMatchInRecipients)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInRecipients](self, "countNgramPrefixMatchInRecipients")}];
    [v3 setObject:v41 forKeyedSubscript:@"countNgramPrefixMatchInRecipients"];
  }

  if (self->_countNgramPrefixMatchInSubject)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInSubject](self, "countNgramPrefixMatchInSubject")}];
    [v3 setObject:v42 forKeyedSubscript:@"countNgramPrefixMatchInSubject"];
  }

  if (self->_countNgramPrefixMatchInTextContent)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countNgramPrefixMatchInTextContent](self, "countNgramPrefixMatchInTextContent")}];
    [v3 setObject:v43 forKeyedSubscript:@"countNgramPrefixMatchInTextContent"];
  }

  if (self->_countUnigramMatchInAttachmentNames)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInAttachmentNames](self, "countUnigramMatchInAttachmentNames")}];
    [v3 setObject:v44 forKeyedSubscript:@"countUnigramMatchInAttachmentNames"];
  }

  if (self->_countUnigramMatchInAttachmentTypes)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInAttachmentTypes](self, "countUnigramMatchInAttachmentTypes")}];
    [v3 setObject:v45 forKeyedSubscript:@"countUnigramMatchInAttachmentTypes"];
  }

  if (self->_countUnigramMatchInAuthorEmailAddresses)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInAuthorEmailAddresses](self, "countUnigramMatchInAuthorEmailAddresses")}];
    [v3 setObject:v46 forKeyedSubscript:@"countUnigramMatchInAuthorEmailAddresses"];
  }

  if (self->_countUnigramMatchInAuthors)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInAuthors](self, "countUnigramMatchInAuthors")}];
    [v3 setObject:v47 forKeyedSubscript:@"countUnigramMatchInAuthors"];
  }

  if (self->_countUnigramMatchInEmailAddresses)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInEmailAddresses](self, "countUnigramMatchInEmailAddresses")}];
    [v3 setObject:v48 forKeyedSubscript:@"countUnigramMatchInEmailAddresses"];
  }

  if (self->_countUnigramMatchInRecipientEmailAddresses)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInRecipientEmailAddresses](self, "countUnigramMatchInRecipientEmailAddresses")}];
    [v3 setObject:v49 forKeyedSubscript:@"countUnigramMatchInRecipientEmailAddresses"];
  }

  if (self->_countUnigramMatchInRecipients)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInRecipients](self, "countUnigramMatchInRecipients")}];
    [v3 setObject:v50 forKeyedSubscript:@"countUnigramMatchInRecipients"];
  }

  if (self->_countUnigramMatchInSubject)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInSubject](self, "countUnigramMatchInSubject")}];
    [v3 setObject:v51 forKeyedSubscript:@"countUnigramMatchInSubject"];
  }

  if (self->_countUnigramMatchInTextContent)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramMatchInTextContent](self, "countUnigramMatchInTextContent")}];
    [v3 setObject:v52 forKeyedSubscript:@"countUnigramMatchInTextContent"];
  }

  if (self->_countUnigramPrefixMatchInAttachmentNames)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInAttachmentNames](self, "countUnigramPrefixMatchInAttachmentNames")}];
    [v3 setObject:v53 forKeyedSubscript:@"countUnigramPrefixMatchInAttachmentNames"];
  }

  if (self->_countUnigramPrefixMatchInAttachmentTypes)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInAttachmentTypes](self, "countUnigramPrefixMatchInAttachmentTypes")}];
    [v3 setObject:v54 forKeyedSubscript:@"countUnigramPrefixMatchInAttachmentTypes"];
  }

  if (self->_countUnigramPrefixMatchInAuthorEmailAddresses)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInAuthorEmailAddresses](self, "countUnigramPrefixMatchInAuthorEmailAddresses")}];
    [v3 setObject:v55 forKeyedSubscript:@"countUnigramPrefixMatchInAuthorEmailAddresses"];
  }

  if (self->_countUnigramPrefixMatchInAuthors)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInAuthors](self, "countUnigramPrefixMatchInAuthors")}];
    [v3 setObject:v56 forKeyedSubscript:@"countUnigramPrefixMatchInAuthors"];
  }

  if (self->_countUnigramPrefixMatchInEmailAddresses)
  {
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInEmailAddresses](self, "countUnigramPrefixMatchInEmailAddresses")}];
    [v3 setObject:v57 forKeyedSubscript:@"countUnigramPrefixMatchInEmailAddresses"];
  }

  if (self->_countUnigramPrefixMatchInRecipientEmailAddresses)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInRecipientEmailAddresses](self, "countUnigramPrefixMatchInRecipientEmailAddresses")}];
    [v3 setObject:v58 forKeyedSubscript:@"countUnigramPrefixMatchInRecipientEmailAddresses"];
  }

  if (self->_countUnigramPrefixMatchInRecipients)
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInRecipients](self, "countUnigramPrefixMatchInRecipients")}];
    [v3 setObject:v59 forKeyedSubscript:@"countUnigramPrefixMatchInRecipients"];
  }

  if (self->_countUnigramPrefixMatchInSubject)
  {
    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInSubject](self, "countUnigramPrefixMatchInSubject")}];
    [v3 setObject:v60 forKeyedSubscript:@"countUnigramPrefixMatchInSubject"];
  }

  if (self->_countUnigramPrefixMatchInTextContent)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBMailRankingSignals countUnigramPrefixMatchInTextContent](self, "countUnigramPrefixMatchInTextContent")}];
    [v3 setObject:v61 forKeyedSubscript:@"countUnigramPrefixMatchInTextContent"];
  }

  if (self->_daysSinceReceipt)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBMailRankingSignals daysSinceReceipt](self, "daysSinceReceipt")}];
    [v3 setObject:v62 forKeyedSubscript:@"daysSinceReceipt"];
  }

  if (self->_isFlagged)
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMailRankingSignals isFlagged](self, "isFlagged")}];
    [v3 setObject:v63 forKeyedSubscript:@"isFlagged"];
  }

  if (self->_isRepliedTo)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMailRankingSignals isRepliedTo](self, "isRepliedTo")}];
    [v3 setObject:v64 forKeyedSubscript:@"isRepliedTo"];
  }

  if (self->_isSemanticMatch)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMailRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
    [v3 setObject:v65 forKeyedSubscript:@"isSemanticMatch"];
  }

  if (self->_isSyntacticMatch)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMailRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
    [v3 setObject:v66 forKeyedSubscript:@"isSyntacticMatch"];
  }

  if (self->_l1Score != 0.0)
  {
    v67 = MEMORY[0x1E696AD98];
    [(_SFPBMailRankingSignals *)self l1Score];
    v68 = [v67 numberWithFloat:?];
    [v3 setObject:v68 forKeyedSubscript:@"l1Score"];
  }

  if (self->_l2Score != 0.0)
  {
    v69 = MEMORY[0x1E696AD98];
    [(_SFPBMailRankingSignals *)self l2Score];
    v70 = [v69 numberWithFloat:?];
    [v3 setObject:v70 forKeyedSubscript:@"l2Score"];
  }

  if (self->_numDaysEngagedLast30Days)
  {
    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBMailRankingSignals numDaysEngagedLast30Days](self, "numDaysEngagedLast30Days")}];
    [v3 setObject:v71 forKeyedSubscript:@"numDaysEngagedLast30Days"];
  }

  if (self->_numEngagements)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBMailRankingSignals numEngagements](self, "numEngagements")}];
    [v3 setObject:v72 forKeyedSubscript:@"numEngagements"];
  }

  if (self->_semanticScore != 0.0)
  {
    v73 = MEMORY[0x1E696AD98];
    [(_SFPBMailRankingSignals *)self semanticScore];
    v74 = [v73 numberWithFloat:?];
    [v3 setObject:v74 forKeyedSubscript:@"semanticScore"];
  }

  if (self->_syntacticScore != 0.0)
  {
    v75 = MEMORY[0x1E696AD98];
    [(_SFPBMailRankingSignals *)self syntacticScore];
    v76 = [v75 numberWithFloat:?];
    [v3 setObject:v76 forKeyedSubscript:@"syntacticScore"];
  }

  if (self->_wasReorderedByRecency)
  {
    v77 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMailRankingSignals wasReorderedByRecency](self, "wasReorderedByRecency")}];
    [v3 setObject:v77 forKeyedSubscript:@"wasReorderedByRecency"];
  }

  v78 = v3;

  return v3;
}

- (unint64_t)hash
{
  l1Score = self->_l1Score;
  v5 = l1Score < 0.0;
  if (l1Score == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = l1Score;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  l2Score = self->_l2Score;
  v11 = l2Score < 0.0;
  if (l2Score == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = l2Score;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  semanticScore = self->_semanticScore;
  v17 = semanticScore < 0.0;
  if (semanticScore == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = semanticScore;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  syntacticScore = self->_syntacticScore;
  v23 = syntacticScore < 0.0;
  if (syntacticScore == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v24 = syntacticScore;
    if (v23)
    {
      v24 = -v24;
    }

    *v2.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v3, v2).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v27 += v25;
      }
    }

    else
    {
      v27 -= fabs(v25);
    }
  }

  if (self->_isSyntacticMatch)
  {
    v28 = 2654435761;
  }

  else
  {
    v28 = 0;
  }

  if (self->_isSemanticMatch)
  {
    v29 = 2654435761;
  }

  else
  {
    v29 = 0;
  }

  if (self->_isRepliedTo)
  {
    v30 = 2654435761;
  }

  else
  {
    v30 = 0;
  }

  if (self->_isFlagged)
  {
    v31 = 2654435761;
  }

  else
  {
    v31 = 0;
  }

  if (self->_wasReorderedByRecency)
  {
    v33 = 2654435761;
  }

  else
  {
    v33 = 0;
  }

  countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors;
  v34 = (2654435761u * self->_numEngagements) ^ v33 ^ (2654435761u * self->_numDaysEngagedLast30Days) ^ (2654435761 * self->_averageEngagementAgeLast7Days) ^ (2654435761 * self->_averageEngagementAgeLast14Days) ^ (2654435761 * self->_averageEngagementAgeLast21Days) ^ (2654435761 * self->_averageEngagementAgeLast30Days) ^ (2654435761u * self->_daysSinceReceipt) ^ v9 ^ v15 ^ v31 ^ v30 ^ v29 ^ v28 ^ v21 ^ v27 ^ (2654435761 * countUnigramMatchInAuthors) ^ (2654435761 * self->_countBigramMatchInAuthors) ^ (2654435761 * self->_countNgramMatchInAuthors) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthors) ^ (2654435761 * self->_countBigramPrefixMatchInAuthors) ^ (2654435761 * self->_countNgramPrefixMatchInAuthors) ^ (2654435761 * self->_countUnigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInSubject) ^ (2654435761 * self->_countBigramMatchInSubject) ^ (2654435761 * self->_countNgramMatchInSubject) ^ (2654435761 * self->_countUnigramPrefixMatchInSubject) ^ (2654435761 * self->_countBigramPrefixMatchInSubject) ^ (2654435761 * self->_countNgramPrefixMatchInSubject);
  v35 = v34 ^ (2654435761 * self->_countUnigramMatchInTextContent) ^ (2654435761 * self->_countBigramMatchInTextContent) ^ (2654435761 * self->_countNgramMatchInTextContent) ^ (2654435761 * self->_countUnigramPrefixMatchInTextContent) ^ (2654435761 * self->_countBigramPrefixMatchInTextContent) ^ (2654435761 * self->_countNgramPrefixMatchInTextContent) ^ (2654435761 * self->_countUnigramMatchInRecipients) ^ (2654435761 * self->_countBigramMatchInRecipients) ^ (2654435761 * self->_countNgramMatchInRecipients) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipients) ^ (2654435761 * self->_countBigramPrefixMatchInRecipients) ^ (2654435761 * self->_countNgramPrefixMatchInRecipients) ^ (2654435761 * self->_countUnigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countNgramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInEmailAddresses);
  return v35 ^ (2654435761 * self->_countBigramMatchInEmailAddresses) ^ (2654435761 * self->_countNgramMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInAttachmentTypes) ^ (2654435761 * self->_countBigramMatchInAttachmentTypes) ^ (2654435761 * self->_countNgramMatchInAttachmentTypes) ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countUnigramMatchInAttachmentNames) ^ (2654435761 * self->_countBigramMatchInAttachmentNames) ^ (2654435761 * self->_countNgramMatchInAttachmentNames) ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentNames);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  wasReorderedByRecency = self->_wasReorderedByRecency;
  if (wasReorderedByRecency != [v4 wasReorderedByRecency])
  {
    goto LABEL_72;
  }

  numEngagements = self->_numEngagements;
  if (numEngagements != [v4 numEngagements])
  {
    goto LABEL_72;
  }

  numDaysEngagedLast30Days = self->_numDaysEngagedLast30Days;
  if (numDaysEngagedLast30Days != [v4 numDaysEngagedLast30Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast7Days = self->_averageEngagementAgeLast7Days;
  if (averageEngagementAgeLast7Days != [v4 averageEngagementAgeLast7Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast14Days = self->_averageEngagementAgeLast14Days;
  if (averageEngagementAgeLast14Days != [v4 averageEngagementAgeLast14Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast21Days = self->_averageEngagementAgeLast21Days;
  if (averageEngagementAgeLast21Days != [v4 averageEngagementAgeLast21Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast30Days = self->_averageEngagementAgeLast30Days;
  if (averageEngagementAgeLast30Days != [v4 averageEngagementAgeLast30Days])
  {
    goto LABEL_72;
  }

  daysSinceReceipt = self->_daysSinceReceipt;
  if (daysSinceReceipt != [v4 daysSinceReceipt])
  {
    goto LABEL_72;
  }

  l1Score = self->_l1Score;
  [v4 l1Score];
  if (l1Score != v14)
  {
    goto LABEL_72;
  }

  l2Score = self->_l2Score;
  [v4 l2Score];
  if (l2Score != v16)
  {
    goto LABEL_72;
  }

  isFlagged = self->_isFlagged;
  if (isFlagged != [v4 isFlagged])
  {
    goto LABEL_72;
  }

  isRepliedTo = self->_isRepliedTo;
  if (isRepliedTo != [v4 isRepliedTo])
  {
    goto LABEL_72;
  }

  isSemanticMatch = self->_isSemanticMatch;
  if (isSemanticMatch != [v4 isSemanticMatch])
  {
    goto LABEL_72;
  }

  isSyntacticMatch = self->_isSyntacticMatch;
  if (isSyntacticMatch != [v4 isSyntacticMatch])
  {
    goto LABEL_72;
  }

  semanticScore = self->_semanticScore;
  [v4 semanticScore];
  if (semanticScore != v22)
  {
    goto LABEL_72;
  }

  syntacticScore = self->_syntacticScore;
  [v4 syntacticScore];
  if (syntacticScore != v24)
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors;
  if (countUnigramMatchInAuthors != [v4 countUnigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
  if (countBigramMatchInAuthors != [v4 countBigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthors = self->_countNgramMatchInAuthors;
  if (countNgramMatchInAuthors != [v4 countNgramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthors = self->_countUnigramPrefixMatchInAuthors;
  if (countUnigramPrefixMatchInAuthors != [v4 countUnigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthors = self->_countBigramPrefixMatchInAuthors;
  if (countBigramPrefixMatchInAuthors != [v4 countBigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthors = self->_countNgramPrefixMatchInAuthors;
  if (countNgramPrefixMatchInAuthors != [v4 countNgramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthorEmailAddresses = self->_countUnigramMatchInAuthorEmailAddresses;
  if (countUnigramMatchInAuthorEmailAddresses != [v4 countUnigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthorEmailAddresses = self->_countBigramMatchInAuthorEmailAddresses;
  if (countBigramMatchInAuthorEmailAddresses != [v4 countBigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthorEmailAddresses = self->_countNgramMatchInAuthorEmailAddresses;
  if (countNgramMatchInAuthorEmailAddresses != [v4 countNgramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthorEmailAddresses = self->_countUnigramPrefixMatchInAuthorEmailAddresses;
  if (countUnigramPrefixMatchInAuthorEmailAddresses != [v4 countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthorEmailAddresses = self->_countBigramPrefixMatchInAuthorEmailAddresses;
  if (countBigramPrefixMatchInAuthorEmailAddresses != [v4 countBigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthorEmailAddresses = self->_countNgramPrefixMatchInAuthorEmailAddresses;
  if (countNgramPrefixMatchInAuthorEmailAddresses != [v4 countNgramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInSubject = self->_countUnigramMatchInSubject;
  if (countUnigramMatchInSubject != [v4 countUnigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramMatchInSubject = self->_countBigramMatchInSubject;
  if (countBigramMatchInSubject != [v4 countBigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramMatchInSubject = self->_countNgramMatchInSubject;
  if (countNgramMatchInSubject != [v4 countNgramMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInSubject = self->_countUnigramPrefixMatchInSubject;
  if (countUnigramPrefixMatchInSubject != [v4 countUnigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInSubject = self->_countBigramPrefixMatchInSubject;
  if (countBigramPrefixMatchInSubject != [v4 countBigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInSubject = self->_countNgramPrefixMatchInSubject;
  if (countNgramPrefixMatchInSubject != [v4 countNgramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramMatchInTextContent = self->_countUnigramMatchInTextContent;
  if (countUnigramMatchInTextContent != [v4 countUnigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramMatchInTextContent = self->_countBigramMatchInTextContent;
  if (countBigramMatchInTextContent != [v4 countBigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramMatchInTextContent = self->_countNgramMatchInTextContent;
  if (countNgramMatchInTextContent != [v4 countNgramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInTextContent = self->_countUnigramPrefixMatchInTextContent;
  if (countUnigramPrefixMatchInTextContent != [v4 countUnigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInTextContent = self->_countBigramPrefixMatchInTextContent;
  if (countBigramPrefixMatchInTextContent != [v4 countBigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInTextContent = self->_countNgramPrefixMatchInTextContent;
  if (countNgramPrefixMatchInTextContent != [v4 countNgramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipients = self->_countUnigramMatchInRecipients;
  if (countUnigramMatchInRecipients != [v4 countUnigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipients = self->_countBigramMatchInRecipients;
  if (countBigramMatchInRecipients != [v4 countBigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipients = self->_countNgramMatchInRecipients;
  if (countNgramMatchInRecipients != [v4 countNgramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipients = self->_countUnigramPrefixMatchInRecipients;
  if (countUnigramPrefixMatchInRecipients != [v4 countUnigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipients = self->_countBigramPrefixMatchInRecipients;
  if (countBigramPrefixMatchInRecipients != [v4 countBigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipients = self->_countNgramPrefixMatchInRecipients;
  if (countNgramPrefixMatchInRecipients != [v4 countNgramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipientEmailAddresses = self->_countUnigramMatchInRecipientEmailAddresses;
  if (countUnigramMatchInRecipientEmailAddresses != [v4 countUnigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipientEmailAddresses = self->_countBigramMatchInRecipientEmailAddresses;
  if (countBigramMatchInRecipientEmailAddresses != [v4 countBigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipientEmailAddresses = self->_countNgramMatchInRecipientEmailAddresses;
  if (countNgramMatchInRecipientEmailAddresses != [v4 countNgramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipientEmailAddresses = self->_countUnigramPrefixMatchInRecipientEmailAddresses;
  if (countUnigramPrefixMatchInRecipientEmailAddresses != [v4 countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipientEmailAddresses = self->_countBigramPrefixMatchInRecipientEmailAddresses;
  if (countBigramPrefixMatchInRecipientEmailAddresses != [v4 countBigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipientEmailAddresses = self->_countNgramPrefixMatchInRecipientEmailAddresses;
  if (countNgramPrefixMatchInRecipientEmailAddresses != [v4 countNgramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInEmailAddresses = self->_countUnigramMatchInEmailAddresses;
  if (countUnigramMatchInEmailAddresses != [v4 countUnigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInEmailAddresses = self->_countBigramMatchInEmailAddresses;
  if (countBigramMatchInEmailAddresses != [v4 countBigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInEmailAddresses = self->_countNgramMatchInEmailAddresses;
  if (countNgramMatchInEmailAddresses != [v4 countNgramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInEmailAddresses = self->_countUnigramPrefixMatchInEmailAddresses;
  if (countUnigramPrefixMatchInEmailAddresses != [v4 countUnigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInEmailAddresses = self->_countBigramPrefixMatchInEmailAddresses;
  if (countBigramPrefixMatchInEmailAddresses != [v4 countBigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInEmailAddresses = self->_countNgramPrefixMatchInEmailAddresses;
  if (countNgramPrefixMatchInEmailAddresses != [v4 countNgramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAttachmentTypes = self->_countUnigramMatchInAttachmentTypes;
  if (countUnigramMatchInAttachmentTypes != [v4 countUnigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramMatchInAttachmentTypes = self->_countBigramMatchInAttachmentTypes;
  if (countBigramMatchInAttachmentTypes != [v4 countBigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countNgramMatchInAttachmentTypes = self->_countNgramMatchInAttachmentTypes;
  if (countNgramMatchInAttachmentTypes != [v4 countNgramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAttachmentTypes = self->_countUnigramPrefixMatchInAttachmentTypes;
  if (countUnigramPrefixMatchInAttachmentTypes != [v4 countUnigramPrefixMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAttachmentTypes = self->_countBigramPrefixMatchInAttachmentTypes;
  if (countBigramPrefixMatchInAttachmentTypes == [v4 countBigramPrefixMatchInAttachmentTypes] && (countNgramPrefixMatchInAttachmentTypes = self->_countNgramPrefixMatchInAttachmentTypes, countNgramPrefixMatchInAttachmentTypes == objc_msgSend(v4, "countNgramPrefixMatchInAttachmentTypes")) && (countUnigramMatchInAttachmentNames = self->_countUnigramMatchInAttachmentNames, countUnigramMatchInAttachmentNames == objc_msgSend(v4, "countUnigramMatchInAttachmentNames")) && (countBigramMatchInAttachmentNames = self->_countBigramMatchInAttachmentNames, countBigramMatchInAttachmentNames == objc_msgSend(v4, "countBigramMatchInAttachmentNames")) && (countNgramMatchInAttachmentNames = self->_countNgramMatchInAttachmentNames, countNgramMatchInAttachmentNames == objc_msgSend(v4, "countNgramMatchInAttachmentNames")) && (countUnigramPrefixMatchInAttachmentNames = self->_countUnigramPrefixMatchInAttachmentNames, countUnigramPrefixMatchInAttachmentNames == objc_msgSend(v4, "countUnigramPrefixMatchInAttachmentNames")) && (countBigramPrefixMatchInAttachmentNames = self->_countBigramPrefixMatchInAttachmentNames, countBigramPrefixMatchInAttachmentNames == objc_msgSend(v4, "countBigramPrefixMatchInAttachmentNames")))
  {
    countNgramPrefixMatchInAttachmentNames = self->_countNgramPrefixMatchInAttachmentNames;
    v79 = countNgramPrefixMatchInAttachmentNames == [v4 countNgramPrefixMatchInAttachmentNames];
  }

  else
  {
LABEL_72:
    v79 = 0;
  }

  return v79;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_SFPBMailRankingSignals *)self wasReorderedByRecency])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMailRankingSignals *)self numEngagements])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_SFPBMailRankingSignals *)self numDaysEngagedLast30Days])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_SFPBMailRankingSignals *)self averageEngagementAgeLast7Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBMailRankingSignals *)self averageEngagementAgeLast14Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBMailRankingSignals *)self averageEngagementAgeLast21Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBMailRankingSignals *)self averageEngagementAgeLast30Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBMailRankingSignals *)self daysSinceReceipt])
  {
    PBDataWriterWriteUint64Field();
  }

  [(_SFPBMailRankingSignals *)self l1Score];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBMailRankingSignals *)self l2Score];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBMailRankingSignals *)self isFlagged])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMailRankingSignals *)self isRepliedTo])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMailRankingSignals *)self isSemanticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMailRankingSignals *)self isSyntacticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBMailRankingSignals *)self semanticScore];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBMailRankingSignals *)self syntacticScore];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countNgramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countUnigramPrefixMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_SFPBMailRankingSignals *)self countBigramPrefixMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  v8 = [(_SFPBMailRankingSignals *)self countNgramPrefixMatchInAttachmentNames];
  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteUint32Field();
    v9 = v10;
  }
}

@end