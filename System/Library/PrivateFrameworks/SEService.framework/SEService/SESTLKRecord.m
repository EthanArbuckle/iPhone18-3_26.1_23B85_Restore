@interface SESTLKRecord
+ (id)_uuidFromStringPermissive:(id)a3;
+ (id)withCKKSExternalKey:(id)a3;
+ (id)withView:(id)a3 tlkUUID:(id)a4 parentTLKUUID:(id)a5 recordData:(id)a6;
- (id)asCKKSExternalKey;
@end

@implementation SESTLKRecord

+ (id)withView:(id)a3 tlkUUID:(id)a4 parentTLKUUID:(id)a5 recordData:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = v13[1];
  v13[1] = v9;
  v15 = v9;

  v16 = v13[2];
  v13[2] = v10;
  v17 = v10;

  v18 = v13[3];
  v13[3] = v11;
  v19 = v11;

  v20 = v13[4];
  v13[4] = v12;

  return v13;
}

+ (id)withCKKSExternalKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [a1 _uuidFromStringPermissive:v5];

  v7 = [v4 parentKeyUUID];
  v8 = [a1 _uuidFromStringPermissive:v7];

  if (v6 && v8)
  {
    v9 = [v4 view];
    v10 = [v6 ses_toData];
    v11 = [v8 ses_toData];
    v12 = [v4 keyData];
    v13 = [SESTLKRecord withView:v9 tlkUUID:v10 parentTLKUUID:v11 recordData:v12];
  }

  else
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 uuid];
      v16 = [v4 keyData];
      v17 = [v16 base64];
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
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
  v6 = [v5 UUIDString];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NSData bytes](self->_parentTLKUUID, "bytes")}];
  v8 = [v7 UUIDString];
  v9 = [v3 initWithView:view uuid:v6 parentTLKUUID:v8 keyData:self->_recordData];

  return v9;
}

+ (id)_uuidFromStringPermissive:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
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
        v12 = v3;
        _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Failed to permissive decode UUID %@", &v11, 0xCu);
      }

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

@end