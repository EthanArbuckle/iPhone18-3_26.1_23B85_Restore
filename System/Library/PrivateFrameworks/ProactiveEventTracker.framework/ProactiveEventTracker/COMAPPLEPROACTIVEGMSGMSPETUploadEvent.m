@interface COMAPPLEPROACTIVEGMSGMSPETUploadEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPROACTIVEGMSGMSPETUploadEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  metadata = self->_metadata;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  uberEvent = self->_uberEvent;
  v8 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((metadata = self->_metadata, !(metadata | v4[1])) || -[COMAPPLEPETCOMMONPETMetadata isEqual:](metadata, "isEqual:")))
  {
    uberEvent = self->_uberEvent;
    if (uberEvent | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(COMAPPLEPETCOMMONPETMetadata *)self->_metadata copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self->_uberEvent copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_metadata)
  {
    [v4 setMetadata:?];
    v4 = v5;
  }

  if (self->_uberEvent)
  {
    [v5 setUberEvent:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_uberEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  metadata = self->_metadata;
  if (metadata)
  {
    v5 = [(COMAPPLEPETCOMMONPETMetadata *)metadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"metadata"];
  }

  uberEvent = self->_uberEvent;
  if (uberEvent)
  {
    v7 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)uberEvent dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"uberEvent"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSPETUploadEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)&v8 description];
  v5 = [(COMAPPLEPROACTIVEGMSGMSPETUploadEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end