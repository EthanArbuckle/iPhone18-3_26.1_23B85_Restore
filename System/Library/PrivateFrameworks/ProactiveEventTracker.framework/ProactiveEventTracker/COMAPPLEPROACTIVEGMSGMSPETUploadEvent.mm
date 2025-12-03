@interface COMAPPLEPROACTIVEGMSGMSPETUploadEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation COMAPPLEPROACTIVEGMSGMSPETUploadEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  metadata = self->_metadata;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (metadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(COMAPPLEPETCOMMONPETMetadata *)metadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)self setMetadata:?];
  }

  fromCopy = v9;
LABEL_7:
  uberEvent = self->_uberEvent;
  v8 = fromCopy[2];
  if (uberEvent)
  {
    if (v8)
    {
      [(COMAPPLEPROACTIVEGMSGMSUberEvent *)uberEvent mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)self setUberEvent:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((metadata = self->_metadata, !(metadata | equalCopy[1])) || -[COMAPPLEPETCOMMONPETMetadata isEqual:](metadata, "isEqual:")))
  {
    uberEvent = self->_uberEvent;
    if (uberEvent | equalCopy[2])
    {
      v7 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)uberEvent isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(COMAPPLEPETCOMMONPETMetadata *)self->_metadata copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self->_uberEvent copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_metadata)
  {
    [toCopy setMetadata:?];
    toCopy = v5;
  }

  if (self->_uberEvent)
  {
    [v5 setUberEvent:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_uberEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(COMAPPLEPETCOMMONPETMetadata *)metadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  uberEvent = self->_uberEvent;
  if (uberEvent)
  {
    dictionaryRepresentation2 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)uberEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"uberEvent"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSPETUploadEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)&v8 description];
  dictionaryRepresentation = [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end