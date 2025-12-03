@interface CSDMessagingLabeledHandle
+ (id)handleWithTULabeledHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (TULabeledHandle)tuLabeledHandle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingLabeledHandle

+ (id)handleWithTULabeledHandle:(id)handle
{
  handleCopy = handle;
  v4 = handleCopy;
  if (handleCopy)
  {
    handle = [handleCopy handle];
    v6 = [CSDMessagingHandle handleWithTUHandle:handle];

    if (v6)
    {
      v7 = objc_alloc_init(CSDMessagingLabeledHandle);
      label = [v4 label];
      [(CSDMessagingLabeledHandle *)v7 setLabel:label];

      [(CSDMessagingLabeledHandle *)v7 setHandle:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TULabeledHandle)tuLabeledHandle
{
  handle = [(CSDMessagingLabeledHandle *)self handle];

  if (handle)
  {
    handle2 = [(CSDMessagingLabeledHandle *)self handle];
    tuHandle = [handle2 tuHandle];

    v6 = [TULabeledHandle alloc];
    label = [(CSDMessagingLabeledHandle *)self label];
    v8 = [v6 initWithHandle:tuHandle label:label isSuggested:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingLabeledHandle;
  v3 = [(CSDMessagingLabeledHandle *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingLabeledHandle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handle)
  {
    [toCopy setHandle:?];
    toCopy = v5;
  }

  if (self->_label)
  {
    [v5 setLabel:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_label copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((handle = self->_handle, !(handle | equalCopy[1])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")))
  {
    label = self->_label;
    if (label | equalCopy[2])
    {
      v7 = [(NSString *)label isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  handle = self->_handle;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (handle)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(CSDMessagingHandle *)handle mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(CSDMessagingLabeledHandle *)self setHandle:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(CSDMessagingLabeledHandle *)self setLabel:?];
    fromCopy = v7;
  }
}

@end