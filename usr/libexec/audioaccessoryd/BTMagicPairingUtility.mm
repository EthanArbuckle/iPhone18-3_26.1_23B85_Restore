@interface BTMagicPairingUtility
- (id)cipherBluetoothAddress:(id)address;
- (id)magicPairingDecryptDataWithKey:(id)key payload:(id)payload length:(unint64_t)length;
- (id)magicPairingEncryptDataWithKey:(id)key payload:(id)payload;
@end

@implementation BTMagicPairingUtility

- (id)cipherBluetoothAddress:(id)address
{
  v12 = 0;
  v11 = 0;
  bytes = [address bytes];
  *v8 = *bytes;
  *&v8[4] = bytes[2];
  v10 = *&v8[4];
  v9 = *v8;
  v4 = 6;
  for (i = 5; i != -1; --i)
  {
    *(&v9 + v4++) = v8[i];
  }

  v13 = *&v8[1] ^ *v8;
  v6 = [NSData dataWithBytes:&v9 length:16];

  return v6;
}

- (id)magicPairingEncryptDataWithKey:(id)key payload:(id)payload
{
  payloadCopy = payload;
  keyCopy = key;
  ccaes_ecb_encrypt_mode();
  v13[0] = 0;
  v13[1] = 0;
  [keyCopy bytes];

  [payloadCopy bytes];
  v7 = ccecb_one_shot();
  if (v7)
  {
    v8 = v7;
    v9 = sub_100005C14("BTMagicPairingUtility");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to encrypt key with error code: %d", v12, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = [NSData dataWithBytes:v13 length:16];
  }

  return v10;
}

- (id)magicPairingDecryptDataWithKey:(id)key payload:(id)payload length:(unint64_t)length
{
  payloadCopy = payload;
  keyCopy = key;
  ccaes_ecb_decrypt_mode();
  v15[0] = 0;
  v15[1] = 0;
  [keyCopy bytes];

  [payloadCopy bytes];
  v9 = ccecb_one_shot();
  if (v9)
  {
    v10 = v9;
    v11 = sub_100005C14("BTMagicPairingUtility");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to decrypt key with error code: %d", v14, 8u);
    }

    v12 = 0;
  }

  else
  {
    v12 = [NSData dataWithBytes:v15 length:length];
  }

  return v12;
}

@end