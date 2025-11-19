@interface STIDSTransportPrimitiveDestinationReachabilityMap
+ (id)mapFromUnionOfMaps:(id)a3;
- (BOOL)contains:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMap:(id)a3;
- (NSSet)allDestinations;
- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithCoder:(id)a3;
- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithReachableDestinations:(id)a3 unreachableDestinations:(id)a4 unknownReachabilityDestinations:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)intersectWithDestinations:(id)a3;
- (id)merge:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STIDSTransportPrimitiveDestinationReachabilityMap

- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithReachableDestinations:(id)a3 unreachableDestinations:(id)a4 unknownReachabilityDestinations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = STIDSTransportPrimitiveDestinationReachabilityMap;
  v11 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)&v19 init];
  if (v8)
  {
    v12 = [v8 copy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  reachableDestinations = v11->_reachableDestinations;
  v11->_reachableDestinations = v12;

  if (v9)
  {
    v14 = [v9 copy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  unreachableDestinations = v11->_unreachableDestinations;
  v11->_unreachableDestinations = v14;

  if (v10)
  {
    v16 = [v10 copy];
  }

  else
  {
    v16 = objc_opt_new();
  }

  unknownReachabilityDestinations = v11->_unknownReachabilityDestinations;
  v11->_unknownReachabilityDestinations = v16;

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v7 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v8 = [NSString stringWithFormat:@"<%@:%p { Reachable: %@, Unreachable: %@, Unknown: %@ }>", v4, self, v5, v6, v7];

  return v8;
}

- (NSSet)allDestinations
{
  v3 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v4 = [v3 mutableCopy];

  v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  [v4 unionSet:v5];

  v6 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  [v4 unionSet:v6];

  return v4;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [v5 containsObject:v4];

  if (v6 & 1) != 0 || (-[STIDSTransportPrimitiveDestinationReachabilityMap unreachableDestinations](self, "unreachableDestinations"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v4], v7, (v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
    v9 = [v10 containsObject:v4];
  }

  return v9;
}

- (id)intersectWithDestinations:(id)a3
{
  v4 = a3;
  v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [v5 mutableCopy];

  v7 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v8 = [v7 mutableCopy];

  v9 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v10 = [v9 mutableCopy];

  [v6 intersectSet:v4];
  [v8 intersectSet:v4];
  [v10 intersectSet:v4];
  v11 = [v4 mutableCopy];

  [v11 minusSet:v6];
  [v11 minusSet:v8];
  [v11 minusSet:v10];
  [v10 unionSet:v11];
  v12 = [objc_alloc(objc_opt_class()) initWithReachableDestinations:v6 unreachableDestinations:v8 unknownReachabilityDestinations:v10];

  return v12;
}

+ (id)mapFromUnionOfMaps:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 reachableDestinations];
        [v5 unionSet:v14];

        v15 = [v13 unreachableDestinations];
        [v6 unionSet:v15];

        v16 = [v13 unknownReachabilityDestinations];
        [v7 unionSet:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [[a1 alloc] initWithReachableDestinations:v5 unreachableDestinations:v6 unknownReachabilityDestinations:v7];

  return v17;
}

- (id)merge:(id)a3
{
  v4 = a3;
  v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [v5 mutableCopy];

  v7 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v8 = [v7 mutableCopy];

  v9 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v10 = [v9 mutableCopy];

  v11 = [v4 reachableDestinations];
  v12 = [v11 mutableCopy];

  v13 = [v4 unreachableDestinations];
  v14 = [v13 mutableCopy];

  v15 = [v4 unknownReachabilityDestinations];

  v16 = [v15 mutableCopy];
  [v6 minusSet:v14];
  [v6 minusSet:v16];
  [v8 minusSet:v12];
  [v8 minusSet:v16];
  [v10 minusSet:v12];
  [v10 minusSet:v14];
  [v12 unionSet:v6];
  [v14 unionSet:v8];
  [v16 unionSet:v10];
  v17 = [objc_alloc(objc_opt_class()) initWithReachableDestinations:v12 unreachableDestinations:v14 unknownReachabilityDestinations:v16];

  return v17;
}

- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"reachableDestinations"];
  v8 = [NSSet setWithArray:v7];

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"unreachableDestinations"];
  v12 = [NSSet setWithArray:v11];

  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"unknownReachabilityDestinations"];

  v16 = [NSSet setWithArray:v15];

  v17 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self initWithReachableDestinations:v8 unreachableDestinations:v12 unknownReachabilityDestinations:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  unknownReachabilityDestinations = self->_unknownReachabilityDestinations;
  v5 = a3;
  v6 = [(NSSet *)unknownReachabilityDestinations allObjects];
  [v5 encodeObject:v6 forKey:@"unknownReachabilityDestinations"];

  v7 = [(NSSet *)self->_reachableDestinations allObjects];
  [v5 encodeObject:v7 forKey:@"reachableDestinations"];

  v8 = [(NSSet *)self->_unreachableDestinations allObjects];
  [v5 encodeObject:v8 forKey:@"unreachableDestinations"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  reachableDestinations = self->_reachableDestinations;
  unreachableDestinations = self->_unreachableDestinations;
  unknownReachabilityDestinations = self->_unknownReachabilityDestinations;

  return [v4 initWithReachableDestinations:reachableDestinations unreachableDestinations:unreachableDestinations unknownReachabilityDestinations:unknownReachabilityDestinations];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self isEqualToMap:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMap:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
    v6 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)v4 reachableDestinations];
    if ([v5 isEqualToSet:v6])
    {
      v7 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
      v8 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)v4 unreachableDestinations];
      if ([v7 isEqualToSet:v8])
      {
        v9 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
        v10 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)v4 unknownReachabilityDestinations];
        v11 = [v9 isEqualToSet:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v29;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 ^= [*(*(&v28 + 1) + 8 * i) hash];
      }

      v5 = [v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v25;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v11 ^= [*(*(&v24 + 1) + 8 * j) hash];
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
    v10 = 2 * v11;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = *v21;
    do
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v16 ^= [*(*(&v20 + 1) + 8 * k) hash];
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v15);
    v15 = 4 * v16;
  }

  return v10 ^ v6 ^ v15;
}

@end