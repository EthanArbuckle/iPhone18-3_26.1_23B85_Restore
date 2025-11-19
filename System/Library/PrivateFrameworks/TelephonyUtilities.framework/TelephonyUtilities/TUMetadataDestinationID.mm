@interface TUMetadataDestinationID
+ (id)metadataDestinationIDForCall:(id)a3;
+ (id)metadataDestinationIDsForCHRecentCall:(id)a3;
+ (id)metadataDestinationIDsForCHRecentCalls:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetadataDestinationID:(id)a3;
- (NSString)isoCountryCode;
- (TUMetadataDestinationID)initWithCoder:(id)a3;
- (TUMetadataDestinationID)initWithDestinationID:(id)a3 isoCountryCode:(id)a4;
- (TUMetadataDestinationID)initWithHandle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUMetadataDestinationID

- (unint64_t)hash
{
  v2 = [(TUMetadataDestinationID *)self handle];
  v3 = [v2 normalizedValue];
  v4 = [v3 hash];

  return v4;
}

+ (id)metadataDestinationIDsForCHRecentCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [a1 metadataDestinationIDsForCHRecentCalls:{v6, v10, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)metadataDestinationIDsForCHRecentCalls:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v31)
  {
    v30 = *v40;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * v4);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v32 = v4;
        v33 = v5;
        v6 = [v5 remoteParticipantHandles];
        v7 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v36;
          do
          {
            v10 = 0;
            do
            {
              if (*v36 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v35 + 1) + 8 * v10);
              v12 = [v11 normalizedValue];
              v13 = [v12 length];

              if (v13)
              {
                v14 = [TUHandle handleTypeForCHHandle:v11];
                v15 = [TUHandle alloc];
                v16 = [v11 value];
                v17 = [v11 normalizedValue];
                v18 = [(TUHandle *)v15 initWithType:v14 value:v16 normalizedValue:v17];

                goto LABEL_13;
              }

              v20 = [v11 value];
              v21 = [v20 length];

              if (!v21)
              {
                goto LABEL_22;
              }

              v22 = [v11 type];
              switch(v22)
              {
                case 1:
                  v16 = [v11 value];
                  v23 = [TUHandle normalizedGenericHandleForValue:v16];
                  break;
                case 2:
                  v16 = [v11 value];
                  v24 = [v33 isoCountryCode];
                  v18 = [TUHandle normalizedPhoneNumberHandleForValue:v16 isoCountryCode:v24];

                  goto LABEL_13;
                case 3:
                  v16 = [v11 value];
                  v23 = [TUHandle normalizedEmailAddressHandleForValue:v16];
                  break;
                default:
                  goto LABEL_22;
              }

              v18 = v23;
LABEL_13:

              if (v18)
              {
                v19 = [[TUMetadataDestinationID alloc] initWithHandle:v18];
                if (v19)
                {
                  [v34 addObject:v19];
                }
              }

LABEL_22:
              ++v10;
            }

            while (v8 != v10);
            v25 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
            v8 = v25;
          }

          while (v25);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v31);
  }

  v26 = [v34 allObjects];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)metadataDestinationIDForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 handle];
  v5 = v4;
  if (v4)
  {
    if ([v4 type] == 2)
    {
      v6 = [v5 isoCountryCode];
      if ([v6 length])
      {
LABEL_6:

        goto LABEL_7;
      }

      v7 = [v3 isoCountryCode];
      v8 = [v7 length];

      if (v8)
      {
        v6 = [v5 value];
        v9 = [v3 isoCountryCode];
        v10 = [TUHandle normalizedPhoneNumberHandleForValue:v6 isoCountryCode:v9];

        v5 = v10;
        goto LABEL_6;
      }
    }

LABEL_7:
    v11 = [[TUMetadataDestinationID alloc] initWithHandle:v5];
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (TUMetadataDestinationID)initWithDestinationID:(id)a3 isoCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if ([v6 destinationIdIsEmailAddress])
    {
      v8 = [TUHandle normalizedEmailAddressHandleForValue:v6];
    }

    else if ([v6 destinationIdIsPhoneNumber] && objc_msgSend(v7, "length"))
    {
      v8 = [TUHandle normalizedPhoneNumberHandleForValue:v6 isoCountryCode:v7];
    }

    else
    {
      v8 = [TUHandle normalizedGenericHandleForValue:v6];
    }

    v10 = v8;
    if (v8)
    {
      self = [(TUMetadataDestinationID *)self initWithHandle:v8];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TUMetadataDestinationID)initWithHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  v6 = [v5 length];

  if (!v6)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v7 = [v4 normalizedValue];
  v8 = [v7 length];

  if (v8)
  {
    goto LABEL_3;
  }

  v14 = [v4 type];
  switch(v14)
  {
    case 1:
      v15 = [v4 value];
      v16 = [TUHandle normalizedGenericHandleForValue:v15];
      goto LABEL_15;
    case 2:
      v15 = [v4 value];
      v17 = [v4 isoCountryCode];
      v9 = [TUHandle normalizedPhoneNumberHandleForValue:v15 isoCountryCode:v17];

      goto LABEL_16;
    case 3:
      v15 = [v4 value];
      v16 = [TUHandle normalizedEmailAddressHandleForValue:v15];
LABEL_15:
      v9 = v16;
LABEL_16:

      if (v9)
      {
        goto LABEL_4;
      }

      break;
  }

LABEL_3:
  v9 = v4;
LABEL_4:
  v18.receiver = self;
  v18.super_class = TUMetadataDestinationID;
  v10 = [(TUMetadataDestinationID *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handle, v9);
  }

  self = v11;

  v12 = self;
LABEL_8:

  return v12;
}

- (NSString)isoCountryCode
{
  v2 = [(TUMetadataDestinationID *)self handle];
  v3 = [v2 isoCountryCode];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v4 = a3;
  v5 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:handle forKey:v5];
}

- (TUMetadataDestinationID)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUMetadataDestinationID;
  v5 = [(TUMetadataDestinationID *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUMetadataDestinationID allocWithZone:a3];
  v5 = [(TUMetadataDestinationID *)self handle];
  v6 = [(TUMetadataDestinationID *)v4 initWithHandle:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_handle);
  v6 = [(TUMetadataDestinationID *)self handle];
  v7 = [v3 stringWithFormat:@"<%@ %p %@=%@>", v4, self, v5, v6];

  return v7;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMetadataDestinationID *)self isEqualToMetadataDestinationID:v4];
  }

  return v5;
}

- (BOOL)isEqualToMetadataDestinationID:(id)a3
{
  v4 = [a3 handle];
  v5 = [(TUMetadataDestinationID *)self handle];
  v6 = [v4 isEquivalentToHandle:v5];

  return v6;
}

@end