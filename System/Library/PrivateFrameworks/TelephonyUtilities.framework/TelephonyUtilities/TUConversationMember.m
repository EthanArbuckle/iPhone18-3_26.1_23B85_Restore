@interface TUConversationMember
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMember:(id)a3;
- (BOOL)needsContactLookupForDisplayName;
- (BOOL)pseudonym;
- (BOOL)representsSameMemberAs:(id)a3;
- (NSArray)idsDestinations;
- (NSSet)handles;
- (NSString)idsDestination;
- (NSString)idsFromID;
- (TUConversationMember)initWithCoder:(id)a3;
- (TUConversationMember)initWithContact:(id)a3;
- (TUConversationMember)initWithContact:(id)a3 additionalHandles:(id)a4;
- (TUConversationMember)initWithDestination:(id)a3;
- (TUConversationMember)initWithDestinations:(id)a3;
- (TUConversationMember)initWithHandle:(id)a3 nickname:(id)a4 joinedFromLetMeIn:(BOOL)a5;
- (TUConversationMember)initWithHandles:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setValidationSource:(int64_t)a3;
@end

@implementation TUConversationMember

- (unint64_t)hash
{
  v3 = [(TUConversationMember *)self handle];
  v4 = [v3 hash];
  v5 = [(TUConversationMember *)self lightweightPrimary];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(TUConversationMember *)self lightweightPrimaryParticipantIdentifier];
  if ([(TUConversationMember *)self isLightweightMember])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  v9 = [(TUConversationMember *)self association];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [(TUConversationMember *)self stableDeviceIdentifier];
  v12 = [v11 hash];
  v13 = [(TUConversationMember *)self proposedParticipantCluster];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)needsContactLookupForDisplayName
{
  v3 = [(TUConversationMember *)self handle];
  v4 = [v3 value];
  if ([v4 destinationIdIsTemporary])
  {
    LOBYTE(v5) = 0;
LABEL_8:

    return v5;
  }

  v6 = [(TUConversationMember *)self handle];
  v7 = [v6 value];
  v8 = [v7 destinationIdIsPseudonym];

  if ((v8 & 1) == 0)
  {
    v3 = [(TUConversationMember *)self handle];
    v4 = [v3 siriDisplayName];
    if (v4)
    {
      v9 = [(TUConversationMember *)self handle];
      v5 = [v9 shouldHideContact] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }

    goto LABEL_8;
  }

  LOBYTE(v5) = 0;
  return v5;
}

- (TUConversationMember)initWithHandle:(id)a3 nickname:(id)a4 joinedFromLetMeIn:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = TUConversationMember;
  v10 = [(TUConversationMember *)&v27 init];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v8;
  v12 = [v11 isoCountryCode];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = TUNetworkCountryCode();
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = TUHomeCountryCode();
    }

    v14 = v17;
  }

  if ([v11 type] == 2)
  {
    v18 = [v11 canonicalHandleForISOCountryCode:v14];
    v19 = v11;
LABEL_12:

    goto LABEL_13;
  }

  v18 = v11;
  if ([v11 type] == 3)
  {
    v19 = [v11 value];
    v20 = [v19 lowercaseString];
    v18 = [TUHandle normalizedEmailAddressHandleForValue:v20];

    goto LABEL_12;
  }

LABEL_13:
  v21 = TUNormalizedHandleForTUHandle(v18);
  handle = v10->_handle;
  v10->_handle = v21;

  if ([v9 length])
  {
    v23 = [v9 copy];
    nickname = v10->_nickname;
    v10->_nickname = v23;
  }

  v25 = [v11 siriDisplayName];
  [(TUHandle *)v10->_handle setSiriDisplayName:v25];

  v10->_joinedFromLetMeIn = a5;
  v10->_isOtherInvitedHandle = 0;

LABEL_16:
  return v10;
}

- (TUConversationMember)initWithHandles:(id)a3
{
  v4 = [a3 anyObject];
  v5 = [(TUConversationMember *)self initWithHandle:v4];

  return v5;
}

