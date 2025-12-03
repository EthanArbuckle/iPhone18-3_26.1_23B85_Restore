@interface TUMetadataDestinationID
+ (id)metadataDestinationIDForCall:(id)call;
+ (id)metadataDestinationIDsForCHRecentCall:(id)call;
+ (id)metadataDestinationIDsForCHRecentCalls:(id)calls;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadataDestinationID:(id)d;
- (NSString)isoCountryCode;
- (TUMetadataDestinationID)initWithCoder:(id)coder;
- (TUMetadataDestinationID)initWithDestinationID:(id)d isoCountryCode:(id)code;
- (TUMetadataDestinationID)initWithHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMetadataDestinationID

- (unint64_t)hash
{
  handle = [(TUMetadataDestinationID *)self handle];
  normalizedValue = [handle normalizedValue];
  v4 = [normalizedValue hash];

  return v4;
}

+ (id)metadataDestinationIDsForCHRecentCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v4 = MEMORY[0x1E695DEC8];
  callCopy2 = call;
  v6 = [v4 arrayWithObjects:&callCopy count:1];

  v7 = [self metadataDestinationIDsForCHRecentCalls:{v6, callCopy, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)metadataDestinationIDsForCHRecentCalls:(id)calls
{
  v45 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = callsCopy;
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
        remoteParticipantHandles = [v5 remoteParticipantHandles];
        v7 = [remoteParticipantHandles countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(remoteParticipantHandles);
              }

              v11 = *(*(&v35 + 1) + 8 * v10);
              normalizedValue = [v11 normalizedValue];
              v13 = [normalizedValue length];

              if (v13)
              {
                v14 = [TUHandle handleTypeForCHHandle:v11];
                v15 = [TUHandle alloc];
                value = [v11 value];
                normalizedValue2 = [v11 normalizedValue];
                v18 = [(TUHandle *)v15 initWithType:v14 value:value normalizedValue:normalizedValue2];

                goto LABEL_13;
              }

              value2 = [v11 value];
              v21 = [value2 length];

              if (!v21)
              {
                goto LABEL_22;
              }

              type = [v11 type];
              switch(type)
              {
                case 1:
                  value = [v11 value];
                  v23 = [TUHandle normalizedGenericHandleForValue:value];
                  break;
                case 2:
                  value = [v11 value];
                  isoCountryCode = [v33 isoCountryCode];
                  v18 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

                  goto LABEL_13;
                case 3:
                  value = [v11 value];
                  v23 = [TUHandle normalizedEmailAddressHandleForValue:value];
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
            v25 = [remoteParticipantHandles countByEnumeratingWithState:&v35 objects:v43 count:16];
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

  allObjects = [v34 allObjects];

  v27 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (id)metadataDestinationIDForCall:(id)call
{
  callCopy = call;
  handle = [callCopy handle];
  v5 = handle;
  if (handle)
  {
    if ([handle type] == 2)
    {
      isoCountryCode = [v5 isoCountryCode];
      if ([isoCountryCode length])
      {
LABEL_6:

        goto LABEL_7;
      }

      isoCountryCode2 = [callCopy isoCountryCode];
      v8 = [isoCountryCode2 length];

      if (v8)
      {
        isoCountryCode = [v5 value];
        isoCountryCode3 = [callCopy isoCountryCode];
        v10 = [TUHandle normalizedPhoneNumberHandleForValue:isoCountryCode isoCountryCode:isoCountryCode3];

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

- (TUMetadataDestinationID)initWithDestinationID:(id)d isoCountryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if ([dCopy length])
  {
    if ([dCopy destinationIdIsEmailAddress])
    {
      v8 = [TUHandle normalizedEmailAddressHandleForValue:dCopy];
    }

    else if ([dCopy destinationIdIsPhoneNumber] && objc_msgSend(codeCopy, "length"))
    {
      v8 = [TUHandle normalizedPhoneNumberHandleForValue:dCopy isoCountryCode:codeCopy];
    }

    else
    {
      v8 = [TUHandle normalizedGenericHandleForValue:dCopy];
    }

    v10 = v8;
    if (v8)
    {
      self = [(TUMetadataDestinationID *)self initWithHandle:v8];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TUMetadataDestinationID)initWithHandle:(id)handle
{
  handleCopy = handle;
  value = [handleCopy value];
  v6 = [value length];

  if (!v6)
  {
    selfCopy = 0;
    goto LABEL_8;
  }

  normalizedValue = [handleCopy normalizedValue];
  v8 = [normalizedValue length];

  if (v8)
  {
    goto LABEL_3;
  }

  type = [handleCopy type];
  switch(type)
  {
    case 1:
      value2 = [handleCopy value];
      v16 = [TUHandle normalizedGenericHandleForValue:value2];
      goto LABEL_15;
    case 2:
      value2 = [handleCopy value];
      isoCountryCode = [handleCopy isoCountryCode];
      v9 = [TUHandle normalizedPhoneNumberHandleForValue:value2 isoCountryCode:isoCountryCode];

      goto LABEL_16;
    case 3:
      value2 = [handleCopy value];
      v16 = [TUHandle normalizedEmailAddressHandleForValue:value2];
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
  v9 = handleCopy;
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

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (NSString)isoCountryCode
{
  handle = [(TUMetadataDestinationID *)self handle];
  isoCountryCode = [handle isoCountryCode];

  return isoCountryCode;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v5];
}

- (TUMetadataDestinationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TUMetadataDestinationID;
  v5 = [(TUMetadataDestinationID *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUMetadataDestinationID allocWithZone:zone];
  handle = [(TUMetadataDestinationID *)self handle];
  v6 = [(TUMetadataDestinationID *)v4 initWithHandle:handle];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_handle);
  handle = [(TUMetadataDestinationID *)self handle];
  v7 = [v3 stringWithFormat:@"<%@ %p %@=%@>", v4, self, v5, handle];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUMetadataDestinationID *)self isEqualToMetadataDestinationID:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMetadataDestinationID:(id)d
{
  handle = [d handle];
  handle2 = [(TUMetadataDestinationID *)self handle];
  v6 = [handle isEquivalentToHandle:handle2];

  return v6;
}

@end