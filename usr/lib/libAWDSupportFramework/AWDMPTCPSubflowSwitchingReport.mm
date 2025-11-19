@interface AWDMPTCPSubflowSwitchingReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasSwitchCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMPTCPSubflowSwitchingReport

- (void)dealloc
{
  [(AWDMPTCPSubflowSwitchingReport *)self setSwitchFromInterfaceName:0];
  [(AWDMPTCPSubflowSwitchingReport *)self setSwitchToInterfaceName:0];
  v3.receiver = self;
  v3.super_class = AWDMPTCPSubflowSwitchingReport;
  [(AWDMPTCPSubflowSwitchingReport *)&v3 dealloc];
}

- (void)setHasSwitchCount:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDMPTCPSubflowSwitchingReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMPTCPSubflowSwitchingReport description](&v3, sel_description), -[AWDMPTCPSubflowSwitchingReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  switchFromInterfaceName = self->_switchFromInterfaceName;
  if (switchFromInterfaceName)
  {
    [v3 setObject:switchFromInterfaceName forKey:@"switch_from_interface_name"];
  }

  switchToInterfaceName = self->_switchToInterfaceName;
  if (switchToInterfaceName)
  {
    [v3 setObject:switchToInterfaceName forKey:@"switch_to_interface_name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_switchCount), @"switch_count"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_switchFromInterfaceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_switchToInterfaceName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    switchCount = self->_switchCount;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if (self->_switchFromInterfaceName)
  {
    [a3 setSwitchFromInterfaceName:?];
  }

  if (self->_switchToInterfaceName)
  {
    [a3 setSwitchToInterfaceName:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 4) = self->_switchCount;
    *(a3 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_switchFromInterfaceName copyWithZone:a3];
  *(v6 + 32) = [(NSString *)self->_switchToInterfaceName copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_switchCount;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    switchFromInterfaceName = self->_switchFromInterfaceName;
    if (!(switchFromInterfaceName | *(a3 + 3)) || (v5 = [(NSString *)switchFromInterfaceName isEqual:?]) != 0)
    {
      switchToInterfaceName = self->_switchToInterfaceName;
      if (!(switchToInterfaceName | *(a3 + 4)) || (v5 = [(NSString *)switchToInterfaceName isEqual:?]) != 0)
      {
        LOBYTE(v5) = (*(a3 + 40) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 40) & 2) == 0 || self->_switchCount != *(a3 + 4))
          {
            goto LABEL_15;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_switchFromInterfaceName hash];
  v5 = [(NSString *)self->_switchToInterfaceName hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_switchCount;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDMPTCPSubflowSwitchingReport *)self setSwitchFromInterfaceName:?];
  }

  if (*(a3 + 4))
  {
    [(AWDMPTCPSubflowSwitchingReport *)self setSwitchToInterfaceName:?];
  }

  if ((*(a3 + 40) & 2) != 0)
  {
    self->_switchCount = *(a3 + 4);
    *&self->_has |= 2u;
  }
}

@end