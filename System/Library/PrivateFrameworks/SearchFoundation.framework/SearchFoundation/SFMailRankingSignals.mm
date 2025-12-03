@interface SFMailRankingSignals
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMailRankingSignals)initWithCoder:(id)coder;
- (SFMailRankingSignals)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMailRankingSignals

- (unint64_t)hash
{
  wasReorderedByRecency = [(SFMailRankingSignals *)self wasReorderedByRecency];
  numEngagements = [(SFMailRankingSignals *)self numEngagements];
  v5 = numEngagements ^ [(SFMailRankingSignals *)self numDaysEngagedLast30Days];
  averageEngagementAgeLast7Days = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
  v6 = v5 ^ [averageEngagementAgeLast7Days hash] ^ wasReorderedByRecency;
  averageEngagementAgeLast14Days = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
  v8 = [averageEngagementAgeLast14Days hash];
  averageEngagementAgeLast21Days = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
  v10 = v8 ^ [averageEngagementAgeLast21Days hash];
  averageEngagementAgeLast30Days = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
  v12 = v6 ^ v10 ^ [averageEngagementAgeLast30Days hash];
  daysSinceReceipt = [(SFMailRankingSignals *)self daysSinceReceipt];
  l1Score = [(SFMailRankingSignals *)self l1Score];
  v15 = daysSinceReceipt ^ [l1Score hash];
  l2Score = [(SFMailRankingSignals *)self l2Score];
  v17 = v15 ^ [l2Score hash];
  v18 = v12 ^ v17 ^ [(SFMailRankingSignals *)self isFlagged];
  isRepliedTo = [(SFMailRankingSignals *)self isRepliedTo];
  v20 = isRepliedTo ^ [(SFMailRankingSignals *)self isSemanticMatch];
  v21 = v20 ^ [(SFMailRankingSignals *)self isSyntacticMatch];
  semanticScore = [(SFMailRankingSignals *)self semanticScore];
  v23 = v18 ^ v21 ^ [semanticScore hash];
  syntacticScore = [(SFMailRankingSignals *)self syntacticScore];
  v25 = [syntacticScore hash];
  v26 = v25 ^ [(SFMailRankingSignals *)self countUnigramMatchInAuthors];
  v27 = v26 ^ [(SFMailRankingSignals *)self countBigramMatchInAuthors];
  v28 = v27 ^ [(SFMailRankingSignals *)self countNgramMatchInAuthors];
  v29 = v28 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthors];
  v30 = v23 ^ v29 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthors];
  countNgramPrefixMatchInAuthors = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthors];
  v32 = countNgramPrefixMatchInAuthors ^ [(SFMailRankingSignals *)self countUnigramMatchInAuthorEmailAddresses];
  v33 = v32 ^ [(SFMailRankingSignals *)self countBigramMatchInAuthorEmailAddresses];
  v34 = v33 ^ [(SFMailRankingSignals *)self countNgramMatchInAuthorEmailAddresses];
  v35 = v34 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthorEmailAddresses];
  v36 = v35 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthorEmailAddresses];
  v37 = v36 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthorEmailAddresses];
  v38 = v30 ^ v37 ^ [(SFMailRankingSignals *)self countUnigramMatchInSubject];
  countBigramMatchInSubject = [(SFMailRankingSignals *)self countBigramMatchInSubject];
  v40 = countBigramMatchInSubject ^ [(SFMailRankingSignals *)self countNgramMatchInSubject];
  v41 = v40 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInSubject];
  v42 = v41 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInSubject];
  v43 = v42 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInSubject];
  v44 = v43 ^ [(SFMailRankingSignals *)self countUnigramMatchInTextContent];
  v45 = v44 ^ [(SFMailRankingSignals *)self countBigramMatchInTextContent];
  v46 = v45 ^ [(SFMailRankingSignals *)self countNgramMatchInTextContent];
  v47 = v38 ^ v46 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInTextContent];
  countBigramPrefixMatchInTextContent = [(SFMailRankingSignals *)self countBigramPrefixMatchInTextContent];
  v49 = countBigramPrefixMatchInTextContent ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInTextContent];
  v50 = v49 ^ [(SFMailRankingSignals *)self countUnigramMatchInRecipients];
  v51 = v50 ^ [(SFMailRankingSignals *)self countBigramMatchInRecipients];
  v52 = v51 ^ [(SFMailRankingSignals *)self countNgramMatchInRecipients];
  v53 = v52 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipients];
  v54 = v53 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipients];
  v55 = v54 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipients];
  v56 = v55 ^ [(SFMailRankingSignals *)self countUnigramMatchInRecipientEmailAddresses];
  v57 = v47 ^ v56 ^ [(SFMailRankingSignals *)self countBigramMatchInRecipientEmailAddresses];
  countNgramMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countNgramMatchInRecipientEmailAddresses];
  v59 = countNgramMatchInRecipientEmailAddresses ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipientEmailAddresses];
  v60 = v59 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipientEmailAddresses];
  v61 = v60 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipientEmailAddresses];
  v62 = v61 ^ [(SFMailRankingSignals *)self countUnigramMatchInEmailAddresses];
  v63 = v62 ^ [(SFMailRankingSignals *)self countBigramMatchInEmailAddresses];
  v64 = v63 ^ [(SFMailRankingSignals *)self countNgramMatchInEmailAddresses];
  v65 = v64 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInEmailAddresses];
  v66 = v65 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInEmailAddresses];
  v67 = v66 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInEmailAddresses];
  v68 = v57 ^ v67 ^ [(SFMailRankingSignals *)self countUnigramMatchInAttachmentTypes];
  countBigramMatchInAttachmentTypes = [(SFMailRankingSignals *)self countBigramMatchInAttachmentTypes];
  v70 = countBigramMatchInAttachmentTypes ^ [(SFMailRankingSignals *)self countNgramMatchInAttachmentTypes];
  v71 = v70 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentTypes];
  v72 = v71 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentTypes];
  v73 = v72 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentTypes];
  v74 = v73 ^ [(SFMailRankingSignals *)self countUnigramMatchInAttachmentNames];
  v75 = v74 ^ [(SFMailRankingSignals *)self countBigramMatchInAttachmentNames];
  v76 = v75 ^ [(SFMailRankingSignals *)self countNgramMatchInAttachmentNames];
  v77 = v76 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentNames];
  v78 = v77 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentNames];
  v79 = v78 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentNames];

  return v68 ^ v79;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    if ([(SFMailRankingSignals *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      wasReorderedByRecency = [(SFMailRankingSignals *)self wasReorderedByRecency];
      if (wasReorderedByRecency != [(SFMailRankingSignals *)v6 wasReorderedByRecency]|| (v8 = [(SFMailRankingSignals *)self numEngagements], v8 != [(SFMailRankingSignals *)v6 numEngagements]) || (v9 = [(SFMailRankingSignals *)self numDaysEngagedLast30Days], v9 != [(SFMailRankingSignals *)v6 numDaysEngagedLast30Days]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      averageEngagementAgeLast7Days = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
      averageEngagementAgeLast7Days2 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast7Days];
      if ((averageEngagementAgeLast7Days != 0) == (averageEngagementAgeLast7Days2 == 0))
      {
        v14 = 0;
LABEL_57:

        goto LABEL_13;
      }

      averageEngagementAgeLast7Days3 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
      if (averageEngagementAgeLast7Days3)
      {
        averageEngagementAgeLast7Days4 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
        averageEngagementAgeLast7Days5 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast7Days];
        if (![averageEngagementAgeLast7Days4 isEqual:averageEngagementAgeLast7Days5])
        {
          v14 = 0;
          goto LABEL_55;
        }

        v133 = averageEngagementAgeLast7Days5;
        v134 = averageEngagementAgeLast7Days4;
      }

      averageEngagementAgeLast14Days = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
      averageEngagementAgeLast14Days2 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast14Days];
      if ((averageEngagementAgeLast14Days != 0) == (averageEngagementAgeLast14Days2 == 0))
      {
        goto LABEL_53;
      }

      averageEngagementAgeLast14Days3 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
      if (averageEngagementAgeLast14Days3)
      {
        averageEngagementAgeLast14Days4 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
        averageEngagementAgeLast14Days5 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast14Days];
        v130 = averageEngagementAgeLast14Days4;
        v21 = averageEngagementAgeLast14Days4;
        averageEngagementAgeLast7Days5 = averageEngagementAgeLast14Days5;
        if (![v21 isEqual:averageEngagementAgeLast14Days5])
        {
          goto LABEL_52;
        }
      }

      v131 = averageEngagementAgeLast14Days;
      v132 = averageEngagementAgeLast14Days3;
      averageEngagementAgeLast21Days = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
      averageEngagementAgeLast21Days2 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast21Days];
      if ((averageEngagementAgeLast21Days != 0) == (averageEngagementAgeLast21Days2 == 0))
      {

        goto LABEL_51;
      }

      v127 = averageEngagementAgeLast21Days;
      v128 = averageEngagementAgeLast21Days2;
      averageEngagementAgeLast21Days3 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
      if (averageEngagementAgeLast21Days3)
      {
        averageEngagementAgeLast21Days4 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
        averageEngagementAgeLast21Days5 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast21Days];
        v126 = averageEngagementAgeLast21Days4;
        if (![averageEngagementAgeLast21Days4 isEqual:averageEngagementAgeLast21Days5])
        {
          goto LABEL_49;
        }
      }

      averageEngagementAgeLast30Days = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
      averageEngagementAgeLast30Days2 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast30Days];
      if ((averageEngagementAgeLast30Days != 0) == (averageEngagementAgeLast30Days2 == 0))
      {

        goto LABEL_48;
      }

      v124 = averageEngagementAgeLast30Days2;
      v123 = averageEngagementAgeLast30Days;
      averageEngagementAgeLast30Days3 = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
      if (averageEngagementAgeLast30Days3)
      {
        [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
        v29 = v28 = averageEngagementAgeLast14Days2;
        averageEngagementAgeLast30Days4 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast30Days];
        v121 = v29;
        v31 = v29;
        averageEngagementAgeLast14Days2 = v28;
        averageEngagementAgeLast30Days = averageEngagementAgeLast30Days4;
        if (![v31 isEqual:averageEngagementAgeLast30Days4])
        {
          goto LABEL_37;
        }
      }

      v122 = averageEngagementAgeLast30Days3;
      daysSinceReceipt = [(SFMailRankingSignals *)self daysSinceReceipt];
      if (daysSinceReceipt != [(SFMailRankingSignals *)v6 daysSinceReceipt])
      {
        averageEngagementAgeLast30Days3 = v122;
        if (!v122)
        {
LABEL_47:

LABEL_48:
          averageEngagementAgeLast14Days3 = v132;
          if (!averageEngagementAgeLast21Days3)
          {
LABEL_50:

LABEL_51:
            averageEngagementAgeLast14Days = v131;
            if (averageEngagementAgeLast14Days3)
            {
LABEL_52:
            }

LABEL_53:

            v14 = 0;
            if (!averageEngagementAgeLast7Days3)
            {
LABEL_56:

              goto LABEL_57;
            }

            averageEngagementAgeLast7Days5 = v133;
            averageEngagementAgeLast7Days4 = v134;
LABEL_55:

            goto LABEL_56;
          }

LABEL_49:

          goto LABEL_50;
        }

LABEL_37:

        goto LABEL_47;
      }

      v120 = averageEngagementAgeLast30Days;
      l1Score = [(SFMailRankingSignals *)self l1Score];
      l1Score2 = [(SFMailRankingSignals *)v6 l1Score];
      if ((l1Score != 0) == (l1Score2 == 0))
      {

        goto LABEL_46;
      }

      v118 = l1Score;
      v119 = l1Score2;
      l1Score3 = [(SFMailRankingSignals *)self l1Score];
      if (l1Score3)
      {
        l1Score4 = [(SFMailRankingSignals *)self l1Score];
        l1Score5 = [(SFMailRankingSignals *)v6 l1Score];
        v115 = l1Score4;
        if (![l1Score4 isEqual:?])
        {
LABEL_44:

LABEL_45:
LABEL_46:
          averageEngagementAgeLast30Days3 = v122;
          averageEngagementAgeLast30Days = v120;
          if (!v122)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }
      }

      v117 = l1Score3;
      l2Score = [(SFMailRankingSignals *)self l2Score];
      l2Score2 = [(SFMailRankingSignals *)v6 l2Score];
      if ((l2Score != 0) == (l2Score2 == 0))
      {

        l1Score3 = v117;
        if (!v117)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      v113 = averageEngagementAgeLast7Days5;
      l2Score3 = [(SFMailRankingSignals *)self l2Score];
      if (l2Score3)
      {
        l2Score4 = [(SFMailRankingSignals *)self l2Score];
        l2Score5 = [(SFMailRankingSignals *)v6 l2Score];
        v112 = l2Score4;
        if (![l2Score4 isEqual:?])
        {
          goto LABEL_69;
        }
      }

      isFlagged = [(SFMailRankingSignals *)self isFlagged];
      if (isFlagged == [(SFMailRankingSignals *)v6 isFlagged])
      {
        isRepliedTo = [(SFMailRankingSignals *)self isRepliedTo];
        if (isRepliedTo == [(SFMailRankingSignals *)v6 isRepliedTo])
        {
          isSemanticMatch = [(SFMailRankingSignals *)self isSemanticMatch];
          if (isSemanticMatch == [(SFMailRankingSignals *)v6 isSemanticMatch])
          {
            isSyntacticMatch = [(SFMailRankingSignals *)self isSyntacticMatch];
            if (isSyntacticMatch == [(SFMailRankingSignals *)v6 isSyntacticMatch])
            {
              semanticScore = [(SFMailRankingSignals *)self semanticScore];
              semanticScore2 = [(SFMailRankingSignals *)v6 semanticScore];
              if ((semanticScore != 0) != (semanticScore2 == 0))
              {
                semanticScore3 = [(SFMailRankingSignals *)self semanticScore];
                if (semanticScore3)
                {
                  semanticScore4 = [(SFMailRankingSignals *)self semanticScore];
                  semanticScore5 = [(SFMailRankingSignals *)v6 semanticScore];
                  v105 = semanticScore4;
                  if (![semanticScore4 isEqual:?])
                  {
                    v14 = 0;
                    goto LABEL_145;
                  }
                }

                syntacticScore = [(SFMailRankingSignals *)self syntacticScore];
                syntacticScore2 = [(SFMailRankingSignals *)v6 syntacticScore];
                if ((syntacticScore != 0) == (syntacticScore2 == 0))
                {

                  v14 = 0;
                  goto LABEL_144;
                }

                syntacticScore3 = [(SFMailRankingSignals *)self syntacticScore];
                if (!syntacticScore3 || (-[SFMailRankingSignals syntacticScore](self, "syntacticScore"), v45 = objc_claimAutoreleasedReturnValue(), -[SFMailRankingSignals syntacticScore](v6, "syntacticScore"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v45, [v45 isEqual:?]))
                {
                  countUnigramMatchInAuthors = [(SFMailRankingSignals *)self countUnigramMatchInAuthors];
                  if (countUnigramMatchInAuthors != [(SFMailRankingSignals *)v6 countUnigramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInAuthors = [(SFMailRankingSignals *)self countBigramMatchInAuthors];
                  if (countBigramMatchInAuthors != [(SFMailRankingSignals *)v6 countBigramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInAuthors = [(SFMailRankingSignals *)self countNgramMatchInAuthors];
                  if (countNgramMatchInAuthors != [(SFMailRankingSignals *)v6 countNgramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInAuthors = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthors];
                  if (countUnigramPrefixMatchInAuthors != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInAuthors = [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthors];
                  if (countBigramPrefixMatchInAuthors != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInAuthors = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthors];
                  if (countNgramPrefixMatchInAuthors != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countUnigramMatchInAuthorEmailAddresses];
                  if (countUnigramMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countBigramMatchInAuthorEmailAddresses];
                  if (countBigramMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countBigramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countNgramMatchInAuthorEmailAddresses];
                  if (countNgramMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countNgramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthorEmailAddresses];
                  if (countUnigramPrefixMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthorEmailAddresses];
                  if (countBigramPrefixMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInAuthorEmailAddresses = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthorEmailAddresses];
                  if (countNgramPrefixMatchInAuthorEmailAddresses != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInSubject = [(SFMailRankingSignals *)self countUnigramMatchInSubject];
                  if (countUnigramMatchInSubject != [(SFMailRankingSignals *)v6 countUnigramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInSubject = [(SFMailRankingSignals *)self countBigramMatchInSubject];
                  if (countBigramMatchInSubject != [(SFMailRankingSignals *)v6 countBigramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInSubject = [(SFMailRankingSignals *)self countNgramMatchInSubject];
                  if (countNgramMatchInSubject != [(SFMailRankingSignals *)v6 countNgramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInSubject = [(SFMailRankingSignals *)self countUnigramPrefixMatchInSubject];
                  if (countUnigramPrefixMatchInSubject != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInSubject = [(SFMailRankingSignals *)self countBigramPrefixMatchInSubject];
                  if (countBigramPrefixMatchInSubject != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInSubject = [(SFMailRankingSignals *)self countNgramPrefixMatchInSubject];
                  if (countNgramPrefixMatchInSubject != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInTextContent = [(SFMailRankingSignals *)self countUnigramMatchInTextContent];
                  if (countUnigramMatchInTextContent != [(SFMailRankingSignals *)v6 countUnigramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInTextContent = [(SFMailRankingSignals *)self countBigramMatchInTextContent];
                  if (countBigramMatchInTextContent != [(SFMailRankingSignals *)v6 countBigramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInTextContent = [(SFMailRankingSignals *)self countNgramMatchInTextContent];
                  if (countNgramMatchInTextContent != [(SFMailRankingSignals *)v6 countNgramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInTextContent = [(SFMailRankingSignals *)self countUnigramPrefixMatchInTextContent];
                  if (countUnigramPrefixMatchInTextContent != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInTextContent = [(SFMailRankingSignals *)self countBigramPrefixMatchInTextContent];
                  if (countBigramPrefixMatchInTextContent != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInTextContent = [(SFMailRankingSignals *)self countNgramPrefixMatchInTextContent];
                  if (countNgramPrefixMatchInTextContent != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInRecipients = [(SFMailRankingSignals *)self countUnigramMatchInRecipients];
                  if (countUnigramMatchInRecipients != [(SFMailRankingSignals *)v6 countUnigramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInRecipients = [(SFMailRankingSignals *)self countBigramMatchInRecipients];
                  if (countBigramMatchInRecipients != [(SFMailRankingSignals *)v6 countBigramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInRecipients = [(SFMailRankingSignals *)self countNgramMatchInRecipients];
                  if (countNgramMatchInRecipients != [(SFMailRankingSignals *)v6 countNgramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInRecipients = [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipients];
                  if (countUnigramPrefixMatchInRecipients != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInRecipients = [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipients];
                  if (countBigramPrefixMatchInRecipients != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInRecipients = [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipients];
                  if (countNgramPrefixMatchInRecipients != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countUnigramMatchInRecipientEmailAddresses];
                  if (countUnigramMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countBigramMatchInRecipientEmailAddresses];
                  if (countBigramMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countBigramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countNgramMatchInRecipientEmailAddresses];
                  if (countNgramMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countNgramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipientEmailAddresses];
                  if (countUnigramPrefixMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipientEmailAddresses];
                  if (countBigramPrefixMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInRecipientEmailAddresses = [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipientEmailAddresses];
                  if (countNgramPrefixMatchInRecipientEmailAddresses != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInEmailAddresses = [(SFMailRankingSignals *)self countUnigramMatchInEmailAddresses];
                  if (countUnigramMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInEmailAddresses = [(SFMailRankingSignals *)self countBigramMatchInEmailAddresses];
                  if (countBigramMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countBigramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInEmailAddresses = [(SFMailRankingSignals *)self countNgramMatchInEmailAddresses];
                  if (countNgramMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countNgramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInEmailAddresses = [(SFMailRankingSignals *)self countUnigramPrefixMatchInEmailAddresses];
                  if (countUnigramPrefixMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInEmailAddresses = [(SFMailRankingSignals *)self countBigramPrefixMatchInEmailAddresses];
                  if (countBigramPrefixMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countNgramPrefixMatchInEmailAddresses = [(SFMailRankingSignals *)self countNgramPrefixMatchInEmailAddresses];
                  if (countNgramPrefixMatchInEmailAddresses != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  countUnigramMatchInAttachmentTypes = [(SFMailRankingSignals *)self countUnigramMatchInAttachmentTypes];
                  if (countUnigramMatchInAttachmentTypes != [(SFMailRankingSignals *)v6 countUnigramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  countBigramMatchInAttachmentTypes = [(SFMailRankingSignals *)self countBigramMatchInAttachmentTypes];
                  if (countBigramMatchInAttachmentTypes != [(SFMailRankingSignals *)v6 countBigramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  countNgramMatchInAttachmentTypes = [(SFMailRankingSignals *)self countNgramMatchInAttachmentTypes];
                  if (countNgramMatchInAttachmentTypes != [(SFMailRankingSignals *)v6 countNgramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  countUnigramPrefixMatchInAttachmentTypes = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentTypes];
                  if (countUnigramPrefixMatchInAttachmentTypes != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  countBigramPrefixMatchInAttachmentTypes = [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentTypes];
                  if (countBigramPrefixMatchInAttachmentTypes == [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAttachmentTypes]&& (v93 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentTypes], v93 == [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAttachmentTypes]) && (v94 = [(SFMailRankingSignals *)self countUnigramMatchInAttachmentNames], v94 == [(SFMailRankingSignals *)v6 countUnigramMatchInAttachmentNames]) && (v95 = [(SFMailRankingSignals *)self countBigramMatchInAttachmentNames], v95 == [(SFMailRankingSignals *)v6 countBigramMatchInAttachmentNames]) && (v96 = [(SFMailRankingSignals *)self countNgramMatchInAttachmentNames], v96 == [(SFMailRankingSignals *)v6 countNgramMatchInAttachmentNames]) && (v97 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentNames], v97 == [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAttachmentNames]) && (v98 = [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentNames], v98 == [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAttachmentNames]))
                  {
                    countNgramPrefixMatchInAttachmentNames = [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentNames];
                    v14 = countNgramPrefixMatchInAttachmentNames == [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAttachmentNames];
                    v100 = v14;
                  }

                  else
                  {
LABEL_140:
                    v14 = 0;
                    v100 = 0;
                  }

                  if (!syntacticScore3)
                  {

                    v14 = v100;
LABEL_144:
                    if (!semanticScore3)
                    {
LABEL_146:

                      if (l2Score3)
                      {
                      }

                      if (v117)
                      {
                      }

                      if (v122)
                      {
                      }

                      if (averageEngagementAgeLast21Days3)
                      {
                      }

                      if (v132)
                      {
                      }

LABEL_79:
                      averageEngagementAgeLast7Days5 = v133;
                      averageEngagementAgeLast7Days4 = v134;
                      if (!averageEngagementAgeLast7Days3)
                      {
                        goto LABEL_56;
                      }

                      goto LABEL_55;
                    }

LABEL_145:

                    goto LABEL_146;
                  }
                }

                else
                {
                  v14 = 0;
                }

                goto LABEL_144;
              }
            }
          }
        }
      }

      if (!l2Score3)
      {
LABEL_70:

        if (v117)
        {
        }

        if (v122)
        {
        }

        if (averageEngagementAgeLast21Days3)
        {
        }

        if (v132)
        {
        }

        v14 = 0;
        goto LABEL_79;
      }

LABEL_69:

      goto LABEL_70;
    }

    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setWasReorderedByRecency:{-[SFMailRankingSignals wasReorderedByRecency](self, "wasReorderedByRecency")}];
  [v4 setNumEngagements:{-[SFMailRankingSignals numEngagements](self, "numEngagements")}];
  [v4 setNumDaysEngagedLast30Days:{-[SFMailRankingSignals numDaysEngagedLast30Days](self, "numDaysEngagedLast30Days")}];
  averageEngagementAgeLast7Days = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
  v6 = [averageEngagementAgeLast7Days copy];
  [v4 setAverageEngagementAgeLast7Days:v6];

  averageEngagementAgeLast14Days = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
  v8 = [averageEngagementAgeLast14Days copy];
  [v4 setAverageEngagementAgeLast14Days:v8];

  averageEngagementAgeLast21Days = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
  v10 = [averageEngagementAgeLast21Days copy];
  [v4 setAverageEngagementAgeLast21Days:v10];

  averageEngagementAgeLast30Days = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
  v12 = [averageEngagementAgeLast30Days copy];
  [v4 setAverageEngagementAgeLast30Days:v12];

  [v4 setDaysSinceReceipt:{-[SFMailRankingSignals daysSinceReceipt](self, "daysSinceReceipt")}];
  l1Score = [(SFMailRankingSignals *)self l1Score];
  v14 = [l1Score copy];
  [v4 setL1Score:v14];

  l2Score = [(SFMailRankingSignals *)self l2Score];
  v16 = [l2Score copy];
  [v4 setL2Score:v16];

  [v4 setIsFlagged:{-[SFMailRankingSignals isFlagged](self, "isFlagged")}];
  [v4 setIsRepliedTo:{-[SFMailRankingSignals isRepliedTo](self, "isRepliedTo")}];
  [v4 setIsSemanticMatch:{-[SFMailRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
  [v4 setIsSyntacticMatch:{-[SFMailRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
  semanticScore = [(SFMailRankingSignals *)self semanticScore];
  v18 = [semanticScore copy];
  [v4 setSemanticScore:v18];

  syntacticScore = [(SFMailRankingSignals *)self syntacticScore];
  v20 = [syntacticScore copy];
  [v4 setSyntacticScore:v20];

  [v4 setCountUnigramMatchInAuthors:{-[SFMailRankingSignals countUnigramMatchInAuthors](self, "countUnigramMatchInAuthors")}];
  [v4 setCountBigramMatchInAuthors:{-[SFMailRankingSignals countBigramMatchInAuthors](self, "countBigramMatchInAuthors")}];
  [v4 setCountNgramMatchInAuthors:{-[SFMailRankingSignals countNgramMatchInAuthors](self, "countNgramMatchInAuthors")}];
  [v4 setCountUnigramPrefixMatchInAuthors:{-[SFMailRankingSignals countUnigramPrefixMatchInAuthors](self, "countUnigramPrefixMatchInAuthors")}];
  [v4 setCountBigramPrefixMatchInAuthors:{-[SFMailRankingSignals countBigramPrefixMatchInAuthors](self, "countBigramPrefixMatchInAuthors")}];
  [v4 setCountNgramPrefixMatchInAuthors:{-[SFMailRankingSignals countNgramPrefixMatchInAuthors](self, "countNgramPrefixMatchInAuthors")}];
  [v4 setCountUnigramMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countUnigramMatchInAuthorEmailAddresses](self, "countUnigramMatchInAuthorEmailAddresses")}];
  [v4 setCountBigramMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countBigramMatchInAuthorEmailAddresses](self, "countBigramMatchInAuthorEmailAddresses")}];
  [v4 setCountNgramMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countNgramMatchInAuthorEmailAddresses](self, "countNgramMatchInAuthorEmailAddresses")}];
  [v4 setCountUnigramPrefixMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countUnigramPrefixMatchInAuthorEmailAddresses](self, "countUnigramPrefixMatchInAuthorEmailAddresses")}];
  [v4 setCountBigramPrefixMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countBigramPrefixMatchInAuthorEmailAddresses](self, "countBigramPrefixMatchInAuthorEmailAddresses")}];
  [v4 setCountNgramPrefixMatchInAuthorEmailAddresses:{-[SFMailRankingSignals countNgramPrefixMatchInAuthorEmailAddresses](self, "countNgramPrefixMatchInAuthorEmailAddresses")}];
  [v4 setCountUnigramMatchInSubject:{-[SFMailRankingSignals countUnigramMatchInSubject](self, "countUnigramMatchInSubject")}];
  [v4 setCountBigramMatchInSubject:{-[SFMailRankingSignals countBigramMatchInSubject](self, "countBigramMatchInSubject")}];
  [v4 setCountNgramMatchInSubject:{-[SFMailRankingSignals countNgramMatchInSubject](self, "countNgramMatchInSubject")}];
  [v4 setCountUnigramPrefixMatchInSubject:{-[SFMailRankingSignals countUnigramPrefixMatchInSubject](self, "countUnigramPrefixMatchInSubject")}];
  [v4 setCountBigramPrefixMatchInSubject:{-[SFMailRankingSignals countBigramPrefixMatchInSubject](self, "countBigramPrefixMatchInSubject")}];
  [v4 setCountNgramPrefixMatchInSubject:{-[SFMailRankingSignals countNgramPrefixMatchInSubject](self, "countNgramPrefixMatchInSubject")}];
  [v4 setCountUnigramMatchInTextContent:{-[SFMailRankingSignals countUnigramMatchInTextContent](self, "countUnigramMatchInTextContent")}];
  [v4 setCountBigramMatchInTextContent:{-[SFMailRankingSignals countBigramMatchInTextContent](self, "countBigramMatchInTextContent")}];
  [v4 setCountNgramMatchInTextContent:{-[SFMailRankingSignals countNgramMatchInTextContent](self, "countNgramMatchInTextContent")}];
  [v4 setCountUnigramPrefixMatchInTextContent:{-[SFMailRankingSignals countUnigramPrefixMatchInTextContent](self, "countUnigramPrefixMatchInTextContent")}];
  [v4 setCountBigramPrefixMatchInTextContent:{-[SFMailRankingSignals countBigramPrefixMatchInTextContent](self, "countBigramPrefixMatchInTextContent")}];
  [v4 setCountNgramPrefixMatchInTextContent:{-[SFMailRankingSignals countNgramPrefixMatchInTextContent](self, "countNgramPrefixMatchInTextContent")}];
  [v4 setCountUnigramMatchInRecipients:{-[SFMailRankingSignals countUnigramMatchInRecipients](self, "countUnigramMatchInRecipients")}];
  [v4 setCountBigramMatchInRecipients:{-[SFMailRankingSignals countBigramMatchInRecipients](self, "countBigramMatchInRecipients")}];
  [v4 setCountNgramMatchInRecipients:{-[SFMailRankingSignals countNgramMatchInRecipients](self, "countNgramMatchInRecipients")}];
  [v4 setCountUnigramPrefixMatchInRecipients:{-[SFMailRankingSignals countUnigramPrefixMatchInRecipients](self, "countUnigramPrefixMatchInRecipients")}];
  [v4 setCountBigramPrefixMatchInRecipients:{-[SFMailRankingSignals countBigramPrefixMatchInRecipients](self, "countBigramPrefixMatchInRecipients")}];
  [v4 setCountNgramPrefixMatchInRecipients:{-[SFMailRankingSignals countNgramPrefixMatchInRecipients](self, "countNgramPrefixMatchInRecipients")}];
  [v4 setCountUnigramMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countUnigramMatchInRecipientEmailAddresses](self, "countUnigramMatchInRecipientEmailAddresses")}];
  [v4 setCountBigramMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countBigramMatchInRecipientEmailAddresses](self, "countBigramMatchInRecipientEmailAddresses")}];
  [v4 setCountNgramMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countNgramMatchInRecipientEmailAddresses](self, "countNgramMatchInRecipientEmailAddresses")}];
  [v4 setCountUnigramPrefixMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countUnigramPrefixMatchInRecipientEmailAddresses](self, "countUnigramPrefixMatchInRecipientEmailAddresses")}];
  [v4 setCountBigramPrefixMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countBigramPrefixMatchInRecipientEmailAddresses](self, "countBigramPrefixMatchInRecipientEmailAddresses")}];
  [v4 setCountNgramPrefixMatchInRecipientEmailAddresses:{-[SFMailRankingSignals countNgramPrefixMatchInRecipientEmailAddresses](self, "countNgramPrefixMatchInRecipientEmailAddresses")}];
  [v4 setCountUnigramMatchInEmailAddresses:{-[SFMailRankingSignals countUnigramMatchInEmailAddresses](self, "countUnigramMatchInEmailAddresses")}];
  [v4 setCountBigramMatchInEmailAddresses:{-[SFMailRankingSignals countBigramMatchInEmailAddresses](self, "countBigramMatchInEmailAddresses")}];
  [v4 setCountNgramMatchInEmailAddresses:{-[SFMailRankingSignals countNgramMatchInEmailAddresses](self, "countNgramMatchInEmailAddresses")}];
  [v4 setCountUnigramPrefixMatchInEmailAddresses:{-[SFMailRankingSignals countUnigramPrefixMatchInEmailAddresses](self, "countUnigramPrefixMatchInEmailAddresses")}];
  [v4 setCountBigramPrefixMatchInEmailAddresses:{-[SFMailRankingSignals countBigramPrefixMatchInEmailAddresses](self, "countBigramPrefixMatchInEmailAddresses")}];
  [v4 setCountNgramPrefixMatchInEmailAddresses:{-[SFMailRankingSignals countNgramPrefixMatchInEmailAddresses](self, "countNgramPrefixMatchInEmailAddresses")}];
  [v4 setCountUnigramMatchInAttachmentTypes:{-[SFMailRankingSignals countUnigramMatchInAttachmentTypes](self, "countUnigramMatchInAttachmentTypes")}];
  [v4 setCountBigramMatchInAttachmentTypes:{-[SFMailRankingSignals countBigramMatchInAttachmentTypes](self, "countBigramMatchInAttachmentTypes")}];
  [v4 setCountNgramMatchInAttachmentTypes:{-[SFMailRankingSignals countNgramMatchInAttachmentTypes](self, "countNgramMatchInAttachmentTypes")}];
  [v4 setCountUnigramPrefixMatchInAttachmentTypes:{-[SFMailRankingSignals countUnigramPrefixMatchInAttachmentTypes](self, "countUnigramPrefixMatchInAttachmentTypes")}];
  [v4 setCountBigramPrefixMatchInAttachmentTypes:{-[SFMailRankingSignals countBigramPrefixMatchInAttachmentTypes](self, "countBigramPrefixMatchInAttachmentTypes")}];
  [v4 setCountNgramPrefixMatchInAttachmentTypes:{-[SFMailRankingSignals countNgramPrefixMatchInAttachmentTypes](self, "countNgramPrefixMatchInAttachmentTypes")}];
  [v4 setCountUnigramMatchInAttachmentNames:{-[SFMailRankingSignals countUnigramMatchInAttachmentNames](self, "countUnigramMatchInAttachmentNames")}];
  [v4 setCountBigramMatchInAttachmentNames:{-[SFMailRankingSignals countBigramMatchInAttachmentNames](self, "countBigramMatchInAttachmentNames")}];
  [v4 setCountNgramMatchInAttachmentNames:{-[SFMailRankingSignals countNgramMatchInAttachmentNames](self, "countNgramMatchInAttachmentNames")}];
  [v4 setCountUnigramPrefixMatchInAttachmentNames:{-[SFMailRankingSignals countUnigramPrefixMatchInAttachmentNames](self, "countUnigramPrefixMatchInAttachmentNames")}];
  [v4 setCountBigramPrefixMatchInAttachmentNames:{-[SFMailRankingSignals countBigramPrefixMatchInAttachmentNames](self, "countBigramPrefixMatchInAttachmentNames")}];
  [v4 setCountNgramPrefixMatchInAttachmentNames:{-[SFMailRankingSignals countNgramPrefixMatchInAttachmentNames](self, "countNgramPrefixMatchInAttachmentNames")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMailRankingSignals alloc] initWithFacade:self];
  jsonData = [(_SFPBMailRankingSignals *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMailRankingSignals alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMailRankingSignals *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMailRankingSignals alloc] initWithFacade:self];
  data = [(_SFPBMailRankingSignals *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMailRankingSignals)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMailRankingSignals alloc] initWithData:v5];
  v7 = [(SFMailRankingSignals *)self initWithProtobuf:v6];

  return v7;
}

- (SFMailRankingSignals)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFMailRankingSignals;
  v5 = [(SFMailRankingSignals *)&v24 init];

  if (v5)
  {
    if ([protobufCopy wasReorderedByRecency])
    {
      -[SFMailRankingSignals setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [protobufCopy wasReorderedByRecency]);
    }

    if ([protobufCopy numEngagements])
    {
      -[SFMailRankingSignals setNumEngagements:](v5, "setNumEngagements:", [protobufCopy numEngagements]);
    }

    if ([protobufCopy numDaysEngagedLast30Days])
    {
      -[SFMailRankingSignals setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [protobufCopy numDaysEngagedLast30Days]);
    }

    if ([protobufCopy averageEngagementAgeLast7Days])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "averageEngagementAgeLast7Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast7Days:v6];
    }

    if ([protobufCopy averageEngagementAgeLast14Days])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "averageEngagementAgeLast14Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast14Days:v7];
    }

    if ([protobufCopy averageEngagementAgeLast21Days])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "averageEngagementAgeLast21Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast21Days:v8];
    }

    if ([protobufCopy averageEngagementAgeLast30Days])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "averageEngagementAgeLast30Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast30Days:v9];
    }

    if ([protobufCopy daysSinceReceipt])
    {
      -[SFMailRankingSignals setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [protobufCopy daysSinceReceipt]);
    }

    [protobufCopy l1Score];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [protobufCopy l1Score];
      v12 = [v11 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setL1Score:v12];
    }

    [protobufCopy l2Score];
    if (v13 != 0.0)
    {
      v14 = MEMORY[0x1E696AD98];
      [protobufCopy l2Score];
      v15 = [v14 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setL2Score:v15];
    }

    if ([protobufCopy isFlagged])
    {
      -[SFMailRankingSignals setIsFlagged:](v5, "setIsFlagged:", [protobufCopy isFlagged]);
    }

    if ([protobufCopy isRepliedTo])
    {
      -[SFMailRankingSignals setIsRepliedTo:](v5, "setIsRepliedTo:", [protobufCopy isRepliedTo]);
    }

    if ([protobufCopy isSemanticMatch])
    {
      -[SFMailRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [protobufCopy isSemanticMatch]);
    }

    if ([protobufCopy isSyntacticMatch])
    {
      -[SFMailRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [protobufCopy isSyntacticMatch]);
    }

    [protobufCopy semanticScore];
    if (v16 != 0.0)
    {
      v17 = MEMORY[0x1E696AD98];
      [protobufCopy semanticScore];
      v18 = [v17 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setSemanticScore:v18];
    }

    [protobufCopy syntacticScore];
    if (v19 != 0.0)
    {
      v20 = MEMORY[0x1E696AD98];
      [protobufCopy syntacticScore];
      v21 = [v20 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setSyntacticScore:v21];
    }

    if ([protobufCopy countUnigramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [protobufCopy countUnigramMatchInAuthors]);
    }

    if ([protobufCopy countBigramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [protobufCopy countBigramMatchInAuthors]);
    }

    if ([protobufCopy countNgramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [protobufCopy countNgramMatchInAuthors]);
    }

    if ([protobufCopy countUnigramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [protobufCopy countUnigramPrefixMatchInAuthors]);
    }

    if ([protobufCopy countBigramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [protobufCopy countBigramPrefixMatchInAuthors]);
    }

    if ([protobufCopy countNgramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [protobufCopy countNgramPrefixMatchInAuthors]);
    }

    if ([protobufCopy countUnigramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [protobufCopy countUnigramMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countBigramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [protobufCopy countBigramMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countNgramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [protobufCopy countNgramMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countUnigramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [protobufCopy countUnigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countBigramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [protobufCopy countBigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countNgramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [protobufCopy countNgramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([protobufCopy countUnigramMatchInSubject])
    {
      -[SFMailRankingSignals setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [protobufCopy countUnigramMatchInSubject]);
    }

    if ([protobufCopy countBigramMatchInSubject])
    {
      -[SFMailRankingSignals setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [protobufCopy countBigramMatchInSubject]);
    }

    if ([protobufCopy countNgramMatchInSubject])
    {
      -[SFMailRankingSignals setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [protobufCopy countNgramMatchInSubject]);
    }

    if ([protobufCopy countUnigramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [protobufCopy countUnigramPrefixMatchInSubject]);
    }

    if ([protobufCopy countBigramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [protobufCopy countBigramPrefixMatchInSubject]);
    }

    if ([protobufCopy countNgramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [protobufCopy countNgramPrefixMatchInSubject]);
    }

    if ([protobufCopy countUnigramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [protobufCopy countUnigramMatchInTextContent]);
    }

    if ([protobufCopy countBigramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [protobufCopy countBigramMatchInTextContent]);
    }

    if ([protobufCopy countNgramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [protobufCopy countNgramMatchInTextContent]);
    }

    if ([protobufCopy countUnigramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [protobufCopy countUnigramPrefixMatchInTextContent]);
    }

    if ([protobufCopy countBigramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [protobufCopy countBigramPrefixMatchInTextContent]);
    }

    if ([protobufCopy countNgramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [protobufCopy countNgramPrefixMatchInTextContent]);
    }

    if ([protobufCopy countUnigramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [protobufCopy countUnigramMatchInRecipients]);
    }

    if ([protobufCopy countBigramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [protobufCopy countBigramMatchInRecipients]);
    }

    if ([protobufCopy countNgramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [protobufCopy countNgramMatchInRecipients]);
    }

    if ([protobufCopy countUnigramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [protobufCopy countUnigramPrefixMatchInRecipients]);
    }

    if ([protobufCopy countBigramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [protobufCopy countBigramPrefixMatchInRecipients]);
    }

    if ([protobufCopy countNgramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [protobufCopy countNgramPrefixMatchInRecipients]);
    }

    if ([protobufCopy countUnigramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [protobufCopy countUnigramMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countBigramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [protobufCopy countBigramMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countNgramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [protobufCopy countNgramMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countUnigramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [protobufCopy countUnigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countBigramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [protobufCopy countBigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countNgramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [protobufCopy countNgramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([protobufCopy countUnigramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [protobufCopy countUnigramMatchInEmailAddresses]);
    }

    if ([protobufCopy countBigramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [protobufCopy countBigramMatchInEmailAddresses]);
    }

    if ([protobufCopy countNgramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [protobufCopy countNgramMatchInEmailAddresses]);
    }

    if ([protobufCopy countUnigramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [protobufCopy countUnigramPrefixMatchInEmailAddresses]);
    }

    if ([protobufCopy countBigramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [protobufCopy countBigramPrefixMatchInEmailAddresses]);
    }

    if ([protobufCopy countNgramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [protobufCopy countNgramPrefixMatchInEmailAddresses]);
    }

    if ([protobufCopy countUnigramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [protobufCopy countUnigramMatchInAttachmentTypes]);
    }

    if ([protobufCopy countBigramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [protobufCopy countBigramMatchInAttachmentTypes]);
    }

    if ([protobufCopy countNgramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [protobufCopy countNgramMatchInAttachmentTypes]);
    }

    if ([protobufCopy countUnigramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [protobufCopy countUnigramPrefixMatchInAttachmentTypes]);
    }

    if ([protobufCopy countBigramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [protobufCopy countBigramPrefixMatchInAttachmentTypes]);
    }

    if ([protobufCopy countNgramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [protobufCopy countNgramPrefixMatchInAttachmentTypes]);
    }

    if ([protobufCopy countUnigramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [protobufCopy countUnigramMatchInAttachmentNames]);
    }

    if ([protobufCopy countBigramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [protobufCopy countBigramMatchInAttachmentNames]);
    }

    if ([protobufCopy countNgramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [protobufCopy countNgramMatchInAttachmentNames]);
    }

    if ([protobufCopy countUnigramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [protobufCopy countUnigramPrefixMatchInAttachmentNames]);
    }

    if ([protobufCopy countBigramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [protobufCopy countBigramPrefixMatchInAttachmentNames]);
    }

    if ([protobufCopy countNgramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [protobufCopy countNgramPrefixMatchInAttachmentNames]);
    }

    v22 = v5;
  }

  return v5;
}

@end