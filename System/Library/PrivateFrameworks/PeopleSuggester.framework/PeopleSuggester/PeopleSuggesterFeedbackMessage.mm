@interface PeopleSuggesterFeedbackMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackType:(id)type;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsFeedbackType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ABANDONED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SUGGESTION_SELECTED"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"INTERACTED_WITH_AFTER_SHARE_DEPRECATED"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"HANDLE_SELECTED_IN_APP_EXTENSION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"HANDLE_SELECTED_IN_APP"])
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
  dictionaryRepresentation = [(PeopleSuggesterFeedbackMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  privatizedCandidateIdentifier = self->_privatizedCandidateIdentifier;
  if (privatizedCandidateIdentifier)
  {
    [dictionary setObject:privatizedCandidateIdentifier forKey:@"privatizedCandidateIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_privatizedCandidateIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_privatizedTransportBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_privatizedCandidateIdentifier)
  {
    [toCopy setPrivatizedCandidateIdentifier:?];
    toCopy = v5;
  }

  if (self->_privatizedTransportBundleId)
  {
    [v5 setPrivatizedTransportBundleId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_feedbackType;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_privatizedCandidateIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_privatizedTransportBundleId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_feedbackType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  privatizedCandidateIdentifier = self->_privatizedCandidateIdentifier;
  if (privatizedCandidateIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)privatizedCandidateIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  privatizedTransportBundleId = self->_privatizedTransportBundleId;
  if (privatizedTransportBundleId | *(equalCopy + 3))
  {
    if (![(NSString *)privatizedTransportBundleId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_feedbackType == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PeopleSuggesterFeedbackMessage *)self setPrivatizedCandidateIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(PeopleSuggesterFeedbackMessage *)self setPrivatizedTransportBundleId:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_feedbackType = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end