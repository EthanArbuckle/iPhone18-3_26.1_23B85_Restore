@interface SFMailRankingSignals
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMailRankingSignals)initWithCoder:(id)a3;
- (SFMailRankingSignals)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMailRankingSignals

- (unint64_t)hash
{
  v3 = [(SFMailRankingSignals *)self wasReorderedByRecency];
  v4 = [(SFMailRankingSignals *)self numEngagements];
  v5 = v4 ^ [(SFMailRankingSignals *)self numDaysEngagedLast30Days];
  v81 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
  v6 = v5 ^ [v81 hash] ^ v3;
  v7 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
  v8 = [v7 hash];
  v9 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
  v10 = v8 ^ [v9 hash];
  v11 = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
  v12 = v6 ^ v10 ^ [v11 hash];
  v13 = [(SFMailRankingSignals *)self daysSinceReceipt];
  v14 = [(SFMailRankingSignals *)self l1Score];
  v15 = v13 ^ [v14 hash];
  v16 = [(SFMailRankingSignals *)self l2Score];
  v17 = v15 ^ [v16 hash];
  v18 = v12 ^ v17 ^ [(SFMailRankingSignals *)self isFlagged];
  v19 = [(SFMailRankingSignals *)self isRepliedTo];
  v20 = v19 ^ [(SFMailRankingSignals *)self isSemanticMatch];
  v21 = v20 ^ [(SFMailRankingSignals *)self isSyntacticMatch];
  v22 = [(SFMailRankingSignals *)self semanticScore];
  v23 = v18 ^ v21 ^ [v22 hash];
  v24 = [(SFMailRankingSignals *)self syntacticScore];
  v25 = [v24 hash];
  v26 = v25 ^ [(SFMailRankingSignals *)self countUnigramMatchInAuthors];
  v27 = v26 ^ [(SFMailRankingSignals *)self countBigramMatchInAuthors];
  v28 = v27 ^ [(SFMailRankingSignals *)self countNgramMatchInAuthors];
  v29 = v28 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthors];
  v30 = v23 ^ v29 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthors];
  v31 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthors];
  v32 = v31 ^ [(SFMailRankingSignals *)self countUnigramMatchInAuthorEmailAddresses];
  v33 = v32 ^ [(SFMailRankingSignals *)self countBigramMatchInAuthorEmailAddresses];
  v34 = v33 ^ [(SFMailRankingSignals *)self countNgramMatchInAuthorEmailAddresses];
  v35 = v34 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthorEmailAddresses];
  v36 = v35 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthorEmailAddresses];
  v37 = v36 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthorEmailAddresses];
  v38 = v30 ^ v37 ^ [(SFMailRankingSignals *)self countUnigramMatchInSubject];
  v39 = [(SFMailRankingSignals *)self countBigramMatchInSubject];
  v40 = v39 ^ [(SFMailRankingSignals *)self countNgramMatchInSubject];
  v41 = v40 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInSubject];
  v42 = v41 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInSubject];
  v43 = v42 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInSubject];
  v44 = v43 ^ [(SFMailRankingSignals *)self countUnigramMatchInTextContent];
  v45 = v44 ^ [(SFMailRankingSignals *)self countBigramMatchInTextContent];
  v46 = v45 ^ [(SFMailRankingSignals *)self countNgramMatchInTextContent];
  v47 = v38 ^ v46 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInTextContent];
  v48 = [(SFMailRankingSignals *)self countBigramPrefixMatchInTextContent];
  v49 = v48 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInTextContent];
  v50 = v49 ^ [(SFMailRankingSignals *)self countUnigramMatchInRecipients];
  v51 = v50 ^ [(SFMailRankingSignals *)self countBigramMatchInRecipients];
  v52 = v51 ^ [(SFMailRankingSignals *)self countNgramMatchInRecipients];
  v53 = v52 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipients];
  v54 = v53 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipients];
  v55 = v54 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipients];
  v56 = v55 ^ [(SFMailRankingSignals *)self countUnigramMatchInRecipientEmailAddresses];
  v57 = v47 ^ v56 ^ [(SFMailRankingSignals *)self countBigramMatchInRecipientEmailAddresses];
  v58 = [(SFMailRankingSignals *)self countNgramMatchInRecipientEmailAddresses];
  v59 = v58 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipientEmailAddresses];
  v60 = v59 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipientEmailAddresses];
  v61 = v60 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipientEmailAddresses];
  v62 = v61 ^ [(SFMailRankingSignals *)self countUnigramMatchInEmailAddresses];
  v63 = v62 ^ [(SFMailRankingSignals *)self countBigramMatchInEmailAddresses];
  v64 = v63 ^ [(SFMailRankingSignals *)self countNgramMatchInEmailAddresses];
  v65 = v64 ^ [(SFMailRankingSignals *)self countUnigramPrefixMatchInEmailAddresses];
  v66 = v65 ^ [(SFMailRankingSignals *)self countBigramPrefixMatchInEmailAddresses];
  v67 = v66 ^ [(SFMailRankingSignals *)self countNgramPrefixMatchInEmailAddresses];
  v68 = v57 ^ v67 ^ [(SFMailRankingSignals *)self countUnigramMatchInAttachmentTypes];
  v69 = [(SFMailRankingSignals *)self countBigramMatchInAttachmentTypes];
  v70 = v69 ^ [(SFMailRankingSignals *)self countNgramMatchInAttachmentTypes];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    if ([(SFMailRankingSignals *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFMailRankingSignals *)self wasReorderedByRecency];
      if (v7 != [(SFMailRankingSignals *)v6 wasReorderedByRecency]|| (v8 = [(SFMailRankingSignals *)self numEngagements], v8 != [(SFMailRankingSignals *)v6 numEngagements]) || (v9 = [(SFMailRankingSignals *)self numDaysEngagedLast30Days], v9 != [(SFMailRankingSignals *)v6 numDaysEngagedLast30Days]))
      {
        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
      v11 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast7Days];
      if ((v10 != 0) == (v11 == 0))
      {
        v14 = 0;
LABEL_57:

        goto LABEL_13;
      }

      v12 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
      if (v12)
      {
        v13 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
        v3 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast7Days];
        if (![v13 isEqual:v3])
        {
          v14 = 0;
          goto LABEL_55;
        }

        v133 = v3;
        v134 = v13;
      }

      v16 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
      v17 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast14Days];
      if ((v16 != 0) == (v17 == 0))
      {
        goto LABEL_53;
      }

      v18 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
      if (v18)
      {
        v19 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
        v20 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast14Days];
        v130 = v19;
        v21 = v19;
        v3 = v20;
        if (![v21 isEqual:v20])
        {
          goto LABEL_52;
        }
      }

      v131 = v16;
      v132 = v18;
      v22 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
      v23 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast21Days];
      if ((v22 != 0) == (v23 == 0))
      {

        goto LABEL_51;
      }

      v127 = v22;
      v128 = v23;
      v129 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
      if (v129)
      {
        v24 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
        v125 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast21Days];
        v126 = v24;
        if (![v24 isEqual:v125])
        {
          goto LABEL_49;
        }
      }

      v25 = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
      v26 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast30Days];
      if ((v25 != 0) == (v26 == 0))
      {

        goto LABEL_48;
      }

      v124 = v26;
      v123 = v25;
      v27 = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
      if (v27)
      {
        [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
        v29 = v28 = v17;
        v30 = [(SFMailRankingSignals *)v6 averageEngagementAgeLast30Days];
        v121 = v29;
        v31 = v29;
        v17 = v28;
        v25 = v30;
        if (![v31 isEqual:v30])
        {
          goto LABEL_37;
        }
      }

      v122 = v27;
      v32 = [(SFMailRankingSignals *)self daysSinceReceipt];
      if (v32 != [(SFMailRankingSignals *)v6 daysSinceReceipt])
      {
        v27 = v122;
        if (!v122)
        {
LABEL_47:

LABEL_48:
          v18 = v132;
          if (!v129)
          {
LABEL_50:

LABEL_51:
            v16 = v131;
            if (v18)
            {
LABEL_52:
            }

LABEL_53:

            v14 = 0;
            if (!v12)
            {
LABEL_56:

              goto LABEL_57;
            }

            v3 = v133;
            v13 = v134;
LABEL_55:

            goto LABEL_56;
          }

LABEL_49:

          goto LABEL_50;
        }

LABEL_37:

        goto LABEL_47;
      }

      v120 = v25;
      v33 = [(SFMailRankingSignals *)self l1Score];
      v34 = [(SFMailRankingSignals *)v6 l1Score];
      if ((v33 != 0) == (v34 == 0))
      {

        goto LABEL_46;
      }

      v118 = v33;
      v119 = v34;
      v35 = [(SFMailRankingSignals *)self l1Score];
      if (v35)
      {
        v36 = [(SFMailRankingSignals *)self l1Score];
        v114 = [(SFMailRankingSignals *)v6 l1Score];
        v115 = v36;
        if (![v36 isEqual:?])
        {
LABEL_44:

LABEL_45:
LABEL_46:
          v27 = v122;
          v25 = v120;
          if (!v122)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }
      }

      v117 = v35;
      v37 = [(SFMailRankingSignals *)self l2Score];
      v116 = [(SFMailRankingSignals *)v6 l2Score];
      if ((v37 != 0) == (v116 == 0))
      {

        v35 = v117;
        if (!v117)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      v113 = v3;
      v38 = [(SFMailRankingSignals *)self l2Score];
      if (v38)
      {
        v39 = [(SFMailRankingSignals *)self l2Score];
        v111 = [(SFMailRankingSignals *)v6 l2Score];
        v112 = v39;
        if (![v39 isEqual:?])
        {
          goto LABEL_69;
        }
      }

      v40 = [(SFMailRankingSignals *)self isFlagged];
      if (v40 == [(SFMailRankingSignals *)v6 isFlagged])
      {
        v41 = [(SFMailRankingSignals *)self isRepliedTo];
        if (v41 == [(SFMailRankingSignals *)v6 isRepliedTo])
        {
          v42 = [(SFMailRankingSignals *)self isSemanticMatch];
          if (v42 == [(SFMailRankingSignals *)v6 isSemanticMatch])
          {
            v43 = [(SFMailRankingSignals *)self isSyntacticMatch];
            if (v43 == [(SFMailRankingSignals *)v6 isSyntacticMatch])
            {
              v110 = [(SFMailRankingSignals *)self semanticScore];
              v109 = [(SFMailRankingSignals *)v6 semanticScore];
              if ((v110 != 0) != (v109 == 0))
              {
                v108 = [(SFMailRankingSignals *)self semanticScore];
                if (v108)
                {
                  v44 = [(SFMailRankingSignals *)self semanticScore];
                  v104 = [(SFMailRankingSignals *)v6 semanticScore];
                  v105 = v44;
                  if (![v44 isEqual:?])
                  {
                    v14 = 0;
                    goto LABEL_145;
                  }
                }

                v107 = [(SFMailRankingSignals *)self syntacticScore];
                v106 = [(SFMailRankingSignals *)v6 syntacticScore];
                if ((v107 != 0) == (v106 == 0))
                {

                  v14 = 0;
                  goto LABEL_144;
                }

                v103 = [(SFMailRankingSignals *)self syntacticScore];
                if (!v103 || (-[SFMailRankingSignals syntacticScore](self, "syntacticScore"), v45 = objc_claimAutoreleasedReturnValue(), -[SFMailRankingSignals syntacticScore](v6, "syntacticScore"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v45, [v45 isEqual:?]))
                {
                  v46 = [(SFMailRankingSignals *)self countUnigramMatchInAuthors];
                  if (v46 != [(SFMailRankingSignals *)v6 countUnigramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v47 = [(SFMailRankingSignals *)self countBigramMatchInAuthors];
                  if (v47 != [(SFMailRankingSignals *)v6 countBigramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v48 = [(SFMailRankingSignals *)self countNgramMatchInAuthors];
                  if (v48 != [(SFMailRankingSignals *)v6 countNgramMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v49 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthors];
                  if (v49 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v50 = [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthors];
                  if (v50 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v51 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthors];
                  if (v51 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAuthors])
                  {
                    goto LABEL_140;
                  }

                  v52 = [(SFMailRankingSignals *)self countUnigramMatchInAuthorEmailAddresses];
                  if (v52 != [(SFMailRankingSignals *)v6 countUnigramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v53 = [(SFMailRankingSignals *)self countBigramMatchInAuthorEmailAddresses];
                  if (v53 != [(SFMailRankingSignals *)v6 countBigramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v54 = [(SFMailRankingSignals *)self countNgramMatchInAuthorEmailAddresses];
                  if (v54 != [(SFMailRankingSignals *)v6 countNgramMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v55 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAuthorEmailAddresses];
                  if (v55 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v56 = [(SFMailRankingSignals *)self countBigramPrefixMatchInAuthorEmailAddresses];
                  if (v56 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v57 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAuthorEmailAddresses];
                  if (v57 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAuthorEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v58 = [(SFMailRankingSignals *)self countUnigramMatchInSubject];
                  if (v58 != [(SFMailRankingSignals *)v6 countUnigramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v59 = [(SFMailRankingSignals *)self countBigramMatchInSubject];
                  if (v59 != [(SFMailRankingSignals *)v6 countBigramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v60 = [(SFMailRankingSignals *)self countNgramMatchInSubject];
                  if (v60 != [(SFMailRankingSignals *)v6 countNgramMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v61 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInSubject];
                  if (v61 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v62 = [(SFMailRankingSignals *)self countBigramPrefixMatchInSubject];
                  if (v62 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v63 = [(SFMailRankingSignals *)self countNgramPrefixMatchInSubject];
                  if (v63 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInSubject])
                  {
                    goto LABEL_140;
                  }

                  v64 = [(SFMailRankingSignals *)self countUnigramMatchInTextContent];
                  if (v64 != [(SFMailRankingSignals *)v6 countUnigramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v65 = [(SFMailRankingSignals *)self countBigramMatchInTextContent];
                  if (v65 != [(SFMailRankingSignals *)v6 countBigramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v66 = [(SFMailRankingSignals *)self countNgramMatchInTextContent];
                  if (v66 != [(SFMailRankingSignals *)v6 countNgramMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v67 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInTextContent];
                  if (v67 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v68 = [(SFMailRankingSignals *)self countBigramPrefixMatchInTextContent];
                  if (v68 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v69 = [(SFMailRankingSignals *)self countNgramPrefixMatchInTextContent];
                  if (v69 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInTextContent])
                  {
                    goto LABEL_140;
                  }

                  v70 = [(SFMailRankingSignals *)self countUnigramMatchInRecipients];
                  if (v70 != [(SFMailRankingSignals *)v6 countUnigramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v71 = [(SFMailRankingSignals *)self countBigramMatchInRecipients];
                  if (v71 != [(SFMailRankingSignals *)v6 countBigramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v72 = [(SFMailRankingSignals *)self countNgramMatchInRecipients];
                  if (v72 != [(SFMailRankingSignals *)v6 countNgramMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v73 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipients];
                  if (v73 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v74 = [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipients];
                  if (v74 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v75 = [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipients];
                  if (v75 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInRecipients])
                  {
                    goto LABEL_140;
                  }

                  v76 = [(SFMailRankingSignals *)self countUnigramMatchInRecipientEmailAddresses];
                  if (v76 != [(SFMailRankingSignals *)v6 countUnigramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v77 = [(SFMailRankingSignals *)self countBigramMatchInRecipientEmailAddresses];
                  if (v77 != [(SFMailRankingSignals *)v6 countBigramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v78 = [(SFMailRankingSignals *)self countNgramMatchInRecipientEmailAddresses];
                  if (v78 != [(SFMailRankingSignals *)v6 countNgramMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v79 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInRecipientEmailAddresses];
                  if (v79 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v80 = [(SFMailRankingSignals *)self countBigramPrefixMatchInRecipientEmailAddresses];
                  if (v80 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v81 = [(SFMailRankingSignals *)self countNgramPrefixMatchInRecipientEmailAddresses];
                  if (v81 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInRecipientEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v82 = [(SFMailRankingSignals *)self countUnigramMatchInEmailAddresses];
                  if (v82 != [(SFMailRankingSignals *)v6 countUnigramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v83 = [(SFMailRankingSignals *)self countBigramMatchInEmailAddresses];
                  if (v83 != [(SFMailRankingSignals *)v6 countBigramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v84 = [(SFMailRankingSignals *)self countNgramMatchInEmailAddresses];
                  if (v84 != [(SFMailRankingSignals *)v6 countNgramMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v85 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInEmailAddresses];
                  if (v85 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v86 = [(SFMailRankingSignals *)self countBigramPrefixMatchInEmailAddresses];
                  if (v86 != [(SFMailRankingSignals *)v6 countBigramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v87 = [(SFMailRankingSignals *)self countNgramPrefixMatchInEmailAddresses];
                  if (v87 != [(SFMailRankingSignals *)v6 countNgramPrefixMatchInEmailAddresses])
                  {
                    goto LABEL_140;
                  }

                  v88 = [(SFMailRankingSignals *)self countUnigramMatchInAttachmentTypes];
                  if (v88 != [(SFMailRankingSignals *)v6 countUnigramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  v89 = [(SFMailRankingSignals *)self countBigramMatchInAttachmentTypes];
                  if (v89 != [(SFMailRankingSignals *)v6 countBigramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  v90 = [(SFMailRankingSignals *)self countNgramMatchInAttachmentTypes];
                  if (v90 != [(SFMailRankingSignals *)v6 countNgramMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  v91 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentTypes];
                  if (v91 != [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAttachmentTypes])
                  {
                    goto LABEL_140;
                  }

                  v92 = [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentTypes];
                  if (v92 == [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAttachmentTypes]&& (v93 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentTypes], v93 == [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAttachmentTypes]) && (v94 = [(SFMailRankingSignals *)self countUnigramMatchInAttachmentNames], v94 == [(SFMailRankingSignals *)v6 countUnigramMatchInAttachmentNames]) && (v95 = [(SFMailRankingSignals *)self countBigramMatchInAttachmentNames], v95 == [(SFMailRankingSignals *)v6 countBigramMatchInAttachmentNames]) && (v96 = [(SFMailRankingSignals *)self countNgramMatchInAttachmentNames], v96 == [(SFMailRankingSignals *)v6 countNgramMatchInAttachmentNames]) && (v97 = [(SFMailRankingSignals *)self countUnigramPrefixMatchInAttachmentNames], v97 == [(SFMailRankingSignals *)v6 countUnigramPrefixMatchInAttachmentNames]) && (v98 = [(SFMailRankingSignals *)self countBigramPrefixMatchInAttachmentNames], v98 == [(SFMailRankingSignals *)v6 countBigramPrefixMatchInAttachmentNames]))
                  {
                    v99 = [(SFMailRankingSignals *)self countNgramPrefixMatchInAttachmentNames];
                    v14 = v99 == [(SFMailRankingSignals *)v6 countNgramPrefixMatchInAttachmentNames];
                    v100 = v14;
                  }

                  else
                  {
LABEL_140:
                    v14 = 0;
                    v100 = 0;
                  }

                  if (!v103)
                  {

                    v14 = v100;
LABEL_144:
                    if (!v108)
                    {
LABEL_146:

                      if (v38)
                      {
                      }

                      if (v117)
                      {
                      }

                      if (v122)
                      {
                      }

                      if (v129)
                      {
                      }

                      if (v132)
                      {
                      }

LABEL_79:
                      v3 = v133;
                      v13 = v134;
                      if (!v12)
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

      if (!v38)
      {
LABEL_70:

        if (v117)
        {
        }

        if (v122)
        {
        }

        if (v129)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setWasReorderedByRecency:{-[SFMailRankingSignals wasReorderedByRecency](self, "wasReorderedByRecency")}];
  [v4 setNumEngagements:{-[SFMailRankingSignals numEngagements](self, "numEngagements")}];
  [v4 setNumDaysEngagedLast30Days:{-[SFMailRankingSignals numDaysEngagedLast30Days](self, "numDaysEngagedLast30Days")}];
  v5 = [(SFMailRankingSignals *)self averageEngagementAgeLast7Days];
  v6 = [v5 copy];
  [v4 setAverageEngagementAgeLast7Days:v6];

  v7 = [(SFMailRankingSignals *)self averageEngagementAgeLast14Days];
  v8 = [v7 copy];
  [v4 setAverageEngagementAgeLast14Days:v8];

  v9 = [(SFMailRankingSignals *)self averageEngagementAgeLast21Days];
  v10 = [v9 copy];
  [v4 setAverageEngagementAgeLast21Days:v10];

  v11 = [(SFMailRankingSignals *)self averageEngagementAgeLast30Days];
  v12 = [v11 copy];
  [v4 setAverageEngagementAgeLast30Days:v12];

  [v4 setDaysSinceReceipt:{-[SFMailRankingSignals daysSinceReceipt](self, "daysSinceReceipt")}];
  v13 = [(SFMailRankingSignals *)self l1Score];
  v14 = [v13 copy];
  [v4 setL1Score:v14];

  v15 = [(SFMailRankingSignals *)self l2Score];
  v16 = [v15 copy];
  [v4 setL2Score:v16];

  [v4 setIsFlagged:{-[SFMailRankingSignals isFlagged](self, "isFlagged")}];
  [v4 setIsRepliedTo:{-[SFMailRankingSignals isRepliedTo](self, "isRepliedTo")}];
  [v4 setIsSemanticMatch:{-[SFMailRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
  [v4 setIsSyntacticMatch:{-[SFMailRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
  v17 = [(SFMailRankingSignals *)self semanticScore];
  v18 = [v17 copy];
  [v4 setSemanticScore:v18];

  v19 = [(SFMailRankingSignals *)self syntacticScore];
  v20 = [v19 copy];
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
  v3 = [(_SFPBMailRankingSignals *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMailRankingSignals alloc] initWithFacade:self];
  v3 = [(_SFPBMailRankingSignals *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMailRankingSignals alloc] initWithFacade:self];
  v5 = [(_SFPBMailRankingSignals *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMailRankingSignals)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMailRankingSignals alloc] initWithData:v5];
  v7 = [(SFMailRankingSignals *)self initWithProtobuf:v6];

  return v7;
}

- (SFMailRankingSignals)initWithProtobuf:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SFMailRankingSignals;
  v5 = [(SFMailRankingSignals *)&v24 init];

  if (v5)
  {
    if ([v4 wasReorderedByRecency])
    {
      -[SFMailRankingSignals setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [v4 wasReorderedByRecency]);
    }

    if ([v4 numEngagements])
    {
      -[SFMailRankingSignals setNumEngagements:](v5, "setNumEngagements:", [v4 numEngagements]);
    }

    if ([v4 numDaysEngagedLast30Days])
    {
      -[SFMailRankingSignals setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [v4 numDaysEngagedLast30Days]);
    }

    if ([v4 averageEngagementAgeLast7Days])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "averageEngagementAgeLast7Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast7Days:v6];
    }

    if ([v4 averageEngagementAgeLast14Days])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "averageEngagementAgeLast14Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast14Days:v7];
    }

    if ([v4 averageEngagementAgeLast21Days])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "averageEngagementAgeLast21Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast21Days:v8];
    }

    if ([v4 averageEngagementAgeLast30Days])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "averageEngagementAgeLast30Days")}];
      [(SFMailRankingSignals *)v5 setAverageEngagementAgeLast30Days:v9];
    }

    if ([v4 daysSinceReceipt])
    {
      -[SFMailRankingSignals setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [v4 daysSinceReceipt]);
    }

    [v4 l1Score];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [v4 l1Score];
      v12 = [v11 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setL1Score:v12];
    }

    [v4 l2Score];
    if (v13 != 0.0)
    {
      v14 = MEMORY[0x1E696AD98];
      [v4 l2Score];
      v15 = [v14 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setL2Score:v15];
    }

    if ([v4 isFlagged])
    {
      -[SFMailRankingSignals setIsFlagged:](v5, "setIsFlagged:", [v4 isFlagged]);
    }

    if ([v4 isRepliedTo])
    {
      -[SFMailRankingSignals setIsRepliedTo:](v5, "setIsRepliedTo:", [v4 isRepliedTo]);
    }

    if ([v4 isSemanticMatch])
    {
      -[SFMailRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v4 isSemanticMatch]);
    }

    if ([v4 isSyntacticMatch])
    {
      -[SFMailRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v4 isSyntacticMatch]);
    }

    [v4 semanticScore];
    if (v16 != 0.0)
    {
      v17 = MEMORY[0x1E696AD98];
      [v4 semanticScore];
      v18 = [v17 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setSemanticScore:v18];
    }

    [v4 syntacticScore];
    if (v19 != 0.0)
    {
      v20 = MEMORY[0x1E696AD98];
      [v4 syntacticScore];
      v21 = [v20 numberWithFloat:?];
      [(SFMailRankingSignals *)v5 setSyntacticScore:v21];
    }

    if ([v4 countUnigramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [v4 countUnigramMatchInAuthors]);
    }

    if ([v4 countBigramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [v4 countBigramMatchInAuthors]);
    }

    if ([v4 countNgramMatchInAuthors])
    {
      -[SFMailRankingSignals setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [v4 countNgramMatchInAuthors]);
    }

    if ([v4 countUnigramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [v4 countUnigramPrefixMatchInAuthors]);
    }

    if ([v4 countBigramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [v4 countBigramPrefixMatchInAuthors]);
    }

    if ([v4 countNgramPrefixMatchInAuthors])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [v4 countNgramPrefixMatchInAuthors]);
    }

    if ([v4 countUnigramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [v4 countUnigramMatchInAuthorEmailAddresses]);
    }

    if ([v4 countBigramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [v4 countBigramMatchInAuthorEmailAddresses]);
    }

    if ([v4 countNgramMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [v4 countNgramMatchInAuthorEmailAddresses]);
    }

    if ([v4 countUnigramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [v4 countUnigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 countBigramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [v4 countBigramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 countNgramPrefixMatchInAuthorEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [v4 countNgramPrefixMatchInAuthorEmailAddresses]);
    }

    if ([v4 countUnigramMatchInSubject])
    {
      -[SFMailRankingSignals setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [v4 countUnigramMatchInSubject]);
    }

    if ([v4 countBigramMatchInSubject])
    {
      -[SFMailRankingSignals setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [v4 countBigramMatchInSubject]);
    }

    if ([v4 countNgramMatchInSubject])
    {
      -[SFMailRankingSignals setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [v4 countNgramMatchInSubject]);
    }

    if ([v4 countUnigramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [v4 countUnigramPrefixMatchInSubject]);
    }

    if ([v4 countBigramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [v4 countBigramPrefixMatchInSubject]);
    }

    if ([v4 countNgramPrefixMatchInSubject])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [v4 countNgramPrefixMatchInSubject]);
    }

    if ([v4 countUnigramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [v4 countUnigramMatchInTextContent]);
    }

    if ([v4 countBigramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [v4 countBigramMatchInTextContent]);
    }

    if ([v4 countNgramMatchInTextContent])
    {
      -[SFMailRankingSignals setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [v4 countNgramMatchInTextContent]);
    }

    if ([v4 countUnigramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [v4 countUnigramPrefixMatchInTextContent]);
    }

    if ([v4 countBigramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [v4 countBigramPrefixMatchInTextContent]);
    }

    if ([v4 countNgramPrefixMatchInTextContent])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [v4 countNgramPrefixMatchInTextContent]);
    }

    if ([v4 countUnigramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [v4 countUnigramMatchInRecipients]);
    }

    if ([v4 countBigramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [v4 countBigramMatchInRecipients]);
    }

    if ([v4 countNgramMatchInRecipients])
    {
      -[SFMailRankingSignals setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [v4 countNgramMatchInRecipients]);
    }

    if ([v4 countUnigramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [v4 countUnigramPrefixMatchInRecipients]);
    }

    if ([v4 countBigramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [v4 countBigramPrefixMatchInRecipients]);
    }

    if ([v4 countNgramPrefixMatchInRecipients])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [v4 countNgramPrefixMatchInRecipients]);
    }

    if ([v4 countUnigramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [v4 countUnigramMatchInRecipientEmailAddresses]);
    }

    if ([v4 countBigramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [v4 countBigramMatchInRecipientEmailAddresses]);
    }

    if ([v4 countNgramMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [v4 countNgramMatchInRecipientEmailAddresses]);
    }

    if ([v4 countUnigramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [v4 countUnigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 countBigramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [v4 countBigramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 countNgramPrefixMatchInRecipientEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [v4 countNgramPrefixMatchInRecipientEmailAddresses]);
    }

    if ([v4 countUnigramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [v4 countUnigramMatchInEmailAddresses]);
    }

    if ([v4 countBigramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [v4 countBigramMatchInEmailAddresses]);
    }

    if ([v4 countNgramMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [v4 countNgramMatchInEmailAddresses]);
    }

    if ([v4 countUnigramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [v4 countUnigramPrefixMatchInEmailAddresses]);
    }

    if ([v4 countBigramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [v4 countBigramPrefixMatchInEmailAddresses]);
    }

    if ([v4 countNgramPrefixMatchInEmailAddresses])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [v4 countNgramPrefixMatchInEmailAddresses]);
    }

    if ([v4 countUnigramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [v4 countUnigramMatchInAttachmentTypes]);
    }

    if ([v4 countBigramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [v4 countBigramMatchInAttachmentTypes]);
    }

    if ([v4 countNgramMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [v4 countNgramMatchInAttachmentTypes]);
    }

    if ([v4 countUnigramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [v4 countUnigramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 countBigramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [v4 countBigramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 countNgramPrefixMatchInAttachmentTypes])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [v4 countNgramPrefixMatchInAttachmentTypes]);
    }

    if ([v4 countUnigramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [v4 countUnigramMatchInAttachmentNames]);
    }

    if ([v4 countBigramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [v4 countBigramMatchInAttachmentNames]);
    }

    if ([v4 countNgramMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [v4 countNgramMatchInAttachmentNames]);
    }

    if ([v4 countUnigramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [v4 countUnigramPrefixMatchInAttachmentNames]);
    }

    if ([v4 countBigramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [v4 countBigramPrefixMatchInAttachmentNames]);
    }

    if ([v4 countNgramPrefixMatchInAttachmentNames])
    {
      -[SFMailRankingSignals setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [v4 countNgramPrefixMatchInAttachmentNames]);
    }

    v22 = v5;
  }

  return v5;
}

@end