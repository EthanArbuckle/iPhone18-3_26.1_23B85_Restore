@interface _BKHIDHumanPresenceSensorRecord
- (id)description;
- (void)_resetServiceStatus;
- (void)addService:(id)service;
- (void)removeService:(id)service;
- (void)setHumanIsPresent:(BOOL)present;
- (void)setProximityInCentimeters:(double)centimeters;
@end

@implementation _BKHIDHumanPresenceSensorRecord

- (void)removeService:(id)service
{
  [(NSMutableArray *)self->_services removeObject:service];

  [(_BKHIDHumanPresenceSensorRecord *)self _resetServiceStatus];
}

- (void)addService:(id)service
{
  serviceCopy = service;
  services = self->_services;
  v8 = serviceCopy;
  if (!services)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_services;
    self->_services = v6;

    serviceCopy = v8;
    services = self->_services;
  }

  [(NSMutableArray *)services addObject:serviceCopy];
  [(_BKHIDHumanPresenceSensorRecord *)self _resetServiceStatus];
}

- (void)setHumanIsPresent:(BOOL)present
{
  if (self->_humanIsPresent != present)
  {
    self->_humanIsPresent = present;
    self->_status |= 4uLL;
  }
}

- (void)setProximityInCentimeters:(double)centimeters
{
  if (self->_proximityInCentimeters != centimeters)
  {
    self->_proximityInCentimeters = centimeters;
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

        primaryUsage = [*(*(&v12 + 1) + 8 * i) primaryUsage];
        if (primaryUsage == 17)
        {
          v9 = 1;
        }

        else
        {
          if (primaryUsage != 18)
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
  build = [v3 build];

  return build;
}

@end