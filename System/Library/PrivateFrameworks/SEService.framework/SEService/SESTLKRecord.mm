@interface SESTLKRecord
+ (id)_uuidFromStringPermissive:(id)permissive;
+ (id)withCKKSExternalKey:(id)key;
+ (id)withView:(id)view tlkUUID:(id)d parentTLKUUID:(id)iD recordData:(id)data;
- (id)asCKKSExternalKey;
@end

@implementation SESTLKRecord

+ (id)withView:(id)view tlkUUID:(id)d parentTLKUUID:(id)iD recordData:(id)data
{
  viewCopy = view;
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  v13 = objc_opt_new();
  v14 = v13[1];
  v13[1] = viewCopy;
  v15 = viewCopy;

  v16 = v13[2];
  v13[2] = dCopy;
  v17 = dCopy;

  v18 = v13[3];
  v13[3] = iDCopy;
  v19 = iDCopy;

  v20 = v13[4];
  v13[4] = dataCopy;

  return v13;
}

+ (id)withCKKSExternalKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uuid = [keyCopy uuid];
  v6 = [self _uuidFromStringPermissive:uuid];

  parentKeyUUID = [keyCopy parentKeyUUID];
  v8 = [self _uuidFromStringPermissive:parentKeyUUID];

  if (v6 && v8)
  {
    view = [keyCopy view];
    ses_toData = [v6 ses_toData];
    ses_toData2 = [v8 ses_toData];
    keyData = [keyCopy keyData];
    v13 = [SESTLKRecord withView:view tlkUUID:ses_toData parentTLKUUID:ses_toData2 recordData:keyData];
  }

  else
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [keyCopy uuid];
      keyData2 = [keyCopy keyData];
      base64 = [keyData2 base64];
      v20 = 138412546;
      v21 = uuid2;
      v22 = 2112;
      v23 = base64;
      _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, "Couldn't convert from UUID String %@ %@", &v20, 0x16u);
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)asCKKSExternalKey
{
  v3 = objc_alloc(MEMORY[0x1E697AA30]);
  view = self->_view;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NSData bytes](self->_tlkUUID, "bytes")}];
  uUIDString = [v5 UUIDString];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NSData bytes](self->_parentTLKUUID, "bytes")}];
  uUIDString2 = [v7 UUIDString];
  v9 = [v3 initWithView:view uuid:uUIDString parentTLKUUID:uUIDString2 keyData:self->_recordData];

  return v9;
}

+ (id)_uuidFromStringPermissive:(id)permissive
{
  v13 = *MEMORY[0x1E69E9840];
  permissiveCopy = permissive;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:permissiveCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:permissiveCopy options:0];
    if (v7)
    {
      v6 = [MEMORY[0x1E696AFB0] ses_withData:v7];
    }

    else
    {
      v8 = SESDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = permissiveCopy;
        _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Failed to permissive decode UUID %@", &v11, 0xCu);
      }

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

@end