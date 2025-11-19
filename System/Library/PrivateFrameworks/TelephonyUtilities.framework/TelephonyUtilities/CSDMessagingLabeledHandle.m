@interface CSDMessagingLabeledHandle
+ (id)handleWithTULabeledHandle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TULabeledHandle)tuLabeledHandle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingLabeledHandle

+ (id)handleWithTULabeledHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 handle];
    v6 = [CSDMessagingHandle handleWithTUHandle:v5];

    if (v6)
    {
      v7 = objc_alloc_init(CSDMessagingLabeledHandle);
      v8 = [v4 label];
      [(CSDMessagingLabeledHandle *)v7 setLabel:v8];

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
  v3 = [(CSDMessagingLabeledHandle *)self handle];

  if (v3)
  {
    v4 = [(CSDMessagingLabeledHandle *)self handle];
    v5 = [v4 tuHandle];

    v6 = [TULabeledHandle alloc];
    v7 = [(CSDMessagingLabeledHandle *)self label];
    v8 = [v6 initWithHandle:v5 label:v7 isSuggested:0];
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
  v4 = [(CSDMessagingLabeledHandle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  handle = self->_handle;
  if (handle)
  {
    v5 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"handle"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v5;
  }

  if (self->_label)
  {
    [v5 setLabel:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_label copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((handle = self->_handle, !(handle | v4[1])) || -[CSDMessagingHandle isEqual:](handle, "isEqual:")))
  {
    label = self->_label;
    if (label | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  handle = self->_handle;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(CSDMessagingLabeledHandle *)self setLabel:?];
    v4 = v7;
  }
}

@end