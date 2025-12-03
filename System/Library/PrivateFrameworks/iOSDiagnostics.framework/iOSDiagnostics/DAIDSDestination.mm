@interface DAIDSDestination
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIDSDevice:(id)device;
- (BOOL)isEqualToNRDevice:(id)device;
- (DAIDSDestination)initWithCoder:(id)coder;
- (DAIDSDestination)initWithIDSDevice:(id)device;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAIDSDestination

- (DAIDSDestination)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = DAIDSDestination;
  v5 = [(DAIDSDestination *)&v17 init];
  if (v5)
  {
    v6 = IDSCopyIDForDevice();
    idsDestination = v5->_idsDestination;
    v5->_idsDestination = v6;

    nsuuid = [deviceCopy nsuuid];
    bluetoothID = v5->_bluetoothID;
    v5->_bluetoothID = nsuuid;

    uniqueID = [deviceCopy uniqueID];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = uniqueID;

    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    uniqueIDOverride = v5->_uniqueIDOverride;
    v5->_uniqueIDOverride = uniqueIDOverride;

    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy isLocallyPaired]);
    locallyPaired = v5->_locallyPaired;
    v5->_locallyPaired = v14;
  }

  return v5;
}

- (DAIDSDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DAIDSDestination *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    idsDestination = v5->_idsDestination;
    v5->_idsDestination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothID"];
    bluetoothID = v5->_bluetoothID;
    v5->_bluetoothID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIDOverride"];
    uniqueIDOverride = v5->_uniqueIDOverride;
    v5->_uniqueIDOverride = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locallyPaired"];
    locallyPaired = v5->_locallyPaired;
    v5->_locallyPaired = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  idsDestination = [(DAIDSDestination *)self idsDestination];
  [coderCopy encodeObject:idsDestination forKey:@"destination"];

  bluetoothID = [(DAIDSDestination *)self bluetoothID];
  [coderCopy encodeObject:bluetoothID forKey:@"bluetoothID"];

  uniqueID = [(DAIDSDestination *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];

  uniqueIDOverride = [(DAIDSDestination *)self uniqueIDOverride];
  [coderCopy encodeObject:uniqueIDOverride forKey:@"uniqueIDOverride"];

  locallyPaired = [(DAIDSDestination *)self locallyPaired];
  [coderCopy encodeObject:locallyPaired forKey:@"locallyPaired"];
}

- (unint64_t)hash
{
  uniqueIDOverride = [(DAIDSDestination *)self uniqueIDOverride];
  v3 = [uniqueIDOverride hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIDOverride = [(DAIDSDestination *)self uniqueIDOverride];
    uniqueIDOverride2 = [equalCopy uniqueIDOverride];
    v7 = [uniqueIDOverride isEqualToString:uniqueIDOverride2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(DAIDSDestination *)self isEqualToIDSDevice:equalCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v8 = [(DAIDSDestination *)self isEqualToNRDevice:equalCopy];
    }

    v7 = v8;
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualToNRDevice:(id)device
{
  v4 = NRDevicePropertyIsPaired;
  deviceCopy = device;
  v6 = [deviceCopy valueForProperty:v4];
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  v8 = [v7 deviceIDForNRDevice:deviceCopy];

  locallyPaired = [(DAIDSDestination *)self locallyPaired];
  if ([v6 isEqualToNumber:locallyPaired])
  {
    bluetoothID = [(DAIDSDestination *)self bluetoothID];
    v11 = [v8 isEqual:bluetoothID];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualToIDSDevice:(id)device
{
  uniqueIDOverride = [device uniqueIDOverride];
  uniqueIDOverride2 = [(DAIDSDestination *)self uniqueIDOverride];
  v6 = [uniqueIDOverride isEqualToString:uniqueIDOverride2];

  return v6;
}

- (id)description
{
  idsDestination = [(DAIDSDestination *)self idsDestination];
  bluetoothID = [(DAIDSDestination *)self bluetoothID];
  uniqueID = [(DAIDSDestination *)self uniqueID];
  uniqueIDOverride = [(DAIDSDestination *)self uniqueIDOverride];
  locallyPaired = [(DAIDSDestination *)self locallyPaired];
  v8 = [NSString stringWithFormat:@"idsDestination: %@ bluetoothID: %@; unqiueID: %@; uniqueIDOverride: %@; isLocallyPaired: %@", idsDestination, bluetoothID, uniqueID, uniqueIDOverride, locallyPaired];;

  return v8;
}

@end