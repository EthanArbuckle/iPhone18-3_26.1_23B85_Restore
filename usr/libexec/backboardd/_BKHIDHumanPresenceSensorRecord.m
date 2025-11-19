@interface _BKHIDHumanPresenceSensorRecord
- (id)description;
- (void)_resetServiceStatus;
- (void)addService:(id)a3;
- (void)removeService:(id)a3;
- (void)setHumanIsPresent:(BOOL)a3;
- (void)setProximityInCentimeters:(double)a3;
@end

@implementation _BKHIDHumanPresenceSensorRecord

- (void)removeService:(id)a3
{
  [(NSMutableArray *)self->_services removeObject:a3];

  [(_BKHIDHumanPresenceSensorRecord *)self _resetServiceStatus];
}

- (void)addService:(id)a3
{
  v4 = a3;
  services = self->_services;
  v8 = v4;
  if (!services)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_services;
    self->_services = v6;

    v4 = v8;
    services = self->_services;
  }

  [(NSMutableArray *)services addObject:v4];
  [(_BKHIDHumanPresenceSensorRecord *)self _resetServiceStatus];
}

- (void)setHumanIsPresent:(BOOL)a3
{
  if (self->_humanIsPresent != a3)
  {
    self->_humanIsPresent = a3;
    self->_status |= 4uLL;
  }
}

- (void)setProximityInCentimeters:(double)a3
{
  if (self->_proximityInCentimeters != a3)
  {
    self->_proximityInCentimeters = a3;
    self->_status |= 8uLL;
  }
}

- (void)_resetServiceStatus
{
  self->_status &= 0xFFFFFFFFFFFFFFFCLL;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_services;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) primaryUsage];
        if (v8 == 17)
        {
          v9 = 1;
        }

        else
        {
          if (v8 != 18)
          {
            continue;
          }

          v9 = 2;
        }

        self->_status |= v9;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  status = self->_status;
  v11 = status & 0xFFFFFFFFFFFFFFFALL;
  if ((status & 1) == 0 || (v11 = self->_status, (v11 & 2) == 0))
  {
    if ((v11 & 2) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF5;
    }

    self->_status = v11;
  }
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  status = self->_status;
  v5 = NSStringFromBKSHIDServicesHumanPresenceStatus();
  v6 = [v3 appendObject:v5 withName:@"status"];

  v7 = [v3 appendFloat:@"proximityInCentimeters" withName:self->_proximityInCentimeters];
  v8 = [v3 appendBool:self->_humanIsPresent withName:@"humanIsPresent"];
  v9 = [v3 build];

  return v9;
}

@end