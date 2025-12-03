@interface CSDMessagingCallCapabilitiesState
- (BOOL)isEqual:(id)equal;
- (CSDMessagingCallCapabilitiesState)initWithCallCapabilitiesState:(id)state;
- (TUCallCapabilitiesState)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFaceTimeVideoAvailable:(BOOL)available;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCallCapabilitiesState

- (CSDMessagingCallCapabilitiesState)initWithCallCapabilitiesState:(id)state
{
  stateCopy = state;
  v5 = [(CSDMessagingCallCapabilitiesState *)self init];
  if (v5)
  {
    -[CSDMessagingCallCapabilitiesState setFaceTimeAudioAvailable:](v5, "setFaceTimeAudioAvailable:", [stateCopy isFaceTimeAudioAvailable]);
    -[CSDMessagingCallCapabilitiesState setFaceTimeVideoAvailable:](v5, "setFaceTimeVideoAvailable:", [stateCopy isFaceTimeVideoAvailable]);
  }

  return v5;
}

- (TUCallCapabilitiesState)state
{
  v3 = objc_alloc_init(TUCallCapabilitiesState);
  [v3 setFaceTimeAudioAvailable:{-[CSDMessagingCallCapabilitiesState faceTimeAudioAvailable](self, "faceTimeAudioAvailable")}];
  [v3 setFaceTimeVideoAvailable:{-[CSDMessagingCallCapabilitiesState faceTimeVideoAvailable](self, "faceTimeVideoAvailable")}];

  return v3;
}

- (void)setHasFaceTimeVideoAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallCapabilitiesState;
  v3 = [(CSDMessagingCallCapabilitiesState *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCallCapabilitiesState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithBool:self->_faceTimeAudioAvailable];
    [v3 setObject:v5 forKey:@"faceTimeAudioAvailable"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_faceTimeVideoAvailable];
    [v3 setObject:v6 forKey:@"faceTimeVideoAvailable"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    faceTimeAudioAvailable = self->_faceTimeAudioAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    faceTimeVideoAvailable = self->_faceTimeVideoAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_faceTimeAudioAvailable;
    toCopy[12] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[9] = self->_faceTimeVideoAvailable;
    toCopy[12] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_faceTimeAudioAvailable;
    *(result + 12) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 9) = self->_faceTimeVideoAvailable;
    *(result + 12) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = equalCopy[8];
  if (self->_faceTimeAudioAvailable)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (equalCopy[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) != 0)
    {
      if (self->_faceTimeVideoAvailable)
      {
        if (equalCopy[9])
        {
          goto LABEL_18;
        }
      }

      else if (!equalCopy[9])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_faceTimeAudioAvailable;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_faceTimeVideoAvailable;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if (v5)
  {
    self->_faceTimeAudioAvailable = fromCopy[8];
    *&self->_has |= 1u;
    v5 = fromCopy[12];
  }

  if ((v5 & 2) != 0)
  {
    self->_faceTimeVideoAvailable = fromCopy[9];
    *&self->_has |= 2u;
  }
}

@end