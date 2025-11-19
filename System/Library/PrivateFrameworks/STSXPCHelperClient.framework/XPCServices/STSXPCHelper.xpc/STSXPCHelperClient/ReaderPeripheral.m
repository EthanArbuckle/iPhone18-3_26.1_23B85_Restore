@interface ReaderPeripheral
- (BOOL)createGATTServer:(id)a3 serviceUUID:(id)a4 readerIdentCharacteristic:(id)a5;
@end

@implementation ReaderPeripheral

- (BOOL)createGATTServer:(id)a3 serviceUUID:(id)a4 readerIdentCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!self->_iso18Service)
  {
    v11 = [CBUUID UUIDWithData:a4];
    v14 = v11;
    if (v11)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 73, self, @"LE: Creating GATT, UUID=%@", v12, v13, v11);
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
          v20 = [CBUUID UUIDWithString:@"00000005-A123-48CE-896B-4C76973373E6"];
          v21 = [v19 initWithType:v20 properties:20 value:0 permissions:2];

          if (v21)
          {
            [v18 addObject:v21];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 94, self, @"LE: Failed to create mdReaderServiceState", v22, v23, v50);
          }

          v26 = [CBMutableCharacteristic alloc];
          v27 = [CBUUID UUIDWithString:@"00000006-A123-48CE-896B-4C76973373E6"];
          v28 = [v26 initWithType:v27 properties:4 value:0 permissions:2];

          if (v28)
          {
            [v18 addObject:v28];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 104, self, @"LE: Failed to create mdReaderServiceClient2Server", v29, v30, v50);
          }

          v31 = [CBMutableCharacteristic alloc];
          v32 = [CBUUID UUIDWithString:@"00000007-A123-48CE-896B-4C76973373E6"];
          v33 = [v31 initWithType:v32 properties:16 value:0 permissions:2];

          if (v33)
          {
            [v18 addObject:v33];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 114, self, @"LE: Failed to create mdReaderServiceServer2Client", v34, v35, v50);
          }

          v36 = [CBMutableCharacteristic alloc];
          v37 = [CBUUID UUIDWithString:@"00000008-A123-48CE-896B-4C76973373E6"];
          v38 = [v36 initWithType:v37 properties:2 value:v9 permissions:1];

          if (v38)
          {
            [v18 addObject:v38];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 124, self, @"LE: Failed to create mdReaderServiceIdent", v39, v40, v50);
          }

          if (self->_l2CapEnabled)
          {
            v52[0] = [(ISO18013_3_Peripheral *)self l2CapPSM];
            v52[1] = [(ISO18013_3_Peripheral *)self l2CapPSM]>> 8;
            v41 = [[NSData alloc] initWithBytes:v52 length:2];
            v42 = [CBMutableCharacteristic alloc];
            v43 = [CBUUID UUIDWithString:@"0000000B-A123-48CE-896B-4C76973373E6"];
            v44 = [v42 initWithType:v43 properties:2 value:v41 permissions:1];

            if (v44)
            {
              [v18 addObject:v44];
            }

            else
            {
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 137, self, @"LE: Failed to create L2P characteristic", v45, v46, v50);
            }
          }

          else
          {
            v44 = v38;
          }

          [(CBMutableService *)self->_iso18Service setCharacteristics:v18];
          v51.receiver = self;
          v51.super_class = ReaderPeripheral;
          [(ISO18013_3_Peripheral *)&v51 setCharacteristics:v18];
          [v8 addService:self->_iso18Service];
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", 147, self, @"LE: done creating GATT", v47, v48, v50);

          v10 = 1;
          goto LABEL_29;
        }

LABEL_11:
        v10 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v24 = @"LE: Failed to create service";
      v25 = 77;
    }

    else
    {
      v24 = @"LE: Invalid service UUID";
      v25 = 70;
    }

    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ReaderPeripheral createGATTServer:serviceUUID:readerIdentCharacteristic:]", v25, self, v24, v12, v13, v50);
    goto LABEL_11;
  }

  v10 = 1;
LABEL_30:

  return v10;
}

@end