@interface WBSUserMediaCapturePolicyEntry
- (BOOL)_isValidUserMediaPermission:(unint64_t)a3;
- (BOOL)isValid;
- (WBSUserMediaCapturePolicyEntry)initWithDictionaryRepresentation:(id)a3;
- (WBSUserMediaCapturePolicyEntry)initWithPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6;
- (id)dictionaryRepresentation;
- (void)updatePermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4;
@end

@implementation WBSUserMediaCapturePolicyEntry

- (WBSUserMediaCapturePolicyEntry)initWithPermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4 forOrigin:(id)a5 topLevelOrigin:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = WBSUserMediaCapturePolicyEntry;
  v13 = [(WBSUserMediaCapturePolicyEntry *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_origin, a5);
    objc_storeStrong(&v14->_topLevelOrigin, a6);
    v14->_permissionGrantDate = CFAbsoluteTimeGetCurrent();
    [(WBSUserMediaCapturePolicyEntry *)v14 updatePermission:a3 expirationPolicy:a4];
    v15 = v14;
  }

  return v14;
}

- (WBSUserMediaCapturePolicyEntry)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WBSUserMediaCapturePolicyEntry;
  v5 = [(WBSUserMediaCapturePolicyEntry *)&v25 init];
  if (v5 && ([v4 safari_numberForKey:@"permissionExpirationDate"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v6, CFAbsoluteTimeGetCurrent() <= v8) && (v5->_permissionExpirationDate = v8, objc_msgSend(v4, "safari_numberForKey:", @"permissionGrantDateKey"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), v11 = v10, v9, v11 != 0.0) && v11 <= CFAbsoluteTimeGetCurrent())
  {
    v5->_permissionGrantDate = v11;
    v14 = [v4 safari_stringForKey:@"origin"];
    if ([v14 length])
    {
      v15 = [v14 copy];
      origin = v5->_origin;
      v5->_origin = v15;

      v17 = [v4 safari_stringForKey:@"topLevelOrigin"];
      if ([v17 length])
      {
        v18 = [v17 copy];
        topLevelOrigin = v5->_topLevelOrigin;
        v5->_topLevelOrigin = v18;

        v20 = [v4 safari_stringForKey:@"salt"];
        if ([v20 length])
        {
          v21 = [v20 copy];
          persistentSalt = v5->_persistentSalt;
          v5->_persistentSalt = v21;
        }

        v23 = [v4 safari_numberForKey:@"permission"];
        v24 = [v23 integerValue];

        if ([(WBSUserMediaCapturePolicyEntry *)v5 _isValidUserMediaPermission:v24])
        {
          v5->_permission = v24;
        }

        v12 = v5;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v14[6] = *MEMORY[0x1E69E9840];
  v13[0] = @"permissionExpirationDate";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_permissionExpirationDate];
  v14[0] = v3;
  v13[1] = @"permissionGrantDateKey";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_permissionGrantDate];
  v5 = v4;
  persistentSalt = &stru_1F3A5E418;
  permission = self->_permission;
  if (self->_persistentSalt)
  {
    persistentSalt = self->_persistentSalt;
  }

  v14[1] = v4;
  v14[2] = persistentSalt;
  v13[2] = @"salt";
  v13[3] = @"permission";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:permission];
  origin = self->_origin;
  topLevelOrigin = self->_topLevelOrigin;
  v14[3] = v8;
  v14[4] = origin;
  v13[4] = @"origin";
  v13[5] = @"topLevelOrigin";
  v14[5] = topLevelOrigin;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

- (BOOL)isValid
{
  permissionExpirationDate = self->_permissionExpirationDate;
  if (permissionExpirationDate == 0.0 || CFAbsoluteTimeGetCurrent() > permissionExpirationDate)
  {
    return 0;
  }

  permission = self->_permission;

  return [(WBSUserMediaCapturePolicyEntry *)self _isValidUserMediaPermission:permission];
}

- (void)updatePermission:(unint64_t)a3 expirationPolicy:(unint64_t)a4
{
  if ([(WBSUserMediaCapturePolicyEntry *)self _isValidUserMediaPermission:?])
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  self->_permission = v7;
  if (a4)
  {
    if (a4 == 1)
    {
      v8 = 86400.0;
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      v8 = 2592000.0;
    }

    v9 = CFAbsoluteTimeGetCurrent() + v8;
  }

  else
  {
    v9 = 0.0;
  }

  self->_permissionExpirationDate = v9;
}

- (BOOL)_isValidUserMediaPermission:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3 >= 0x100;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

@end