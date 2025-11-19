@interface CSDMessagingRoute
- (BOOL)isEqual:(id)a3;
- (CSDMessagingRoute)initWithTURoute:(id)a3;
- (TURoute)tuRoute;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)a3;
- (int)deviceType;
- (int64_t)tuRouteDeviceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProtoCurrentlyPicked:(BOOL)a3;
- (void)setHasProtoGuest:(BOOL)a3;
- (void)setHasProtoSupportsRelay:(BOOL)a3;
- (void)setTURouteDeviceType:(int64_t)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AirPods"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"BeatsSolo"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BeatsX"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Powerbeats"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"BeatsStudio"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HomePod"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"iPod"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"iPad"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"iMac"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"MacBook"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"MacMini"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"MacPro"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Watch"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HomePodStereoPair"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"iPadPro"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"PowerbeatsPro"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"BeatsSoloPro"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"AirPodsPro"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Powerbeats4"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"HeadPods"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"BeatsX2"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"HomePodMini"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"HomePodMiniStereoPair"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"BeatsStudioBuds"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"BeatsFitPro"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"AirPods3"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"B620"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"B620StereoPair"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"B698"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"B487"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"B463"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"B498"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"B768"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"VisionPro"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"B494b"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"B788"])
  {
    v4 = 39;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoCurrentlyPicked:(BOOL)a3
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

- (void)setHasProtoGuest:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProtoSupportsRelay:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingRoute *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
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
  v4 = v10;
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
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    protoSupportsRelay = self->_protoSupportsRelay;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

LABEL_10:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uniqueIdentifier)
  {
    [v4 setUniqueIdentifier:?];
    v4 = v6;
  }

  if (self->_name)
  {
    [v6 setName:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_deviceType;
    *(v4 + 36) |= 1u;
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

  *(v4 + 32) = self->_protoCurrentlyPicked;
  *(v4 + 36) |= 2u;
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
  *(v4 + 33) = self->_protoGuest;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v4 + 34) = self->_protoSupportsRelay;
    *(v4 + 36) |= 8u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 3))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_33;
    }
  }

  name = self->_name;
  if (name | *(v4 + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_deviceType != *(v4 + 2))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_33;
    }

    v8 = *(v4 + 32);
    if (self->_protoCurrentlyPicked)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_33;
    }

    v9 = *(v4 + 33);
    if (self->_protoGuest)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_33;
  }

  v7 = (*(v4 + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) != 0)
    {
      if (self->_protoSupportsRelay)
      {
        if (*(v4 + 34))
        {
          goto LABEL_35;
        }
      }

      else if (!*(v4 + 34))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(CSDMessagingRoute *)self setUniqueIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(CSDMessagingRoute *)self setName:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_deviceType = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
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

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_protoCurrentlyPicked = *(v4 + 32);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
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
  self->_protoGuest = *(v4 + 33);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_9:
    self->_protoSupportsRelay = *(v4 + 34);
    *&self->_has |= 8u;
  }

LABEL_10:
}

- (CSDMessagingRoute)initWithTURoute:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingRoute *)self init];
  if (v5)
  {
    v6 = [v4 uniqueIdentifier];
    [(CSDMessagingRoute *)v5 setUniqueIdentifier:v6];

    v7 = [v4 name];
    [(CSDMessagingRoute *)v5 setName:v7];

    -[CSDMessagingRoute setTURouteDeviceType:](v5, "setTURouteDeviceType:", [v4 deviceType]);
    -[CSDMessagingRoute setCurrentlyPicked:](v5, "setCurrentlyPicked:", [v4 isCurrentlyPicked]);
    -[CSDMessagingRoute setGuest:](v5, "setGuest:", [v4 isGuest]);
    -[CSDMessagingRoute setSupportsRelay:](v5, "setSupportsRelay:", [v4 supportsRelay]);
  }

  return v5;
}

- (TURoute)tuRoute
{
  v3 = [TUMutableRoute alloc];
  v4 = [(CSDMessagingRoute *)self uniqueIdentifier];
  v5 = [(CSDMessagingRoute *)self name];
  v6 = [v3 initWithUniqueIdentifier:v4 name:v5];

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

- (void)setTURouteDeviceType:(int64_t)a3
{
  v5 = 1;
  switch(a3)
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