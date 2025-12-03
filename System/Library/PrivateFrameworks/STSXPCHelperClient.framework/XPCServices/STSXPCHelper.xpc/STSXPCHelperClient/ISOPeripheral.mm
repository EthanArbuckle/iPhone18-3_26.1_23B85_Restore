@interface ISOPeripheral
- (BOOL)createGATTServer:(id)server serviceUUID:(id)d readerIdentCharacteristic:(id)characteristic;
@end

@implementation ISOPeripheral

- (BOOL)createGATTServer:(id)server serviceUUID:(id)d readerIdentCharacteristic:(id)characteristic
{
  serverCopy = server;
  if (!self->_iso18Service)
  {
    v11 = [CBUUID UUIDWithData:d];
    v14 = v11;
    if (v11)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISOPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 60, self, @"LE: Creating GATT, UUID=%@", v12, v13, v11);
      v15 = [[CBMutableService alloc] initWithType:v14 primary:1];
      iso18Service = self->_iso18Service;
      self->_iso18Service = v15;

      if (self->_iso18Service)
      {
        v17 = +[NSMutableArray array];
        if (v17)
        {
          v18 = v17;
          v19 = [CBMutableCharacteristic alloc];
          v20 = [CBUUID UUIDWithString:@"00000001-A123-48CE-896B-4C76973373E6"];
          v21 = [v19 initWithType:v20 properties:20 value:0 permissions:2];

          [v18 addObject:v21];
          v22 = [CBMutableCharacteristic alloc];
          v23 = [CBUUID UUIDWithString:@"00000002-A123-48CE-896B-4C76973373E6"];
          v24 = [v22 initWithType:v23 properties:4 value:0 permissions:2];

          [v18 addObject:v24];
          v25 = [CBMutableCharacteristic alloc];
          v26 = [CBUUID UUIDWithString:@"00000003-A123-48CE-896B-4C76973373E6"];
          v27 = [v25 initWithType:v26 properties:16 value:0 permissions:2];

          [v18 addObject:v27];
          if (self->_l2CapEnabled)
          {
            v41[0] = [(ISO18013_3_Peripheral *)self l2CapPSM];
            v41[1] = [(ISO18013_3_Peripheral *)self l2CapPSM]>> 8;
            v28 = [[NSData alloc] initWithBytes:v41 length:2];
            v29 = [CBMutableCharacteristic alloc];
            v30 = [CBUUID UUIDWithString:@"0000000A-A123-48CE-896B-4C76973373E6"];
            v31 = [v29 initWithType:v30 properties:2 value:v28 permissions:1];

            if (v31)
            {
              [v18 addObject:v31];
            }

            else
            {
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 103, self, @"LE: Failed to create L2P characteristic", v32, v33, v39);
            }
          }

          else
          {
            v31 = v27;
          }

          [(CBMutableService *)self->_iso18Service setCharacteristics:v18];
          v40.receiver = self;
          v40.super_class = ISOPeripheral;
          [(ISO18013_3_Peripheral *)&v40 setCharacteristics:v18];
          [serverCopy addService:self->_iso18Service];
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISOPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 113, self, @"LE: done creating GATT", v36, v37, v39);

          v10 = 1;
          goto LABEL_17;
        }

        v34 = @"LE: Failed to create characteristics";
        v35 = 70;
      }

      else
      {
        v34 = @"LE: Failed to create service";
        v35 = 64;
      }
    }

    else
    {
      v34 = @"LE: Invalid service UUID";
      v35 = 57;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", v35, self, v34, v12, v13, v39);
    v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 51, self, @"LE: GATT already exists", v7, v8, v39);
  v10 = 1;
LABEL_18:

  return v10;
}

@end