- (TUConversationMember)initWithContact:(id)a3 additionalHandles:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 mutableCopy];
  if ([v6 isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v6 phoneNumbers];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          if (([v13 tuIsSuggested] & 1) == 0)
          {
            v14 = [TUHandle alloc];
            v15 = [v13 value];
            v16 = [v15 stringValue];
            v17 = [(TUHandle *)v14 initWithType:2 value:v16];

            [v7 addObject:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }
  }

  if ([v6 isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [v6 emailAddresses];
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          if (([v23 tuIsSuggested] & 1) == 0)
          {
            v24 = [TUHandle alloc];
            v25 = [v23 value];
            v26 = [(TUHandle *)v24 initWithType:3 value:v25];

            [v7 addObject:v26];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }
  }

  v27 = [(TUConversationMember *)self initWithHandles:v7];

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (TUConversationMember)initWithContact:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(TUConversationMember *)self initWithContact:v5 additionalHandles:v6];

  return v7;
}

- (TUConversationMember)initWithDestination:(id)a3
{
  v4 = [TUHandle handleWithDestinationID:a3];
  v5 = [(TUConversationMember *)self initWithHandle:v4];

  return v5;
}

- (TUConversationMember)initWithDestinations:(id)a3
{
  v4 = [a3 firstObject];
  v5 = [TUHandle handleWithDestinationID:v4];

  v6 = [(TUConversationMember *)self initWithHandle:v5];
  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_handle);
  v5 = [(TUConversationMember *)self handle];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_nickname);
  v7 = [(TUConversationMember *)self nickname];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isLightweightMember);
  [v3 appendFormat:@"%@=%d", v8, -[TUConversationMember isLightweightMember](self, "isLightweightMember")];

  if ([(TUConversationMember *)self isLightweightMember])
  {
    [v3 appendFormat:@", "];
    v9 = NSStringFromSelector(sel_isValidated);
    v10 = [(TUConversationMember *)self isValidated];
    v11 = @"NO";
    if (v10)
    {
      v11 = @"YES";
    }

    [v3 appendFormat:@"%@=%@", v9, v11];
  }

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_lightweightPrimary);
  v13 = [(TUConversationMember *)self lightweightPrimary];
  [v3 appendFormat:@"%@=%@", v12, v13];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
  [v3 appendFormat:@"%@=%llu", v14, -[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier")];

  [v3 appendFormat:@", "];
  v15 = NSStringFromSelector(sel_joinedFromLetMeIn);
  [v3 appendFormat:@"%@=%d", v15, -[TUConversationMember joinedFromLetMeIn](self, "joinedFromLetMeIn")];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  v17 = [(TUConversationMember *)self dateReceivedLetMeIn];
  [v3 appendFormat:@"%@=%@", v16, v17];

  [v3 appendFormat:@", "];
  v18 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  v19 = [(TUConversationMember *)self dateInitiatedLetMeIn];
  [v3 appendFormat:@"%@=%@", v18, v19];

  [v3 appendFormat:@", "];
  v20 = NSStringFromSelector(sel_isOtherInvitedHandle);
  [v3 appendFormat:@"%@=%d", v20, -[TUConversationMember isOtherInvitedHandle](self, "isOtherInvitedHandle")];

  [v3 appendFormat:@", "];
  v21 = NSStringFromSelector(sel_association);
  v22 = [(TUConversationMember *)self association];
  [v3 appendFormat:@"%@=%@", v21, v22];

  [v3 appendFormat:@", "];
  v23 = NSStringFromSelector(sel_associationVoucher);
  v24 = [(TUConversationMember *)self associationVoucher];
  [v3 appendFormat:@"%@=%@", v23, v24];

  v25 = [(TUConversationMember *)self stableDeviceIdentifier];

  if (v25)
  {
    [v3 appendFormat:@", "];
    v26 = NSStringFromSelector(sel_stableDeviceIdentifier);
    v27 = [(TUConversationMember *)self stableDeviceIdentifier];
    [v3 appendFormat:@"%@=%@", v26, v27];
  }

  v28 = [(TUConversationMember *)self proposedParticipantCluster];

  if (v28)
  {
    [v3 appendFormat:@", "];
    v29 = NSStringFromSelector(sel_proposedParticipantCluster);
    v30 = [(TUConversationMember *)self proposedParticipantCluster];
    [v3 appendFormat:@"%@=%@", v29, v30];
  }

  [v3 appendFormat:@">"];
  v31 = [v3 copy];

  return v31;
}

- (NSSet)handles
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(TUConversationMember *)self handle];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (NSString)idsFromID
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(TUConversationMember *)self handle];
  v4 = TUCopyIDSFromIDForHandle(v3);

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(TUConversationMember *)self handle];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS fromID", &v10, 0xCu);
    }
  }

  v7 = [v4 copy];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)idsDestination
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(TUConversationMember *)self handle];
  v4 = TUCopyIDSCanonicalAddressForHandle(v3);

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(TUConversationMember *)self handle];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not convert %@ to IDS destination", &v10, 0xCu);
    }
  }

  v7 = [v4 copy];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)idsDestinations
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(TUConversationMember *)self idsDestination];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)representsSameMemberAs:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMember *)self handle];
  v6 = [v4 handle];

  LOBYTE(v4) = [v5 isEqualToHandle:v6];
  return v4;
}

