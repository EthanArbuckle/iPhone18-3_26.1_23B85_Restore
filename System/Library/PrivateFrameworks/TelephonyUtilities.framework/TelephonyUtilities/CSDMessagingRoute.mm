@interface CSDMessagingRoute
- (BOOL)isEqual:(id)equal;
- (CSDMessagingRoute)initWithTURoute:(id)route;
- (TURoute)tuRoute;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)type;
- (int)deviceType;
- (int64_t)tuRouteDeviceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProtoCurrentlyPicked:(BOOL)picked;
- (void)setHasProtoGuest:(BOOL)guest;
- (void)setHasProtoSupportsRelay:(BOOL)relay;
- (void)setTURouteDeviceType:(int64_t)type;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingRoute

- (int)deviceType
{
  if (*&self->_has)
  {
    return self->_deviceType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AirPods"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BeatsSolo"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"BeatsX"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Powerbeats"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"BeatsStudio"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"HomePod"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"iPod"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"iPad"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"iMac"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"MacBook"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"MacMini"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"MacPro"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"Watch"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"HomePodStereoPair"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"iPadPro"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"PowerbeatsPro"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"BeatsSoloPro"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"AirPodsPro"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"Powerbeats4"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"HeadPods"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"BeatsX2"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"HomePodMini"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"HomePodMiniStereoPair"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"BeatsStudioBuds"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"BeatsFitPro"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"AirPods3"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"B620"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"B620StereoPair"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"B698"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"B487"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"B463"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"B498"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"B768"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"VisionPro"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"B494b"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"B788"])
  {
    v4 = 39;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoCurrentlyPicked:(BOOL)picked
{
  if (picked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasProtoGuest:(BOOL)guest
{
  if (guest)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProtoSupportsRelay:(BOOL)relay
{
  if (relay)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingRoute;
  v3 = [(CSDMessagingRoute *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingRoute *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if (has)
  {
    deviceType = self->_deviceType;
    if (deviceType < 0x28 && ((0xF6BFFFFFFFuLL >> deviceType) & 1) != 0)
    {
      v9 = off_10061ECF0[deviceType];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_deviceType];
    }

    [v4 setObject:v9 forKey:@"deviceType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_protoCurrentlyPicked];
    [v4 setObject:v12 forKey:@"protoCurrentlyPicked"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_13;
  }

  v13 = [NSNumber numberWithBool:self->_protoGuest];
  [v4 setObject:v13 forKey:@"protoGuest"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    v10 = [NSNumber numberWithBool:self->_protoSupportsRelay];
    [v4 setObject:v10 forKey:@"protoSupportsRelay"];
  }

LABEL_15:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  protoCurrentlyPicked = self->_protoCurrentlyPicked;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  protoGuest = self->_protoGuest;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    protoSupportsRelay = self->_protoSupportsRelay;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueIdentifier)
  {
    [toCopy setUniqueIdentifier:?];
    toCopy = v6;
  }

  if (self->_name)
  {
    [v6 setName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_deviceType;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 32) = self->_protoCurrentlyPicked;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(toCopy + 33) = self->_protoGuest;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(toCopy + 34) = self->_protoSupportsRelay;
    *(toCopy + 36) |= 8u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 2) = self->_deviceType;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 33) = self->_protoGuest;
      *(v5 + 36) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_protoCurrentlyPicked;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 34) = self->_protoSupportsRelay;
    *(v5 + 36) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_33;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_deviceType != *(equalCopy + 2))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_33;
    }

    v8 = *(equalCopy + 32);
    if (self->_protoCurrentlyPicked)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_33;
    }

    v9 = *(equalCopy + 33);
    if (self->_protoGuest)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_33;
  }

  v7 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) != 0)
    {
      if (self->_protoSupportsRelay)
      {
        if (*(equalCopy + 34))
        {
          goto LABEL_35;
        }
      }

      else if (!*(equalCopy + 34))
      {
LABEL_35:
        v7 = 1;
        goto LABEL_34;
      }
    }

LABEL_33:
    v7 = 0;
  }

LABEL_34:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  v4 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_deviceType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_protoCurrentlyPicked;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_protoGuest;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761 * self->_protoSupportsRelay;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(CSDMessagingRoute *)self setUniqueIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(CSDMessagingRoute *)self setName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_deviceType = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_protoCurrentlyPicked = *(fromCopy + 32);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_protoGuest = *(fromCopy + 33);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_9:
    self->_protoSupportsRelay = *(fromCopy + 34);
    *&self->_has |= 8u;
  }

LABEL_10:
}

