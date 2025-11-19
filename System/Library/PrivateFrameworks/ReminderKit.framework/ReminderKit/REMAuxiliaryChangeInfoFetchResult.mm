@interface REMAuxiliaryChangeInfoFetchResult
+ (id)auxiliaryChangeInfoFetchResultOfType:(Class)a3;
- (REMAuxiliaryChangeInfoFetchResult)initWithAuxiliaryChangeInfoType:(Class)a3;
- (id)auxiliaryChangeInfoFromData:(id)a3 withObjectID:(id)a4 fromChangeObject:(id)a5 error:(id *)a6;
- (id)changeObjectForAuxiliaryChangeInfo:(id)a3;
@end

@implementation REMAuxiliaryChangeInfoFetchResult

- (REMAuxiliaryChangeInfoFetchResult)initWithAuxiliaryChangeInfoType:(Class)a3
{
  v9.receiver = self;
  v9.super_class = REMAuxiliaryChangeInfoFetchResult;
  v4 = [(REMAuxiliaryChangeInfoFetchResult *)&v9 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_typedKlass = a3;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    changeObjectForAuxiliaryChangeInfoMap = v5->_changeObjectForAuxiliaryChangeInfoMap;
    v5->_changeObjectForAuxiliaryChangeInfoMap = v6;
  }

  return v5;
}

- (id)changeObjectForAuxiliaryChangeInfo:(id)a3
{
  v4 = a3;
  v5 = [(REMAuxiliaryChangeInfoFetchResult *)self changeObjectForAuxiliaryChangeInfoMap];
  v6 = [v4 remObjectID];

  v7 = [v5 objectForKey:v6];

  return v7;
}

+ (id)auxiliaryChangeInfoFetchResultOfType:(Class)a3
{
  v3 = [[REMAuxiliaryChangeInfoFetchResult alloc] initWithAuxiliaryChangeInfoType:a3];

  return v3;
}

- (id)auxiliaryChangeInfoFromData:(id)a3 withObjectID:(id)a4 fromChangeObject:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_class();
  v14 = objc_alloc([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
  v15 = REMCheckedDynamicCast(v13, v14);

  v16 = [v15 initWithREMObjectID:v11];
  if (v16)
  {
    v33 = v12;
    v34 = 0;
    v32 = v10;
    v17 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:&v34];
    v18 = v34;
    v19 = v18;
    if (!v17 || v18)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10 underlyingError:v18];
      v20 = +[REMLog changeTracking];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromClass([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
        v26 = [v19 localizedDescription];
        *buf = 138543874;
        v36 = v25;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v26;
        _os_log_error_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_ERROR, "REMChangeTracking+AuxiliaryChgInfo: Failed to decode data to plist dictionary for {class: %{public}@, remObjectID: %{public}@, plistError: %{public}@}", buf, 0x20u);
      }
    }

    else
    {
      v20 = [v17 objectForKey:@"identifier"];
      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v20];
        v22 = v21;
        if (v21)
        {
          v21 = [objc_opt_class() objectIDWithUUID:v21];
        }

        if (([v21 isEqual:v11, v21]& 1) != 0)
        {
          [v16 setStorage:v17];
          v23 = [(REMAuxiliaryChangeInfoFetchResult *)self changeObjectForAuxiliaryChangeInfoMap];
          [v23 setObject:v33 forKeyedSubscript:v11];
          v24 = 0;
        }

        else
        {
          v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
          v23 = +[REMLog changeTracking];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v30 = NSStringFromClass([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
            *buf = 138543874;
            v36 = v30;
            v37 = 2114;
            v38 = v11;
            v39 = 2114;
            v40 = v31;
            _os_log_error_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_ERROR, "REMChangeTracking+AuxiliaryChgInfo: Decoded object identifier from the plist dictionary does not match with input object ID for {class: %{public}@, remObjectID: %{public}@, decodedObjID: %{public}@}", buf, 0x20u);
          }
        }
      }

      else
      {
        v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
        v22 = +[REMLog changeTracking];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess) auxiliaryChangeInfoFromData:? withObjectID:? fromChangeObject:? error:?];
        }
      }
    }

    v10 = v32;
    v12 = v33;
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess) auxiliaryChangeInfoFromData:? withObjectID:? fromChangeObject:? error:?];
    }
  }

  if (a6)
  {
    v27 = v24;
    *a6 = v24;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

@end