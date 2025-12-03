@interface CSDMessagingInvitationContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addNearbyStableDeviceIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingInvitationContext

- (void)addNearbyStableDeviceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  nearbyStableDeviceIdentifiers = self->_nearbyStableDeviceIdentifiers;
  v8 = identifiersCopy;
  if (!nearbyStableDeviceIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_nearbyStableDeviceIdentifiers;
    self->_nearbyStableDeviceIdentifiers = v6;

    identifiersCopy = v8;
    nearbyStableDeviceIdentifiers = self->_nearbyStableDeviceIdentifiers;
  }

  [(NSMutableArray *)nearbyStableDeviceIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingInvitationContext;
  v3 = [(CSDMessagingInvitationContext *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingInvitationContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  nearbyStableDeviceIdentifiers = self->_nearbyStableDeviceIdentifiers;
  if (nearbyStableDeviceIdentifiers)
  {
    [v3 setObject:nearbyStableDeviceIdentifiers forKey:@"nearbyStableDeviceIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_nearbyStableDeviceIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(CSDMessagingInvitationContext *)self nearbyStableDeviceIdentifiersCount])
  {
    [toCopy clearNearbyStableDeviceIdentifiers];
    nearbyStableDeviceIdentifiersCount = [(CSDMessagingInvitationContext *)self nearbyStableDeviceIdentifiersCount];
    if (nearbyStableDeviceIdentifiersCount)
    {
      v5 = nearbyStableDeviceIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSDMessagingInvitationContext *)self nearbyStableDeviceIdentifiersAtIndex:i];
        [toCopy addNearbyStableDeviceIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_nearbyStableDeviceIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addNearbyStableDeviceIdentifiers:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    nearbyStableDeviceIdentifiers = self->_nearbyStableDeviceIdentifiers;
    if (nearbyStableDeviceIdentifiers | equalCopy[1])
    {
      v6 = [(NSMutableArray *)nearbyStableDeviceIdentifiers isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CSDMessagingInvitationContext *)self addNearbyStableDeviceIdentifiers:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end