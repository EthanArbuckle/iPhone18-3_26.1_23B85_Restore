@interface STIDSTransportPrimitiveDestinationReachabilityMap
+ (id)mapFromUnionOfMaps:(id)maps;
- (BOOL)contains:(id)contains;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMap:(id)map;
- (NSSet)allDestinations;
- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithCoder:(id)coder;
- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithReachableDestinations:(id)destinations unreachableDestinations:(id)unreachableDestinations unknownReachabilityDestinations:(id)reachabilityDestinations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)intersectWithDestinations:(id)destinations;
- (id)merge:(id)merge;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STIDSTransportPrimitiveDestinationReachabilityMap

- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithReachableDestinations:(id)destinations unreachableDestinations:(id)unreachableDestinations unknownReachabilityDestinations:(id)reachabilityDestinations
{
  destinationsCopy = destinations;
  unreachableDestinationsCopy = unreachableDestinations;
  reachabilityDestinationsCopy = reachabilityDestinations;
  v19.receiver = self;
  v19.super_class = STIDSTransportPrimitiveDestinationReachabilityMap;
  v11 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)&v19 init];
  if (destinationsCopy)
  {
    v12 = [destinationsCopy copy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  reachableDestinations = v11->_reachableDestinations;
  v11->_reachableDestinations = v12;

  if (unreachableDestinationsCopy)
  {
    v14 = [unreachableDestinationsCopy copy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  unreachableDestinations = v11->_unreachableDestinations;
  v11->_unreachableDestinations = v14;

  if (reachabilityDestinationsCopy)
  {
    v16 = [reachabilityDestinationsCopy copy];
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
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v8 = [NSString stringWithFormat:@"<%@:%p { Reachable: %@, Unreachable: %@, Unknown: %@ }>", v4, self, reachableDestinations, unreachableDestinations, unknownReachabilityDestinations];

  return v8;
}

- (NSSet)allDestinations
{
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v4 = [reachableDestinations mutableCopy];

  unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  [v4 unionSet:unreachableDestinations];

  unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  [v4 unionSet:unknownReachabilityDestinations];

  return v4;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [reachableDestinations containsObject:containsCopy];

  if (v6 & 1) != 0 || (-[STIDSTransportPrimitiveDestinationReachabilityMap unreachableDestinations](self, "unreachableDestinations"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:containsCopy], v7, (v8))
  {
    v9 = 1;
  }

  else
  {
    unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
    v9 = [unknownReachabilityDestinations containsObject:containsCopy];
  }

  return v9;
}

- (id)intersectWithDestinations:(id)destinations
{
  destinationsCopy = destinations;
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [reachableDestinations mutableCopy];

  unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v8 = [unreachableDestinations mutableCopy];

  unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v10 = [unknownReachabilityDestinations mutableCopy];

  [v6 intersectSet:destinationsCopy];
  [v8 intersectSet:destinationsCopy];
  [v10 intersectSet:destinationsCopy];
  v11 = [destinationsCopy mutableCopy];

  [v11 minusSet:v6];
  [v11 minusSet:v8];
  [v11 minusSet:v10];
  [v10 unionSet:v11];
  v12 = [objc_alloc(objc_opt_class()) initWithReachableDestinations:v6 unreachableDestinations:v8 unknownReachabilityDestinations:v10];

  return v12;
}

+ (id)mapFromUnionOfMaps:(id)maps
{
  mapsCopy = maps;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = mapsCopy;
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
        reachableDestinations = [v13 reachableDestinations];
        [v5 unionSet:reachableDestinations];

        unreachableDestinations = [v13 unreachableDestinations];
        [v6 unionSet:unreachableDestinations];

        unknownReachabilityDestinations = [v13 unknownReachabilityDestinations];
        [v7 unionSet:unknownReachabilityDestinations];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [[self alloc] initWithReachableDestinations:v5 unreachableDestinations:v6 unknownReachabilityDestinations:v7];

  return v17;
}

- (id)merge:(id)merge
{
  mergeCopy = merge;
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v6 = [reachableDestinations mutableCopy];

  unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v8 = [unreachableDestinations mutableCopy];

  unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v10 = [unknownReachabilityDestinations mutableCopy];

  reachableDestinations2 = [mergeCopy reachableDestinations];
  v12 = [reachableDestinations2 mutableCopy];

  unreachableDestinations2 = [mergeCopy unreachableDestinations];
  v14 = [unreachableDestinations2 mutableCopy];

  unknownReachabilityDestinations2 = [mergeCopy unknownReachabilityDestinations];

  v16 = [unknownReachabilityDestinations2 mutableCopy];
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

- (STIDSTransportPrimitiveDestinationReachabilityMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"reachableDestinations"];
  v8 = [NSSet setWithArray:v7];

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"unreachableDestinations"];
  v12 = [NSSet setWithArray:v11];

  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"unknownReachabilityDestinations"];

  v16 = [NSSet setWithArray:v15];

  v17 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self initWithReachableDestinations:v8 unreachableDestinations:v12 unknownReachabilityDestinations:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  unknownReachabilityDestinations = self->_unknownReachabilityDestinations;
  coderCopy = coder;
  allObjects = [(NSSet *)unknownReachabilityDestinations allObjects];
  [coderCopy encodeObject:allObjects forKey:@"unknownReachabilityDestinations"];

  allObjects2 = [(NSSet *)self->_reachableDestinations allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"reachableDestinations"];

  allObjects3 = [(NSSet *)self->_unreachableDestinations allObjects];
  [coderCopy encodeObject:allObjects3 forKey:@"unreachableDestinations"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  reachableDestinations = self->_reachableDestinations;
  unreachableDestinations = self->_unreachableDestinations;
  unknownReachabilityDestinations = self->_unknownReachabilityDestinations;

  return [v4 initWithReachableDestinations:reachableDestinations unreachableDestinations:unreachableDestinations unknownReachabilityDestinations:unknownReachabilityDestinations];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self isEqualToMap:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMap:(id)map
{
  mapCopy = map;
  if (self == mapCopy)
  {
    v11 = 1;
  }

  else
  {
    reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
    reachableDestinations2 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)mapCopy reachableDestinations];
    if ([reachableDestinations isEqualToSet:reachableDestinations2])
    {
      unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
      unreachableDestinations2 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)mapCopy unreachableDestinations];
      if ([unreachableDestinations isEqualToSet:unreachableDestinations2])
      {
        unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
        unknownReachabilityDestinations2 = [(STIDSTransportPrimitiveDestinationReachabilityMap *)mapCopy unknownReachabilityDestinations];
        v11 = [unknownReachabilityDestinations isEqualToSet:unknownReachabilityDestinations2];
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
  reachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self reachableDestinations];
  v4 = [reachableDestinations countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(reachableDestinations);
        }

        v6 ^= [*(*(&v28 + 1) + 8 * i) hash];
      }

      v5 = [reachableDestinations countByEnumeratingWithState:&v28 objects:v34 count:16];
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
  unreachableDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unreachableDestinations];
  v10 = [unreachableDestinations countByEnumeratingWithState:&v24 objects:v33 count:16];
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
          objc_enumerationMutation(unreachableDestinations);
        }

        v11 ^= [*(*(&v24 + 1) + 8 * j) hash];
      }

      v10 = [unreachableDestinations countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
    v10 = 2 * v11;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  unknownReachabilityDestinations = [(STIDSTransportPrimitiveDestinationReachabilityMap *)self unknownReachabilityDestinations];
  v15 = [unknownReachabilityDestinations countByEnumeratingWithState:&v20 objects:v32 count:16];
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
          objc_enumerationMutation(unknownReachabilityDestinations);
        }

        v16 ^= [*(*(&v20 + 1) + 8 * k) hash];
      }

      v15 = [unknownReachabilityDestinations countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v15);
    v15 = 4 * v16;
  }

  return v10 ^ v6 ^ v15;
}

@end