@interface AWDMDNSResponderResolveStatsDomain
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addHostname:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMDNSResponderResolveStatsDomain

- (void)dealloc
{
  [(AWDMDNSResponderResolveStatsDomain *)self setName:0];
  [(AWDMDNSResponderResolveStatsDomain *)self setHostnames:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsDomain;
  [(AWDMDNSResponderResolveStatsDomain *)&v3 dealloc];
}

- (void)addHostname:(id)a3
{
  hostnames = self->_hostnames;
  if (!hostnames)
  {
    hostnames = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_hostnames = hostnames;
  }

  [(NSMutableArray *)hostnames addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsDomain;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStatsDomain description](&v3, sel_description), -[AWDMDNSResponderResolveStatsDomain dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_hostnames count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_hostnames, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    hostnames = self->_hostnames;
    v8 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(hostnames);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"hostname"];
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  hostnames = self->_hostnames;
  v5 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(hostnames);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (self->_name)
  {
    [a3 setName:?];
  }

  if ([(AWDMDNSResponderResolveStatsDomain *)self hostnamesCount])
  {
    [a3 clearHostnames];
    v5 = [(AWDMDNSResponderResolveStatsDomain *)self hostnamesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addHostname:{-[AWDMDNSResponderResolveStatsDomain hostnameAtIndex:](self, "hostnameAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[2] = [(NSString *)self->_name copyWithZone:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  hostnames = self->_hostnames;
  v7 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(hostnames);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addHostname:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)hostnames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    name = self->_name;
    if (!(name | *(a3 + 2)) || (v5 = [(NSString *)name isEqual:?]) != 0)
    {
      hostnames = self->_hostnames;
      if (hostnames | *(a3 + 1))
      {

        LOBYTE(v5) = [(NSMutableArray *)hostnames isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 2))
  {
    [(AWDMDNSResponderResolveStatsDomain *)self setName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMDNSResponderResolveStatsDomain *)self addHostname:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end