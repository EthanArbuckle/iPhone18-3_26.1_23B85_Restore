@interface WiFiUsageInterfaceCapabilities
- (NSSet)deviceCapabilities;
- (WiFiUsageInterfaceCapabilities)initWithInterfaceName:(id)name;
- (id)description;
- (int)supportedPhyModes;
- (unint64_t)currentNumberOfSpatialStreams;
- (unint64_t)maxInterfacePHYRate;
- (void)dealloc;
@end

@implementation WiFiUsageInterfaceCapabilities

- (unint64_t)maxInterfacePHYRate
{
  result = self->_maxPHYRate;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(WiFiUsageInterfaceCapabilities *)self supportedPhyModes])
    {
      if ([(WiFiUsageInterfaceCapabilities *)self deviceSupports:94])
      {
        v4 = 160;
      }

      else
      {
        v4 = 80;
      }

      result = [WiFiUsageLQMTransformations getMaxPhyrateWithNss:2 Bw:v4 Phy:self->_supportedPhyModes];
      self->_maxPHYRate = result;
    }

    else
    {
      return self->_maxPHYRate;
    }
  }

  return result;
}

- (WiFiUsageInterfaceCapabilities)initWithInterfaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    NSLog(&cfstr_SCannotCreateI.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", 0);
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = WiFiUsageInterfaceCapabilities;
  self = [(WiFiUsageInterfaceCapabilities *)&v13 init];
  v5 = [nameCopy copy];
  interfaceName = self->_interfaceName;
  self->_interfaceName = v5;

  v7 = Apple80211Open();
  if (v7)
  {
    NSLog(&cfstr_SApple80211ope.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", v7);
    goto LABEL_6;
  }

  v9 = self->_interfaceName;
  a11Ref = self->_a11Ref;
  v10 = Apple80211BindToInterface();
  if (v10)
  {
    NSLog(&cfstr_SApple80211bin.isa, "[WiFiUsageInterfaceCapabilities initWithInterfaceName:]", v10);
    goto LABEL_6;
  }

  self->_maxPHYRate = 0x7FFFFFFFFFFFFFFFLL;
  self->_supportedPhyModes = 0;
  self = self;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (int)supportedPhyModes
{
  result = self->_supportedPhyModes;
  if (!result)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    a11Ref = self->_a11Ref;
    v6 = Apple80211Get();
    if (v6)
    {
      NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities supportedPhyModes]", v6);
    }

    else
    {
      v7 = [dictionary objectForKey:@"PHYMODE_SUPPORTED"];
      self->_supportedPhyModes = [v7 unsignedIntValue];
    }

    return self->_supportedPhyModes;
  }

  return result;
}

- (unint64_t)currentNumberOfSpatialStreams
{
  a11Ref = self->_a11Ref;
  v3 = Apple80211CopyValue();
  if (v3)
  {
    NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities currentNumberOfSpatialStreams]", v3);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (NSSet)deviceCapabilities
{
  deviceCapabilities = self->_deviceCapabilities;
  if (!deviceCapabilities)
  {
    a11Ref = self->_a11Ref;
    v5 = Apple80211CopyValue();
    if (v5)
    {
      NSLog(&cfstr_SApple80211cop.isa, "[WiFiUsageInterfaceCapabilities deviceCapabilities]", v5);
    }

    else
    {
      v6 = [MEMORY[0x277CBEB98] setWithArray:0];
      v7 = self->_deviceCapabilities;
      self->_deviceCapabilities = v6;
    }

    deviceCapabilities = self->_deviceCapabilities;
  }

  return deviceCapabilities;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  interfaceName = self->_interfaceName;
  v5 = [WiFiUsagePrivacyFilter getLabelForPhyModes:[(WiFiUsageInterfaceCapabilities *)self supportedPhyModes]];
  v6 = [WiFiUsagePrivacyFilter getLabelForPhyModes:[WiFiUsageLQMTransformations maxPhyModeFrom:self->_supportedPhyModes]];
  v7 = [v3 stringWithFormat:@"%@: supportedPhyModes:%@ maxPhyMode:%@ maxPHYRate:%d", interfaceName, v5, v6, -[WiFiUsageInterfaceCapabilities maxInterfacePHYRate](self, "maxInterfacePHYRate")];

  return v7;
}

- (void)dealloc
{
  if (self->_a11Ref)
  {
    Apple80211Close();
  }

  v3.receiver = self;
  v3.super_class = WiFiUsageInterfaceCapabilities;
  [(WiFiUsageInterfaceCapabilities *)&v3 dealloc];
}

@end