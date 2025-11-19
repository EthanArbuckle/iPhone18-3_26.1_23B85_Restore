@interface STSendPayloadWithIDSTransportResultObject
- (STSendPayloadWithIDSTransportResultObject)initWithLocalPayloadUUID:(id)a3 payloadUUID:(id)a4 destinations:(id)a5;
@end

@implementation STSendPayloadWithIDSTransportResultObject

- (STSendPayloadWithIDSTransportResultObject)initWithLocalPayloadUUID:(id)a3 payloadUUID:(id)a4 destinations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = STSendPayloadWithIDSTransportResultObject;
  v11 = [(STSendPayloadWithIDSTransportResultObject *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    localPayloadUUID = v11->_localPayloadUUID;
    v11->_localPayloadUUID = v12;

    v14 = [v9 copy];
    payloadUUID = v11->_payloadUUID;
    v11->_payloadUUID = v14;

    v16 = [v10 copy];
    destinations = v11->_destinations;
    v11->_destinations = v16;
  }

  return v11;
}

@end