- (CSDMessagingRoute)initWithTURoute:(id)route
{
  routeCopy = route;
  v5 = [(CSDMessagingRoute *)self init];
  if (v5)
  {
    uniqueIdentifier = [routeCopy uniqueIdentifier];
    [(CSDMessagingRoute *)v5 setUniqueIdentifier:uniqueIdentifier];

    name = [routeCopy name];
    [(CSDMessagingRoute *)v5 setName:name];

    -[CSDMessagingRoute setTURouteDeviceType:](v5, "setTURouteDeviceType:", [routeCopy deviceType]);
    -[CSDMessagingRoute setCurrentlyPicked:](v5, "setCurrentlyPicked:", [routeCopy isCurrentlyPicked]);
    -[CSDMessagingRoute setGuest:](v5, "setGuest:", [routeCopy isGuest]);
    -[CSDMessagingRoute setSupportsRelay:](v5, "setSupportsRelay:", [routeCopy supportsRelay]);
  }

  return v5;
}

- (TURoute)tuRoute
{
  v3 = [TUMutableRoute alloc];
  uniqueIdentifier = [(CSDMessagingRoute *)self uniqueIdentifier];
  name = [(CSDMessagingRoute *)self name];
  v6 = [v3 initWithUniqueIdentifier:uniqueIdentifier name:name];

  [v6 setDeviceType:{-[CSDMessagingRoute tuRouteDeviceType](self, "tuRouteDeviceType")}];
  [v6 setCurrentlyPicked:{-[CSDMessagingRoute isCurrentlyPicked](self, "isCurrentlyPicked")}];
  [v6 setGuest:{-[CSDMessagingRoute isGuest](self, "isGuest")}];
  [v6 setSupportsRelay:{-[CSDMessagingRoute supportsRelay](self, "supportsRelay")}];
  v7 = [v6 copy];

  return v7;
}

- (int64_t)tuRouteDeviceType
{
  v2 = [(CSDMessagingRoute *)self deviceType]- 1;
  if (v2 > 0x26)
  {
    return 0;
  }

  else
  {
    return qword_10057A2A0[v2];
  }
}

- (void)setTURouteDeviceType:(int64_t)type
{
  v5 = 1;
  switch(type)
  {
    case 0:
      if ([(CSDMessagingRoute *)self deviceType])
      {
        v5 = 0;
        goto LABEL_40;
      }

      return;
    case 1:
      goto LABEL_40;
    case 2:
      v5 = 2;
      goto LABEL_40;
    case 3:
      v5 = 3;
      goto LABEL_40;
    case 4:
      v5 = 4;
      goto LABEL_40;
    case 5:
      v5 = 5;
      goto LABEL_40;
    case 6:
      v5 = 6;
      goto LABEL_40;
    case 7:
      v5 = 7;
      goto LABEL_40;
    case 8:
      v5 = 8;
      goto LABEL_40;
    case 9:
      v5 = 9;
      goto LABEL_40;
    case 10:
      v5 = 10;
      goto LABEL_40;
    case 11:
      v5 = 11;
      goto LABEL_40;
    case 12:
      v5 = 12;
      goto LABEL_40;
    case 13:
      v5 = 13;
      goto LABEL_40;
    case 14:
      v5 = 14;
      goto LABEL_40;
    case 15:
      v5 = 15;
      goto LABEL_40;
    case 16:
      v5 = 16;
      goto LABEL_40;
    case 17:
      v5 = 17;
      goto LABEL_40;
    case 18:
      v5 = 18;
      goto LABEL_40;
    case 19:
      v5 = 19;
      goto LABEL_40;
    case 20:
      v5 = 20;
      goto LABEL_40;
    case 21:
      v5 = 21;
      goto LABEL_40;
    case 22:
      v5 = 22;
      goto LABEL_40;
    case 23:
      v5 = 23;
      goto LABEL_40;
    case 24:
      v5 = 24;
      goto LABEL_40;
    case 25:
      v5 = 25;
      goto LABEL_40;
    case 26:
      v5 = 26;
      goto LABEL_40;
    case 27:
      v5 = 27;
      goto LABEL_40;
    case 28:
      v5 = 28;
      goto LABEL_40;
    case 29:
      v5 = 29;
      goto LABEL_40;
    case 31:
      v5 = 31;
      goto LABEL_40;
    case 33:
      v5 = 33;
      goto LABEL_40;
    case 34:
      v5 = 34;
      goto LABEL_40;
    case 36:
      v5 = 36;
      goto LABEL_40;
    case 37:
      v5 = 37;
      goto LABEL_40;
    case 38:
      v5 = 38;
      goto LABEL_40;
    case 39:
      v5 = 39;
LABEL_40:

      [(CSDMessagingRoute *)self setDeviceType:v5];
      break;
    default:
      return;
  }
}

@end