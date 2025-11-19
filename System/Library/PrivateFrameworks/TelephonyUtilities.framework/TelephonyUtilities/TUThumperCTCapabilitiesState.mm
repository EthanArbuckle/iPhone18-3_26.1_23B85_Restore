@interface TUThumperCTCapabilitiesState
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilitiesState:(id)a3;
- (NSString)description;
- (TUThumperCTCapabilitiesState)init;
- (TUThumperCTCapabilitiesState)initWithCapabilityInfo:(id)a3;
- (TUThumperCTCapabilitiesState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUThumperCTCapabilitiesState

- (TUThumperCTCapabilitiesState)init
{
  v6.receiver = self;
  v6.super_class = TUThumperCTCapabilitiesState;
  v2 = [(TUThumperCTCapabilitiesState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    approvedSecondaryDeviceIDs = v2->_approvedSecondaryDeviceIDs;
    v2->_approvedSecondaryDeviceIDs = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = TUThumperCTCapabilitiesState;
  v4 = [(TUCTCapabilitiesState *)&v16 description];
  v5 = [v3 stringWithFormat:@"<%@", v4];

  v6 = NSStringFromSelector(sel_accountID);
  v7 = [(TUThumperCTCapabilitiesState *)self accountID];
  [v5 appendFormat:@" %@=%@", v6, v7];

  v8 = NSStringFromSelector(sel_isApproved);
  [v5 appendFormat:@" %@=%d", v8, -[TUThumperCTCapabilitiesState isApproved](self, "isApproved")];

  v9 = NSStringFromSelector(sel_isAssociated);
  [v5 appendFormat:@" %@=%d", v9, -[TUThumperCTCapabilitiesState isAssociated](self, "isAssociated")];

  v10 = NSStringFromSelector(sel_approvedSecondaryDeviceIDs);
  v11 = [(TUThumperCTCapabilitiesState *)self approvedSecondaryDeviceIDs];
  [v5 appendFormat:@" %@=%@", v10, v11];

  v12 = NSStringFromSelector(sel_localDeviceID);
  v13 = [(TUThumperCTCapabilitiesState *)self localDeviceID];
  [v5 appendFormat:@" %@=%@", v12, v13];

  v14 = NSStringFromSelector(sel_supportsDefaultPairedDevice);
  [v5 appendFormat:@" %@=%d", v14, -[TUThumperCTCapabilitiesState supportsDefaultPairedDevice](self, "supportsDefaultPairedDevice")];

  [v5 appendString:@">"];

  return v5;
}

- (TUThumperCTCapabilitiesState)initWithCapabilityInfo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = TUThumperCTCapabilitiesState;
  v5 = [(TUCTCapabilitiesState *)&v37 initWithCapabilityInfo:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965500]];
    v7 = v6;
    if (!v6)
    {
LABEL_20:

      goto LABEL_21;
    }

    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6965508]];
    v9 = [v8 copy];
    accountID = v5->_accountID;
    v5->_accountID = v9;

    v11 = *MEMORY[0x1E6965518];
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6965518]];
    v13 = [v12 copy];
    localDeviceID = v5->_localDeviceID;
    v5->_localDeviceID = v13;

    v15 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6965510]];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 firstObject];
      v18 = *MEMORY[0x1E6965520];
      v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E6965520]];

      if (v19)
      {
LABEL_8:
        if ([v19 count])
        {
          v32 = v16;
          v20 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v19, "count")}];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = v19;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v34;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:{v11, v31}];
                if (v26)
                {
                  [v20 addObject:v26];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
            }

            while (v23);
          }

          v27 = [v20 copy];
          approvedSecondaryDeviceIDs = v5->_approvedSecondaryDeviceIDs;
          v5->_approvedSecondaryDeviceIDs = v27;

          v19 = v31;
          v16 = v32;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v18 = *MEMORY[0x1E6965520];
    }

    v19 = [v7 objectForKeyedSubscript:v18];
    goto LABEL_8;
  }

