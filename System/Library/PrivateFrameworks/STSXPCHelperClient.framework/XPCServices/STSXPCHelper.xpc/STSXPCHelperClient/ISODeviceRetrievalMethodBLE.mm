@interface ISODeviceRetrievalMethodBLE
- (id)description;
- (id)encodeOptions;
@end

@implementation ISODeviceRetrievalMethodBLE

- (id)encodeOptions
{
  v3 = [CBOR cborWithInteger:0];
  v4 = [CBOR cborWithInteger:1];
  v5 = [CBOR cborWithInteger:10];
  v6 = [CBOR cborWithInteger:11];
  v7 = [CBOR cborWithInteger:20];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (self->_peripheralServerModeSupported)
  {
    +[CBOR cborTrue];
  }

  else
  {
    +[CBOR cborFalse];
  }
  v10 = ;
  [v8 setObject:v10 forKeyedSubscript:v3];

  [v9 addObject:v3];
  if (self->_peripheralServerModeUUID)
  {
    v11 = [CBOR cborWithData:?];
    [v8 setObject:v11 forKeyedSubscript:v5];

    [v9 addObject:v5];
  }

  if (self->_peripheralServerModeBLEDeviceAddress)
  {
    v12 = [CBOR cborWithData:?];
    [v8 setObject:v12 forKeyedSubscript:v7];

    [v9 addObject:v7];
  }

  if (self->_centralClientModeSupported)
  {
    +[CBOR cborTrue];
  }

  else
  {
    +[CBOR cborFalse];
  }
  v13 = ;
  [v8 setObject:v13 forKeyedSubscript:v4];

  [v9 addObject:v4];
  if (self->_centralClientModeUUID)
  {
    v14 = [CBOR cborWithData:?];
    [v8 setObject:v14 forKeyedSubscript:v6];

    [v9 addObject:v6];
  }

  v15 = [CBOR cborWithDictionary:v8 keyOrderList:v9];

  return v15;
}

- (id)description
{
  if (self)
  {
    type = self->super._type;
    version = self->super._version;
  }

  else
  {
    type = 0;
    version = 0;
  }

  return [NSString stringWithFormat:@"<type=%ld, version=%ld, peripheralServerModeSupported=%d, centralClientModeSupported=%d, peripheralServerModeUUID=%@, centralClientModeUUID=%@, peripheralServerModeBLEDeviceAddress=%@>", type, version, self->_peripheralServerModeSupported, self->_centralClientModeSupported, self->_peripheralServerModeUUID, self->_centralClientModeUUID, self->_peripheralServerModeBLEDeviceAddress];
}

@end