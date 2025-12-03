@interface WiFiP2PAWDLStateMonitorConfiguration
- (BOOL)isEqual:(id)equal;
- (WiFiP2PAWDLStateMonitorConfiguration)init;
- (WiFiP2PAWDLStateMonitorConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (WiFiP2PAWDLStateMonitorConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WiFiP2PAWDLStateMonitorConfiguration;
  v5 = [(WiFiP2PAWDLStateMonitorConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLStateMonitor.optionsKey"];
    v5->_options = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AWDLStateMonitor.services"];
    servicesRequiringAvailabilityNotification = v5->_servicesRequiringAvailabilityNotification;
    v5->_servicesRequiringAvailabilityNotification = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
  options = [(WiFiP2PAWDLStateMonitorConfiguration *)self options];
  if (options != [(WiFiP2PAWDLStateMonitorConfiguration *)v5 options])
  {
    goto LABEL_6;
  }

  servicesRequiringAvailabilityNotification = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  servicesRequiringAvailabilityNotification2 = [(WiFiP2PAWDLStateMonitorConfiguration *)v5 servicesRequiringAvailabilityNotification];
  v9 = servicesRequiringAvailabilityNotification2;
  if (servicesRequiringAvailabilityNotification == servicesRequiringAvailabilityNotification2)
  {

    goto LABEL_8;
  }

  servicesRequiringAvailabilityNotification3 = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  servicesRequiringAvailabilityNotification4 = [(WiFiP2PAWDLStateMonitorConfiguration *)v5 servicesRequiringAvailabilityNotification];
  v12 = [servicesRequiringAvailabilityNotification3 isEqual:servicesRequiringAvailabilityNotification4];

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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[WiFiP2PAWDLStateMonitorConfiguration options](self, "options")}];
  [coderCopy encodeObject:v6 forKey:@"AWDLStateMonitor.optionsKey"];

  servicesRequiringAvailabilityNotification = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  [coderCopy encodeObject:servicesRequiringAvailabilityNotification forKey:@"AWDLStateMonitor.services"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WiFiP2PAWDLStateMonitorConfiguration);
  [(WiFiP2PAWDLStateMonitorConfiguration *)v4 setOptions:[(WiFiP2PAWDLStateMonitorConfiguration *)self options]];
  servicesRequiringAvailabilityNotification = [(WiFiP2PAWDLStateMonitorConfiguration *)self servicesRequiringAvailabilityNotification];
  v6 = [servicesRequiringAvailabilityNotification copy];
  [(WiFiP2PAWDLStateMonitorConfiguration *)v4 setServicesRequiringAvailabilityNotification:v6];

  return v4;
}

@end