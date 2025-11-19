@interface WiFiP2PAWDLStateMonitorConfiguration
- (BOOL)isEqual:(id)a3;
- (WiFiP2PAWDLStateMonitorConfiguration)init;
- (WiFiP2PAWDLStateMonitorConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiP2PAWDLStateMonitorConfiguration

- (WiFiP2PAWDLStateMonitorConfiguration)init
{
  v6.receiver = self;
  v6.super_class = WiFiP2PAWDLStateMonitorConfiguration;
  v2 = [(WiFiP2PAWDLStateMonitorConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    servicesRequiringAvailabilityNotification = v2->_servicesRequiringAvailabilityNotification;
    v2->_options = 0;
    v2->_servicesRequiringAvailabilityNotification = 0;
  }

  return v3;
}

- (WiFiP2PAWDLStateMonitorConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WiFiP2PAWDLStateMonitorConfiguration;
  v5 = [(WiFiP2PAWDLStateMonitorConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLStateMonitor.optionsKey"];
    v5->_options = [v6 unsignedIntegerValue];

    v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AWDLStateMonitor.services"];
    servicesRequiringAvailabilityNotification = v5->_servicesRequiringAvailabilityNotification;
    v5->_servicesRequiringAvailabilityNotification = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(WiFiP2PAWDLStateMonitorConfiguration *)self options];
  if (v6 != [(WiFiP2PAWDLStateMonitorConfiguration *)v5 options])
  {
    goto LABEL_6;
  }

  v7 = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  v8 = [(WiFiP2PAWDLStateMonitorConfiguration *)v5 servicesRequiringAvailabilityNotification];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  v11 = [(WiFiP2PAWDLStateMonitorConfiguration *)v5 servicesRequiringAvailabilityNotification];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_10;
  }

LABEL_6:
  v13 = 0;
LABEL_10:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[WiFiP2PAWDLStateMonitorConfiguration options](self, "options")}];
  [v5 encodeObject:v6 forKey:@"AWDLStateMonitor.optionsKey"];

  v7 = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  [v5 encodeObject:v7 forKey:@"AWDLStateMonitor.services"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WiFiP2PAWDLStateMonitorConfiguration);
  [(WiFiP2PAWDLStateMonitorConfiguration *)v4 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)self options]];
  v5 = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  v6 = [v5 copy];
  [(WiFiP2PAWDLStateMonitorConfiguration *)v4 setServicesRequiringAvailabilityNotification:v6];

  return v4;
}

@end