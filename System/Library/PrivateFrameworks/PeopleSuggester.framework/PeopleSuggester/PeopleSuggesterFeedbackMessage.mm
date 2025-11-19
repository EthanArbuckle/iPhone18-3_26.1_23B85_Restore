@interface PeopleSuggesterFeedbackMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackType:(id)a3;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PeopleSuggesterFeedbackMessage

- (int)feedbackType
{
  if (*&self->_has)
  {
    return self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsFeedbackType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ABANDONED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SUGGESTION_SELECTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INTERACTED_WITH_AFTER_SHARE_DEPRECATED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HANDLE_SELECTED_IN_APP_EXTENSION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HANDLE_SELECTED_IN_APP"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PeopleSuggesterFeedbackMessage;
  v4 = [(PeopleSuggesterFeedbackMessage *)&v8 description];
  v5 = [(PeopleSuggesterFeedbackMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  privatizedCandidateIdentifier = self->_privatizedCandidateIdentifier;
  if (privatizedCandidateIdentifier)
  {
    [v3 setObject:privatizedCandidateIdentifier forKey:@"privatizedCandidateIdentifier"];
  }

  privatizedTransportBundleId = self->_privatizedTransportBundleId;
  if (privatizedTransportBundleId)
  {
    [v4 setObject:privatizedTransportBundleId forKey:@"privatizedTransportBundleId"];
  }

  if (*&self->_has)
  {
    feedbackType = self->_feedbackType;
    if (feedbackType >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_feedbackType];
    }

    else
    {
      v8 = off_1E7C25620[feedbackType];
    }

    [v4 setObject:v8 forKey:@"feedbackType"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_privatizedCandidateIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_privatizedTransportBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_privatizedCandidateIdentifier)
  {
    [v4 setPrivatizedCandidateIdentifier:?];
    v4 = v5;
  }

  if (self->_privatizedTransportBundleId)
  {
    [v5 setPrivatizedTransportBundleId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_feedbackType;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_privatizedCandidateIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_privatizedTransportBundleId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_feedbackType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  privatizedCandidateIdentifier = self->_privatizedCandidateIdentifier;
  if (privatizedCandidateIdentifier | *(v4 + 2))
  {
    if (![(NSString *)privatizedCandidateIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  privatizedTransportBundleId = self->_privatizedTransportBundleId;
  if (privatizedTransportBundleId | *(v4 + 3))
  {
    if (![(NSString *)privatizedTransportBundleId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_feedbackType == *(v4 + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_privatizedCandidateIdentifier hash];
  v4 = [(NSString *)self->_privatizedTransportBundleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_feedbackType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(PeopleSuggesterFeedbackMessage *)self setPrivatizedCandidateIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(PeopleSuggesterFeedbackMessage *)self setPrivatizedTransportBundleId:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_feedbackType = v4[2];
    *&self->_has |= 1u;
  }
}

@end