@interface AWDWiFiNWActivityInterfaceStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRole:(id)role;
- (int)role;
- (unint64_t)hash;
- (void)addBytes:(id)bytes;
- (void)addNpeers:(id)npeers;
- (void)addPackets:(id)packets;
- (void)addPeer:(id)peer;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDps:(BOOL)dps;
- (void)setHasRole:(BOOL)role;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityInterfaceStats

- (void)dealloc
{
  [(AWDWiFiNWActivityInterfaceStats *)self setPackets:0];
  [(AWDWiFiNWActivityInterfaceStats *)self setBytes:0];
  [(AWDWiFiNWActivityInterfaceStats *)self setPeers:0];
  [(AWDWiFiNWActivityInterfaceStats *)self setNpeers:0];
  [(AWDWiFiNWActivityInterfaceStats *)self setAssoc:0];
  [(AWDWiFiNWActivityInterfaceStats *)self setAwdlMode:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityInterfaceStats;
  [(AWDWiFiNWActivityInterfaceStats *)&v3 dealloc];
}

- (int)role
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_role;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRole:(BOOL)role
{
  if (role)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRole:(id)role
{
  if ([role isEqualToString:@"INFRA"])
  {
    return 0;
  }

  if ([role isEqualToString:@"LEGACYAWDL"])
  {
    return 1;
  }

  if ([role isEqualToString:@"LLWAWDL"])
  {
    return 2;
  }

  return 0;
}

- (void)addPackets:(id)packets
{
  packets = self->_packets;
  if (!packets)
  {
    packets = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_packets = packets;
  }

  [(NSMutableArray *)packets addObject:packets];
}

- (void)addBytes:(id)bytes
{
  bytes = self->_bytes;
  if (!bytes)
  {
    bytes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_bytes = bytes;
  }

  [(NSMutableArray *)bytes addObject:bytes];
}

- (void)addPeer:(id)peer
{
  peers = self->_peers;
  if (!peers)
  {
    peers = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_peers = peers;
  }

  [(NSMutableArray *)peers addObject:peer];
}

- (void)addNpeers:(id)npeers
{
  npeers = self->_npeers;
  if (!npeers)
  {
    npeers = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_npeers = npeers;
  }

  [(NSMutableArray *)npeers addObject:npeers];
}

- (void)setHasDps:(BOOL)dps
{
  if (dps)
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
  v3.super_class = AWDWiFiNWActivityInterfaceStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityInterfaceStats description](&v3, sel_description), -[AWDWiFiNWActivityInterfaceStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    role = self->_role;
    if (role >= 3)
    {
      v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_29EE332B0[role];
    }

    [dictionary setObject:v5 forKey:@"role"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    packets = self->_packets;
    v8 = [(NSMutableArray *)packets countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(packets);
          }

          [v6 addObject:{objc_msgSend(*(*(&v47 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)packets countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v12 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    bytes = self->_bytes;
    v14 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v44;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(bytes);
          }

          [v12 addObject:{objc_msgSend(*(*(&v43 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v15 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_peers count])
  {
    v18 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_peers, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    peers = self->_peers;
    v20 = [(NSMutableArray *)peers countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(peers);
          }

          [v18 addObject:{objc_msgSend(*(*(&v39 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v21 = [(NSMutableArray *)peers countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"peer"];
  }

  if ([(NSMutableArray *)self->_npeers count])
  {
    v24 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_npeers, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    npeers = self->_npeers;
    v26 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v35 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(npeers);
          }

          [v24 addObject:{objc_msgSend(*(*(&v35 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v27 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v35 objects:v51 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"npeers"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dps), @"dps"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_consecutivedps), @"consecutivedps"}];
  }

  assoc = self->_assoc;
  if (assoc)
  {
    [dictionary setObject:-[AWDWiFiNWActivityAssoc dictionaryRepresentation](assoc forKey:{"dictionaryRepresentation"), @"assoc"}];
  }

  awdlMode = self->_awdlMode;
  if (awdlMode)
  {
    [dictionary setObject:-[AWDWiFiNWActivityStateBin dictionaryRepresentation](awdlMode forKey:{"dictionaryRepresentation"), @"awdlMode"}];
  }

  v33 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v53 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 4) != 0)
  {
    role = self->_role;
    PBDataWriterWriteInt32Field();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  packets = self->_packets;
  v6 = [(NSMutableArray *)packets countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(packets);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)packets countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  bytes = self->_bytes;
  v12 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(bytes);
        }

        v16 = *(*(&v41 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v13);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  peers = self->_peers;
  v18 = [(NSMutableArray *)peers countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(peers);
        }

        v22 = *(*(&v37 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)peers countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v19);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  npeers = self->_npeers;
  v24 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(npeers);
        }

        v28 = *(*(&v33 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v25);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dps = self->_dps;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    consecutivedps = self->_consecutivedps;
    PBDataWriterWriteUint32Field();
  }

  if (self->_assoc)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_awdlMode)
  {
    PBDataWriterWriteSubmessage();
  }

  v32 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 16) = self->_role;
    *(to + 68) |= 4u;
  }

  if ([(AWDWiFiNWActivityInterfaceStats *)self packetsCount])
  {
    [to clearPackets];
    packetsCount = [(AWDWiFiNWActivityInterfaceStats *)self packetsCount];
    if (packetsCount)
    {
      v6 = packetsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addPackets:{-[AWDWiFiNWActivityInterfaceStats packetsAtIndex:](self, "packetsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityInterfaceStats *)self bytesCount])
  {
    [to clearBytes];
    bytesCount = [(AWDWiFiNWActivityInterfaceStats *)self bytesCount];
    if (bytesCount)
    {
      v9 = bytesCount;
      for (j = 0; j != v9; ++j)
      {
        [to addBytes:{-[AWDWiFiNWActivityInterfaceStats bytesAtIndex:](self, "bytesAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityInterfaceStats *)self peersCount])
  {
    [to clearPeers];
    peersCount = [(AWDWiFiNWActivityInterfaceStats *)self peersCount];
    if (peersCount)
    {
      v12 = peersCount;
      for (k = 0; k != v12; ++k)
      {
        [to addPeer:{-[AWDWiFiNWActivityInterfaceStats peerAtIndex:](self, "peerAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityInterfaceStats *)self npeersCount])
  {
    [to clearNpeers];
    npeersCount = [(AWDWiFiNWActivityInterfaceStats *)self npeersCount];
    if (npeersCount)
    {
      v15 = npeersCount;
      for (m = 0; m != v15; ++m)
      {
        [to addNpeers:{-[AWDWiFiNWActivityInterfaceStats npeersAtIndex:](self, "npeersAtIndex:", m)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 9) = self->_dps;
    *(to + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 8) = self->_consecutivedps;
    *(to + 68) |= 1u;
  }

  if (self->_assoc)
  {
    [to setAssoc:?];
  }

  if (self->_awdlMode)
  {

    [to setAwdlMode:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v54 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_role;
    *(v5 + 68) |= 4u;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  packets = self->_packets;
  v8 = [(NSMutableArray *)packets countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(packets);
        }

        v12 = [*(*(&v46 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPackets:v12];
      }

      v9 = [(NSMutableArray *)packets countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  bytes = self->_bytes;
  v14 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(bytes);
        }

        v18 = [*(*(&v42 + 1) + 8 * j) copyWithZone:zone];
        [v6 addBytes:v18];
      }

      v15 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v15);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  peers = self->_peers;
  v20 = [(NSMutableArray *)peers countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(peers);
        }

        v24 = [*(*(&v38 + 1) + 8 * k) copyWithZone:zone];
        [v6 addPeer:v24];
      }

      v21 = [(NSMutableArray *)peers countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v21);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  npeers = self->_npeers;
  v26 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(npeers);
        }

        v30 = [*(*(&v34 + 1) + 8 * m) copyWithZone:zone];
        [v6 addNpeers:v30];
      }

      v27 = [(NSMutableArray *)npeers countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v27);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 36) = self->_dps;
    *(v6 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 32) = self->_consecutivedps;
    *(v6 + 68) |= 1u;
  }

  *(v6 + 8) = [(AWDWiFiNWActivityAssoc *)self->_assoc copyWithZone:zone];
  *(v6 + 16) = [(AWDWiFiNWActivityStateBin *)self->_awdlMode copyWithZone:zone];
  v32 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 68);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 68) & 4) == 0 || self->_role != *(equal + 16))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 68) & 4) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    packets = self->_packets;
    if (!(packets | *(equal + 6)) || (v5 = [(NSMutableArray *)packets isEqual:?]) != 0)
    {
      bytes = self->_bytes;
      if (!(bytes | *(equal + 3)) || (v5 = [(NSMutableArray *)bytes isEqual:?]) != 0)
      {
        peers = self->_peers;
        if (!(peers | *(equal + 7)) || (v5 = [(NSMutableArray *)peers isEqual:?]) != 0)
        {
          npeers = self->_npeers;
          if (!(npeers | *(equal + 5)) || (v5 = [(NSMutableArray *)npeers isEqual:?]) != 0)
          {
            v11 = *(equal + 68);
            if ((*&self->_has & 2) != 0)
            {
              if ((*(equal + 68) & 2) == 0 || self->_dps != *(equal + 9))
              {
                goto LABEL_29;
              }
            }

            else if ((*(equal + 68) & 2) != 0)
            {
              goto LABEL_29;
            }

            if (*&self->_has)
            {
              if ((*(equal + 68) & 1) == 0 || self->_consecutivedps != *(equal + 8))
              {
                goto LABEL_29;
              }
            }

            else if (*(equal + 68))
            {
              goto LABEL_29;
            }

            assoc = self->_assoc;
            if (!(assoc | *(equal + 1)) || (v5 = [(AWDWiFiNWActivityAssoc *)assoc isEqual:?]) != 0)
            {
              awdlMode = self->_awdlMode;
              if (awdlMode | *(equal + 2))
              {

                LOBYTE(v5) = [(AWDWiFiNWActivityStateBin *)awdlMode isEqual:?];
              }

              else
              {
                LOBYTE(v5) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_role;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_packets hash];
  v5 = [(NSMutableArray *)self->_bytes hash];
  v6 = [(NSMutableArray *)self->_peers hash];
  v7 = [(NSMutableArray *)self->_npeers hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_dps;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 2654435761 * self->_consecutivedps;
LABEL_9:
  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(AWDWiFiNWActivityAssoc *)self->_assoc hash];
  return v10 ^ v11 ^ [(AWDWiFiNWActivityStateBin *)self->_awdlMode hash];
}

- (void)mergeFrom:(id)from
{
  v51 = *MEMORY[0x29EDCA608];
  if ((*(from + 68) & 4) != 0)
  {
    self->_role = *(from + 16);
    *&self->_has |= 4u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = *(from + 6);
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiNWActivityInterfaceStats *)self addPackets:*(*(&v43 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = *(from + 3);
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiNWActivityInterfaceStats *)self addBytes:*(*(&v39 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v12);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = *(from + 7);
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDWiFiNWActivityInterfaceStats *)self addPeer:*(*(&v35 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v17);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = *(from + 5);
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDWiFiNWActivityInterfaceStats *)self addNpeers:*(*(&v31 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v22);
  }

  v25 = *(from + 68);
  if ((v25 & 2) != 0)
  {
    self->_dps = *(from + 9);
    *&self->_has |= 2u;
    v25 = *(from + 68);
  }

  if (v25)
  {
    self->_consecutivedps = *(from + 8);
    *&self->_has |= 1u;
  }

  assoc = self->_assoc;
  v27 = *(from + 1);
  if (assoc)
  {
    if (v27)
    {
      [(AWDWiFiNWActivityAssoc *)assoc mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(AWDWiFiNWActivityInterfaceStats *)self setAssoc:?];
  }

  awdlMode = self->_awdlMode;
  v29 = *(from + 2);
  if (awdlMode)
  {
    if (v29)
    {
      [(AWDWiFiNWActivityStateBin *)awdlMode mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(AWDWiFiNWActivityInterfaceStats *)self setAwdlMode:?];
  }

  v30 = *MEMORY[0x29EDCA608];
}

@end