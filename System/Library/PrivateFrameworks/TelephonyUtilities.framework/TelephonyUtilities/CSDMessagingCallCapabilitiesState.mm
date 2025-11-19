@interface CSDMessagingCallCapabilitiesState
- (BOOL)isEqual:(id)a3;
- (CSDMessagingCallCapabilitiesState)initWithCallCapabilitiesState:(id)a3;
- (TUCallCapabilitiesState)state;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFaceTimeVideoAvailable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingCallCapabilitiesState

- (CSDMessagingCallCapabilitiesState)initWithCallCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingCallCapabilitiesState *)self init];
  if (v5)
  {
    -[CSDMessagingCallCapabilitiesState setFaceTimeAudioAvailable:](v5, "setFaceTimeAudioAvailable:", [v4 isFaceTimeAudioAvailable]);
    -[CSDMessagingCallCapabilitiesState setFaceTimeVideoAvailable:](v5, "setFaceTimeVideoAvailable:", [v4 isFaceTimeVideoAvailable]);
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

- (void)setHasFaceTimeVideoAvailable:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingCallCapabilitiesState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    faceTimeAudioAvailable = self->_faceTimeAudioAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    faceTimeVideoAvailable = self->_faceTimeVideoAvailable;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_faceTimeAudioAvailable;
    v4[12] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[9] = self->_faceTimeVideoAvailable;
    v4[12] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((v4[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v4[8];
  if (self->_faceTimeAudioAvailable)
  {
    if ((v4[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_faceTimeVideoAvailable)
      {
        if (v4[9])
        {
          goto LABEL_18;
        }
      }

      else if (!v4[9])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_faceTimeAudioAvailable = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
  }

  if ((v5 & 2) != 0)
  {
    self->_faceTimeVideoAvailable = v4[9];
    *&self->_has |= 2u;
  }
}

@end