- (BOOL)pseudonym
{
  v2 = [(TUConversationMember *)self handle];
  v3 = [v2 value];
  v4 = [v3 destinationIdIsPseudonym];

  return v4;
}

- (void)setValidationSource:(int64_t)a3
{
  if (a3 != 1 || self->_validationSource != 2)
  {
    self->_validationSource = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationMember *)self isEqualToMember:v4];

  return v5;
}

- (BOOL)isEqualToMember:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMember *)self handle];
  v6 = [v4 handle];
  if ([v5 isEqualToHandle:v6])
  {
    v7 = [(TUConversationMember *)self lightweightPrimary];
    v8 = [v4 lightweightPrimary];
    if (TUObjectsAreEqualOrNil(v7, v8) && (v9 = -[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier"), v9 == [v4 lightweightPrimaryParticipantIdentifier]) && (v10 = -[TUConversationMember isLightweightMember](self, "isLightweightMember"), v10 == objc_msgSend(v4, "isLightweightMember")))
    {
      v13 = [(TUConversationMember *)self association];
      v14 = [v4 association];
      if (TUObjectsAreEqualOrNil(v13, v14))
      {
        v15 = [(TUConversationMember *)self stableDeviceIdentifier];
        v16 = [v4 stableDeviceIdentifier];
        if (TUObjectsAreEqualOrNil(v15, v16))
        {
          v18 = [(TUConversationMember *)self proposedParticipantCluster];
          [v4 proposedParticipantCluster];
          v17 = v19 = v15;
          v11 = TUObjectsAreEqualOrNil(v18, v17);

          v15 = v19;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationMember *)self handle];
  v6 = [(TUConversationMember *)self nickname];
  v7 = [v4 initWithHandle:v5 nickname:v6 joinedFromLetMeIn:{-[TUConversationMember joinedFromLetMeIn](self, "joinedFromLetMeIn")}];

  v8 = [(TUConversationMember *)self lightweightPrimary];
  [v7 setLightweightPrimary:v8];

  [v7 setIsLightweightMember:{-[TUConversationMember isLightweightMember](self, "isLightweightMember")}];
  [v7 setIsOtherInvitedHandle:{-[TUConversationMember isOtherInvitedHandle](self, "isOtherInvitedHandle")}];
  v9 = [(TUConversationMember *)self dateReceivedLetMeIn];
  [v7 setDateReceivedLetMeIn:v9];

  v10 = [(TUConversationMember *)self dateInitiatedLetMeIn];
  [v7 setDateInitiatedLetMeIn:v10];

  [v7 setLightweightPrimaryParticipantIdentifier:{-[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier")}];
  [v7 setValidationSource:{-[TUConversationMember validationSource](self, "validationSource")}];
  v11 = [(TUConversationMember *)self association];
  v12 = [v11 copy];
  [v7 setAssociation:v12];

  v13 = [(TUConversationMember *)self associationVoucher];
  v14 = [v13 copy];
  [v7 setAssociationVoucher:v14];

  v15 = [(TUConversationMember *)self stableDeviceIdentifier];
  v16 = [v15 copy];
  [v7 setStableDeviceIdentifier:v16];

  v17 = [(TUConversationMember *)self proposedParticipantCluster];
  v18 = [v17 copy];
  [v7 setProposedParticipantCluster:v18];

  return v7;
}

- (TUConversationMember)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_nickname);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_joinedFromLetMeIn);
  v12 = [v4 decodeBoolForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [(TUConversationMember *)self initWithHandle:v7 nickname:v10 joinedFromLetMeIn:v12];
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_lightweightPrimary);
    v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
    lightweightPrimary = v19->_lightweightPrimary;
    v19->_lightweightPrimary = v22;

    v24 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
    v19->_lightweightPrimaryParticipantIdentifier = [v4 decodeInt64ForKey:v24];

    v25 = NSStringFromSelector(sel_isLightweightMember);
    v19->_isLightweightMember = [v4 decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isOtherInvitedHandle);
    v19->_isOtherInvitedHandle = [v4 decodeBoolForKey:v26];

    objc_storeStrong(&v19->_dateReceivedLetMeIn, v15);
    objc_storeStrong(&v19->_dateInitiatedLetMeIn, v18);
    v27 = NSStringFromSelector(sel_validationSource);
    v19->_validationSource = [v4 decodeIntegerForKey:v27];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_association);
    v30 = [v4 decodeObjectOfClass:v28 forKey:v29];
    association = v19->_association;
    v19->_association = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_associationVoucher);
    v34 = [v4 decodeObjectOfClass:v32 forKey:v33];
    associationVoucher = v19->_associationVoucher;
    v19->_associationVoucher = v34;

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_stableDeviceIdentifier);
    v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
    stableDeviceIdentifier = v19->_stableDeviceIdentifier;
    v19->_stableDeviceIdentifier = v38;

    v40 = objc_opt_class();
    v41 = NSStringFromSelector(sel_proposedParticipantCluster);
    v42 = [v4 decodeObjectOfClass:v40 forKey:v41];
    proposedParticipantCluster = v19->_proposedParticipantCluster;
    v19->_proposedParticipantCluster = v42;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMember *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationMember *)self nickname];
  v8 = NSStringFromSelector(sel_nickname);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationMember *)self lightweightPrimary];
  v10 = NSStringFromSelector(sel_lightweightPrimary);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationMember *)self lightweightPrimaryParticipantIdentifier];
  v12 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
  [v4 encodeInt64:v11 forKey:v12];

  v13 = [(TUConversationMember *)self isLightweightMember];
  v14 = NSStringFromSelector(sel_isLightweightMember);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TUConversationMember *)self joinedFromLetMeIn];
  v16 = NSStringFromSelector(sel_joinedFromLetMeIn);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUConversationMember *)self isOtherInvitedHandle];
  v18 = NSStringFromSelector(sel_isOtherInvitedHandle);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUConversationMember *)self dateReceivedLetMeIn];
  v20 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(TUConversationMember *)self dateInitiatedLetMeIn];
  v22 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(TUConversationMember *)self validationSource];
  v24 = NSStringFromSelector(sel_validationSource);
  [v4 encodeInteger:v23 forKey:v24];

  v25 = [(TUConversationMember *)self association];
  v26 = NSStringFromSelector(sel_association);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(TUConversationMember *)self associationVoucher];
  v28 = NSStringFromSelector(sel_associationVoucher);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(TUConversationMember *)self stableDeviceIdentifier];
  v30 = NSStringFromSelector(sel_stableDeviceIdentifier);
  [v4 encodeObject:v29 forKey:v30];

  v32 = [(TUConversationMember *)self proposedParticipantCluster];
  v31 = NSStringFromSelector(sel_proposedParticipantCluster);
  [v4 encodeObject:v32 forKey:v31];
}

@end