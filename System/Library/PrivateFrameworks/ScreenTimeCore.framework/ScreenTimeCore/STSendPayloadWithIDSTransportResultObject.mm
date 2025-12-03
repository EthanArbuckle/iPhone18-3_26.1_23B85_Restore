@interface STSendPayloadWithIDSTransportResultObject
- (STSendPayloadWithIDSTransportResultObject)initWithLocalPayloadUUID:(id)d payloadUUID:(id)iD destinations:(id)destinations;
@end

@implementation STSendPayloadWithIDSTransportResultObject

- (STSendPayloadWithIDSTransportResultObject)initWithLocalPayloadUUID:(id)d payloadUUID:(id)iD destinations:(id)destinations
{
  dCopy = d;
  iDCopy = iD;
  destinationsCopy = destinations;
  v19.receiver = self;
  v19.super_class = STSendPayloadWithIDSTransportResultObject;
  v11 = [(STSendPayloadWithIDSTransportResultObject *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    localPayloadUUID = v11->_localPayloadUUID;
    v11->_localPayloadUUID = v12;

    v14 = [iDCopy copy];
    payloadUUID = v11->_payloadUUID;
    v11->_payloadUUID = v14;

    v16 = [destinationsCopy copy];
    destinations = v11->_destinations;
    v11->_destinations = v16;
  }

  return v11;
}

@end