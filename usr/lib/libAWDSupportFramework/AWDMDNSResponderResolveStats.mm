@interface AWDMDNSResponderResolveStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDomain:(id)a3;
- (void)addServer:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMDNSResponderResolveStats

- (void)dealloc
{
  [(AWDMDNSResponderResolveStats *)self setServers:0];
  [(AWDMDNSResponderResolveStats *)self setDomains:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStats;
  [(AWDMDNSResponderResolveStats *)&v3 dealloc];
}

- (void)addServer:(id)a3
{
  servers = self->_servers;
  if (!servers)
  {
    servers = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_servers = servers;
  }

  [(NSMutableArray *)servers addObject:a3];
}

- (void)addDomain:(id)a3
{
  domains = self->_domains;
  if (!domains)
  {
    domains = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_domains = domains;
  }

  [(NSMutableArray *)domains addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStats description](&v3, sel_description), -[AWDMDNSResponderResolveStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_servers count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_servers, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    servers = self->_servers;
    v6 = [(NSMutableArray *)servers countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(servers);
          }

          [v4 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)servers countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"server"];
  }

  if ([(NSMutableArray *)self->_domains count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_domains, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    domains = self->_domains;
    v12 = [(NSMutableArray *)domains countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(domains);
          }

          [v10 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)domains countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"domain"];
  }

  v16 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  servers = self->_servers;
  v6 = [(NSMutableArray *)servers countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(servers);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)servers countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  domains = self->_domains;
  v12 = [(NSMutableArray *)domains countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(domains);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)domains countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if ([(AWDMDNSResponderResolveStats *)self serversCount])
  {
    [a3 clearServers];
    v5 = [(AWDMDNSResponderResolveStats *)self serversCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addServer:{-[AWDMDNSResponderResolveStats serverAtIndex:](self, "serverAtIndex:", i)}];
      }
    }
  }

  if ([(AWDMDNSResponderResolveStats *)self domainsCount])
  {
    [a3 clearDomains];
    v8 = [(AWDMDNSResponderResolveStats *)self domainsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addDomain:{-[AWDMDNSResponderResolveStats domainAtIndex:](self, "domainAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  servers = self->_servers;
  v8 = [(NSMutableArray *)servers countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(servers);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) copyWithZone:a3];
        [v6 addServer:v12];
      }

      v9 = [(NSMutableArray *)servers countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  domains = self->_domains;
  v14 = [(NSMutableArray *)domains countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(domains);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:a3];
        [v6 addDomain:v18];
      }

      v15 = [(NSMutableArray *)domains countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    servers = self->_servers;
    if (!(servers | *(a3 + 3)) || (v5 = [(NSMutableArray *)servers isEqual:?]) != 0)
    {
      domains = self->_domains;
      if (domains | *(a3 + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)domains isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
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

  v4 = [(NSMutableArray *)self->_servers hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_domains hash];
}

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x29EDCA608];
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a3 + 3);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMDNSResponderResolveStats *)self addServer:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a3 + 2);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDMDNSResponderResolveStats *)self addDomain:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x29EDCA608];
}

@end