@interface W5NetworkStatus
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNetworkStatus:(id)a3;
- (W5NetworkStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPrimaryDNSAddresses:(id)a3;
- (void)setPrimaryIPv4Addresses:(id)a3;
- (void)setPrimaryIPv6Addresses:(id)a3;
@end

@implementation W5NetworkStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5NetworkStatus;
  [(W5NetworkStatus *)&v3 dealloc];
}

- (void)setPrimaryDNSAddresses:(id)a3
{
  primaryDNSAddresses = self->_primaryDNSAddresses;
  if (primaryDNSAddresses != a3)
  {

    self->_primaryDNSAddresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_primaryDNSAddresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setPrimaryIPv4Addresses:(id)a3
{
  primaryIPv4Addresses = self->_primaryIPv4Addresses;
  if (primaryIPv4Addresses != a3)
  {

    self->_primaryIPv4Addresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_primaryIPv4Addresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setPrimaryIPv6Addresses:(id)a3
{
  primaryIPv6Addresses = self->_primaryIPv6Addresses;
  if (primaryIPv6Addresses != a3)
  {

    self->_primaryIPv6Addresses = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_primaryIPv6Addresses = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Primary IPv4: %@ (%@)\n", self->_primaryIPv4InterfaceName, self->_primaryIPv4ServiceName];
  [v3 appendFormat:@"Primary IPv6: %@ (%@)\n", self->_primaryIPv6InterfaceName, self->_primaryIPv6ServiceName];
  [v3 appendFormat:@"IPv4 Addresses: %lu\n", -[NSArray count](self->_primaryIPv4Addresses, "count")];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  primaryIPv4Addresses = self->_primaryIPv4Addresses;
  v5 = [(NSArray *)primaryIPv4Addresses countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(primaryIPv4Addresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v29 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)primaryIPv4Addresses countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"IPv4 Router: %@\n", self->_primaryIPv4Router];
  [v3 appendFormat:@"IPv6 Addresses: %lu\n", -[NSArray count](self->_primaryIPv6Addresses, "count")];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  primaryIPv6Addresses = self->_primaryIPv6Addresses;
  v10 = [(NSArray *)primaryIPv6Addresses countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(primaryIPv6Addresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v25 + 1) + 8 * j)];
      }

      v11 = [(NSArray *)primaryIPv6Addresses countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  [v3 appendFormat:@"IPv6 Router: %@\n", self->_primaryIPv6Router];
  [v3 appendFormat:@"DNS Addresses: %lu\n", -[NSArray count](self->_primaryDNSAddresses, "count")];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  primaryDNSAddresses = self->_primaryDNSAddresses;
  v15 = [(NSArray *)primaryDNSAddresses countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(primaryDNSAddresses);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v21 + 1) + 8 * k)];
      }

      v16 = [(NSArray *)primaryDNSAddresses countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v16);
  }

  [v3 appendFormat:@"Apple Reachable: 0x%X\n%@\n", self->_isAppleReachable, W5DescriptionForReachabilityFlags(self->_isAppleReachable, @"\t"];
  result = [v3 copy];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5NetworkStatus;
  if (-[W5NetworkStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToNetworkStatus:(id)a3
{
  primaryIPv4InterfaceName = self->_primaryIPv4InterfaceName;
  if (!primaryIPv4InterfaceName)
  {
    if (![a3 primaryIPv4InterfaceName])
    {
      goto LABEL_5;
    }

    primaryIPv4InterfaceName = self->_primaryIPv4InterfaceName;
  }

  v6 = -[NSString isEqual:](primaryIPv4InterfaceName, "isEqual:", [a3 primaryIPv4InterfaceName]);
  if (!v6)
  {
    return v6;
  }

LABEL_5:
  primaryIPv4ServiceName = self->_primaryIPv4ServiceName;
  if (!primaryIPv4ServiceName)
  {
    if (![a3 primaryIPv4ServiceName])
    {
      goto LABEL_9;
    }

    primaryIPv4ServiceName = self->_primaryIPv4ServiceName;
  }

  v6 = -[NSString isEqual:](primaryIPv4ServiceName, "isEqual:", [a3 primaryIPv4ServiceName]);
  if (!v6)
  {
    return v6;
  }

LABEL_9:
  primaryIPv6InterfaceName = self->_primaryIPv6InterfaceName;
  if (!primaryIPv6InterfaceName)
  {
    if (![a3 primaryIPv6InterfaceName])
    {
      goto LABEL_13;
    }

    primaryIPv6InterfaceName = self->_primaryIPv6InterfaceName;
  }

  v6 = -[NSString isEqual:](primaryIPv6InterfaceName, "isEqual:", [a3 primaryIPv6InterfaceName]);
  if (!v6)
  {
    return v6;
  }

LABEL_13:
  primaryIPv6ServiceName = self->_primaryIPv6ServiceName;
  if (!primaryIPv6ServiceName)
  {
    if (![a3 primaryIPv6ServiceName])
    {
      goto LABEL_17;
    }

    primaryIPv6ServiceName = self->_primaryIPv6ServiceName;
  }

  v6 = -[NSString isEqual:](primaryIPv6ServiceName, "isEqual:", [a3 primaryIPv6ServiceName]);
  if (!v6)
  {
    return v6;
  }

LABEL_17:
  primaryIPv4ServiceID = self->_primaryIPv4ServiceID;
  if (!primaryIPv4ServiceID)
  {
    if (![a3 primaryIPv4ServiceID])
    {
      goto LABEL_21;
    }

    primaryIPv4ServiceID = self->_primaryIPv4ServiceID;
  }

  v6 = -[NSString isEqual:](primaryIPv4ServiceID, "isEqual:", [a3 primaryIPv4ServiceID]);
  if (!v6)
  {
    return v6;
  }

LABEL_21:
  primaryIPv6ServiceID = self->_primaryIPv6ServiceID;
  if (!primaryIPv6ServiceID)
  {
    if (![a3 primaryIPv6ServiceID])
    {
      goto LABEL_25;
    }

    primaryIPv6ServiceID = self->_primaryIPv6ServiceID;
  }

  v6 = -[NSString isEqual:](primaryIPv6ServiceID, "isEqual:", [a3 primaryIPv6ServiceID]);
  if (!v6)
  {
    return v6;
  }

LABEL_25:
  primaryIPv4Addresses = self->_primaryIPv4Addresses;
  if (!primaryIPv4Addresses)
  {
    if (![a3 primaryIPv4Addresses])
    {
      goto LABEL_29;
    }

    primaryIPv4Addresses = self->_primaryIPv4Addresses;
  }

  v6 = -[NSArray isEqual:](primaryIPv4Addresses, "isEqual:", [a3 primaryIPv4Addresses]);
  if (!v6)
  {
    return v6;
  }

LABEL_29:
  primaryIPv6Addresses = self->_primaryIPv6Addresses;
  if (!primaryIPv6Addresses)
  {
    if (![a3 primaryIPv6Addresses])
    {
      goto LABEL_33;
    }

    primaryIPv6Addresses = self->_primaryIPv6Addresses;
  }

  v6 = -[NSArray isEqual:](primaryIPv6Addresses, "isEqual:", [a3 primaryIPv6Addresses]);
  if (!v6)
  {
    return v6;
  }

LABEL_33:
  primaryIPv4Router = self->_primaryIPv4Router;
  if (!primaryIPv4Router)
  {
    if (![a3 primaryIPv4Router])
    {
      goto LABEL_37;
    }

    primaryIPv4Router = self->_primaryIPv4Router;
  }

  v6 = -[NSString isEqual:](primaryIPv4Router, "isEqual:", [a3 primaryIPv4Router]);
  if (!v6)
  {
    return v6;
  }

LABEL_37:
  primaryIPv6Router = self->_primaryIPv6Router;
  if (primaryIPv6Router)
  {
    goto LABEL_40;
  }

  if ([a3 primaryIPv6Router])
  {
    primaryIPv6Router = self->_primaryIPv6Router;
LABEL_40:
    v6 = -[NSString isEqual:](primaryIPv6Router, "isEqual:", [a3 primaryIPv6Router]);
    if (!v6)
    {
      return v6;
    }
  }

  primaryDNSAddresses = self->_primaryDNSAddresses;
  if (!primaryDNSAddresses)
  {
    if (![a3 primaryDNSAddresses])
    {
LABEL_45:
      isAppleReachable = self->_isAppleReachable;
      LOBYTE(v6) = isAppleReachable == [a3 isAppleReachable];
      return v6;
    }

    primaryDNSAddresses = self->_primaryDNSAddresses;
  }

  v6 = -[NSArray isEqual:](primaryDNSAddresses, "isEqual:", [a3 primaryDNSAddresses]);
  if (v6)
  {
    goto LABEL_45;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5NetworkStatus *)self isEqualToNetworkStatus:a3];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_primaryIPv4InterfaceName hash];
  v4 = [(NSString *)self->_primaryIPv4ServiceName hash]^ v3;
  v5 = [(NSString *)self->_primaryIPv6InterfaceName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_primaryIPv6ServiceName hash];
  v7 = [(NSString *)self->_primaryIPv4ServiceID hash];
  v8 = v7 ^ [(NSString *)self->_primaryIPv6ServiceID hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_primaryIPv4Addresses hash];
  v10 = [(NSArray *)self->_primaryIPv6Addresses hash];
  v11 = v10 ^ [(NSString *)self->_primaryIPv4Router hash];
  v12 = v11 ^ [(NSString *)self->_primaryIPv6Router hash];
  return v9 ^ v12 ^ [(NSArray *)self->_primaryDNSAddresses hash]^ self->_isAppleReachable;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5NetworkStatus allocWithZone:?]];
  [(W5NetworkStatus *)v4 setPrimaryIPv4InterfaceName:self->_primaryIPv4InterfaceName];
  [(W5NetworkStatus *)v4 setPrimaryIPv4ServiceName:self->_primaryIPv4ServiceName];
  [(W5NetworkStatus *)v4 setPrimaryIPv6InterfaceName:self->_primaryIPv6InterfaceName];
  [(W5NetworkStatus *)v4 setPrimaryIPv6ServiceName:self->_primaryIPv6ServiceName];
  [(W5NetworkStatus *)v4 setPrimaryIPv4ServiceID:self->_primaryIPv4ServiceID];
  [(W5NetworkStatus *)v4 setPrimaryIPv6ServiceID:self->_primaryIPv6ServiceID];
  [(W5NetworkStatus *)v4 setPrimaryIPv4Addresses:self->_primaryIPv4Addresses];
  [(W5NetworkStatus *)v4 setPrimaryIPv6Addresses:self->_primaryIPv6Addresses];
  [(W5NetworkStatus *)v4 setPrimaryIPv4Router:self->_primaryIPv4Router];
  [(W5NetworkStatus *)v4 setPrimaryIPv6Router:self->_primaryIPv6Router];
  [(W5NetworkStatus *)v4 setPrimaryDNSAddresses:self->_primaryDNSAddresses];
  [(W5NetworkStatus *)v4 setIsAppleReachable:self->_isAppleReachable];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_primaryIPv4InterfaceName forKey:@"_primaryIPv4InterfaceName"];
  [a3 encodeObject:self->_primaryIPv4ServiceName forKey:@"_primaryIPv4ServiceName"];
  [a3 encodeObject:self->_primaryIPv6InterfaceName forKey:@"_primaryIPv6InterfaceName"];
  [a3 encodeObject:self->_primaryIPv6ServiceName forKey:@"_primaryIPv6ServiceName"];
  [a3 encodeObject:self->_primaryIPv4ServiceID forKey:@"_primaryIPv4ServiceID"];
  [a3 encodeObject:self->_primaryIPv6ServiceID forKey:@"_primaryIPv6ServiceID"];
  [a3 encodeObject:self->_primaryIPv4Addresses forKey:@"_primaryIPv4Addresses"];
  [a3 encodeObject:self->_primaryIPv6Addresses forKey:@"_primaryIPv6Addresses"];
  [a3 encodeObject:self->_primaryIPv4Router forKey:@"_primaryIPv4Router"];
  [a3 encodeObject:self->_primaryIPv6Router forKey:@"_primaryIPv6Router"];
  [a3 encodeObject:self->_primaryDNSAddresses forKey:@"_primaryDNSAddresses"];
  isAppleReachable = self->_isAppleReachable;

  [a3 encodeInt:isAppleReachable forKey:@"_isAppleReachable"];
}

- (W5NetworkStatus)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = W5NetworkStatus;
  v4 = [(W5NetworkStatus *)&v12 init];
  if (v4)
  {
    v4->_primaryIPv4InterfaceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv4InterfaceName", "copy"}];
    v4->_primaryIPv4ServiceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv4ServiceName", "copy"}];
    v4->_primaryIPv6InterfaceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv6InterfaceName", "copy"}];
    v4->_primaryIPv6ServiceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv6ServiceName", "copy"}];
    v4->_primaryIPv4ServiceID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv4ServiceID", "copy"}];
    v4->_primaryIPv6ServiceID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv6ServiceID", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_primaryIPv4Addresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_primaryIPv4Addresses", "copy"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v4->_primaryIPv6Addresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"_primaryIPv6Addresses", "copy"}];
    v4->_primaryIPv4Router = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv4Router", "copy"}];
    v4->_primaryIPv6Router = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_primaryIPv6Router", "copy"}];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v4->_primaryDNSAddresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"_primaryDNSAddresses", "copy"}];
    v4->_isAppleReachable = [a3 decodeIntForKey:@"_isAppleReachable"];
  }

  return v4;
}

@end