LABEL_21:

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToCapabilitiesState:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TUThumperCTCapabilitiesState;
  if ([(TUCTCapabilitiesState *)&v16 isEqualToCapabilitiesState:v4])
  {
    v5 = [(TUThumperCTCapabilitiesState *)self accountID];
    v6 = [v4 accountID];
    if (TUObjectsAreEqualOrNil(v5, v6) && (v7 = -[TUThumperCTCapabilitiesState isApproved](self, "isApproved"), v7 == [v4 isApproved]))
    {
      v9 = [(TUThumperCTCapabilitiesState *)self approvedSecondaryDeviceIDs];
      v10 = [v4 approvedSecondaryDeviceIDs];
      if (TUObjectsAreEqualOrNil(v9, v10) && (v11 = -[TUThumperCTCapabilitiesState isAssociated](self, "isAssociated"), v11 == [v4 isAssociated]))
      {
        v12 = [(TUThumperCTCapabilitiesState *)self localDeviceID];
        v13 = [v4 localDeviceID];
        if (TUObjectsAreEqualOrNil(v12, v13))
        {
          v14 = [(TUThumperCTCapabilitiesState *)self supportsDefaultPairedDevice];
          v8 = v14 ^ [v4 supportsDefaultPairedDevice] ^ 1;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (TUThumperCTCapabilitiesState)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TUThumperCTCapabilitiesState;
  v5 = [(TUCTCapabilitiesState *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = NSStringFromSelector(sel_isApproved);
    v5->_approved = [v4 decodeBoolForKey:v10];

    v11 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = NSStringFromSelector(sel_approvedSecondaryDeviceIDs);
    v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];
    approvedSecondaryDeviceIDs = v5->_approvedSecondaryDeviceIDs;
    v5->_approvedSecondaryDeviceIDs = v15;

    v17 = NSStringFromSelector(sel_isAssociated);
    v5->_associated = [v4 decodeBoolForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_localDeviceID);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    localDeviceID = v5->_localDeviceID;
    v5->_localDeviceID = v20;

    v22 = NSStringFromSelector(sel_supportsDefaultPairedDevice);
    v5->_supportsDefaultPairedDevice = [v4 decodeBoolForKey:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = TUThumperCTCapabilitiesState;
  v4 = a3;
  [(TUCTCapabilitiesState *)&v17 encodeWithCoder:v4];
  v5 = [(TUThumperCTCapabilitiesState *)self accountID:v17.receiver];
  v6 = NSStringFromSelector(sel_accountID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUThumperCTCapabilitiesState *)self isApproved];
  v8 = NSStringFromSelector(sel_isApproved);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUThumperCTCapabilitiesState *)self approvedSecondaryDeviceIDs];
  v10 = NSStringFromSelector(sel_approvedSecondaryDeviceIDs);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUThumperCTCapabilitiesState *)self isAssociated];
  v12 = NSStringFromSelector(sel_isAssociated);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TUThumperCTCapabilitiesState *)self localDeviceID];
  v14 = NSStringFromSelector(sel_localDeviceID);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUThumperCTCapabilitiesState *)self supportsDefaultPairedDevice];
  v16 = NSStringFromSelector(sel_supportsDefaultPairedDevice);
  [v4 encodeBool:v15 forKey:v16];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = TUThumperCTCapabilitiesState;
  v5 = [(TUCTCapabilitiesState *)&v16 copyWithZone:?];
  v6 = [(TUThumperCTCapabilitiesState *)self accountID];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[7];
  v5[7] = v7;

  v9 = [(TUThumperCTCapabilitiesState *)self approvedSecondaryDeviceIDs];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(TUThumperCTCapabilitiesState *)self localDeviceID];
  v13 = [v12 copyWithZone:a3];
  v14 = v5[8];
  v5[8] = v13;

  return v5;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = TUThumperCTCapabilitiesState;
  v3 = [(TUCTCapabilitiesState *)&v17 hash];
  v4 = [(TUThumperCTCapabilitiesState *)self accountID];
  v5 = [v4 hash];
  if ([(TUThumperCTCapabilitiesState *)self isApproved])
  {
    v6 = 1231;
  }

  else
  {
    v6 = 1237;
  }

  v7 = v5 ^ v6;
  v8 = [(TUThumperCTCapabilitiesState *)self approvedSecondaryDeviceIDs];
  v9 = v7 ^ [v8 hash];
  if ([(TUThumperCTCapabilitiesState *)self isAssociated])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v9 ^ v10 ^ v3;
  v12 = [(TUThumperCTCapabilitiesState *)self localDeviceID];
  v13 = [v12 hash];
  if ([(TUThumperCTCapabilitiesState *)self supportsDefaultPairedDevice])
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = v13 ^ v14;

  return v11 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUThumperCTCapabilitiesState *)self isEqualToCapabilitiesState:v4];
  }

  return v5;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TUThumperCTCapabilitiesState;
  v4 = [(TUCTCapabilitiesState *)&v6 publiclyAccessibleCopyWithZone:a3];
  v4[40] = [(TUThumperCTCapabilitiesState *)self isApproved];
  v4[41] = [(TUThumperCTCapabilitiesState *)self isAssociated];
  v4[42] = [(TUThumperCTCapabilitiesState *)self supportsDefaultPairedDevice];

  return v4;
}

+ (id)unarchivedObjectClasses
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TUThumperCTCapabilitiesState;
  v7 = objc_msgSendSuper2(&v10, sel_unarchivedObjectClasses);
  v8 = [v7 setByAddingObjectsFromSet:v6];

  return v8;
}

@end