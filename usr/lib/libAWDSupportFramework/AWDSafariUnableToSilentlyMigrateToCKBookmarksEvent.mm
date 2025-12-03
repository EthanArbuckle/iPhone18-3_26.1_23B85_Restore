@interface AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReasons:(id)reasons;
- (int)reasonAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent;
  [(AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent *)&v3 dealloc];
}

- (int)reasonAtIndex:(unint64_t)index
{
  p_reasons = &self->_reasons;
  count = self->_reasons.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_reasons->list[index];
}

- (int)StringAsReasons:(id)reasons
{
  if ([reasons isEqualToString:@"SIGNED_OUT_OF_ICLOUD_OR_ACCOUNT_IS_MAID"])
  {
    return 0;
  }

  if ([reasons isEqualToString:@"EXCLUDED_FROM_MIGRATION_RAMP"])
  {
    return 1;
  }

  if ([reasons isEqualToString:@"STILL_IN_GRACE_PERIOD"])
  {
    return 2;
  }

  if ([reasons isEqualToString:@"INELIGIBLE_MAC_OR_IOS_DEVICE_IN_CLOUD_TABS"])
  {
    return 3;
  }

  if ([reasons isEqualToString:@"INELIGIBLE_WINDOWS_DEVICE"])
  {
    return 4;
  }

  if ([reasons isEqualToString:@"WINDOWS_INFO_NOT_AVAILABLE"])
  {
    return 5;
  }

  if ([reasons isEqualToString:@"INELIGIBLE_DEVICE_IN_ACCOUNT_LIST"])
  {
    return 6;
  }

  if ([reasons isEqualToString:@"CLOUD_TAB_DEVICES_OUT_OF_DATE"])
  {
    return 7;
  }

  if ([reasons isEqualToString:@"SAFARI_SYNC_DISABLED"])
  {
    return 8;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent description](&v3, sel_description), -[AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  p_reasons = &self->_reasons;
  if (self->_reasons.count)
  {
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:?];
    if (p_reasons->count)
    {
      v6 = 0;
      do
      {
        v7 = p_reasons->list[v6];
        if (v7 >= 9)
        {
          v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", p_reasons->list[v6]];
        }

        else
        {
          v8 = off_29EE32FA0[v7];
        }

        [v5 addObject:v8];
        ++v6;
      }

      while (v6 < p_reasons->count);
    }

    [dictionary setObject:v5 forKey:@"reason"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  p_reasons = &self->_reasons;
  if (p_reasons->count)
  {
    v6 = 0;
    do
    {
      v7 = p_reasons->list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < p_reasons->count);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if ([(AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent *)self reasonsCount])
  {
    [to clearReasons];
    reasonsCount = [(AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent *)self reasonsCount];
    if (reasonsCount)
    {
      v6 = reasonsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addReason:{-[AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent reasonAtIndex:](self, "reasonAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 40);
  if (*&self->_has)
  {
    if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 40))
  {
    return 0;
  }

  return PBRepeatedInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
  }

  reasonsCount = [from reasonsCount];
  if (reasonsCount)
  {
    v6 = reasonsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDSafariUnableToSilentlyMigrateToCKBookmarksEvent addReason:](self, "addReason:", [from reasonAtIndex:i]);
    }
  }
}

@end