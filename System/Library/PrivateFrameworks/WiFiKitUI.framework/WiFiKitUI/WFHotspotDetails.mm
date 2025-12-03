@interface WFHotspotDetails
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualHotspotDetails:(id)details;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFHotspotDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFHotspotDetails *)self isEqualHotspotDetails:equalCopy];

  return v5;
}

- (BOOL)isEqualHotspotDetails:(id)details
{
  detailsCopy = details;
  batteryLife = [(WFHotspotDetails *)self batteryLife];
  batteryLife2 = [detailsCopy batteryLife];
  if ([batteryLife isEqual:batteryLife2])
  {
    cellularProtocolString = [(WFHotspotDetails *)self cellularProtocolString];
    cellularProtocolString2 = [detailsCopy cellularProtocolString];
    if ([cellularProtocolString isEqualToString:cellularProtocolString2])
    {
      signalStrength = [(WFHotspotDetails *)self signalStrength];
      signalStrength2 = [detailsCopy signalStrength];
      v11 = [signalStrength isEqual:signalStrength2];
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

  return v11;
}

- (unint64_t)hash
{
  batteryLife = [(WFHotspotDetails *)self batteryLife];
  v4 = [batteryLife hash];
  cellularProtocolString = [(WFHotspotDetails *)self cellularProtocolString];
  v6 = [cellularProtocolString hash] ^ v4;
  signalStrength = [(WFHotspotDetails *)self signalStrength];
  v8 = [signalStrength hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  batteryLife = [(WFHotspotDetails *)self batteryLife];
  cellularProtocolString = [(WFHotspotDetails *)self cellularProtocolString];
  signalStrength = [(WFHotspotDetails *)self signalStrength];
  v9 = [v3 stringWithFormat:@"(%@) batteryLife: %@ | cellularProtocolString: %@ | signalStrength: %@", v5, batteryLife, cellularProtocolString, signalStrength];

  return v9;
}

@end