@interface TUConversationMember
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMember:(id)member;
- (BOOL)needsContactLookupForDisplayName;
- (BOOL)pseudonym;
- (BOOL)representsSameMemberAs:(id)as;
- (NSArray)idsDestinations;
- (NSSet)handles;
- (NSString)idsDestination;
- (NSString)idsFromID;
- (TUConversationMember)initWithCoder:(id)coder;
- (TUConversationMember)initWithContact:(id)contact;
- (TUConversationMember)initWithContact:(id)contact additionalHandles:(id)handles;
- (TUConversationMember)initWithDestination:(id)destination;
- (TUConversationMember)initWithDestinations:(id)destinations;
- (TUConversationMember)initWithHandle:(id)handle nickname:(id)nickname joinedFromLetMeIn:(BOOL)in;
- (TUConversationMember)initWithHandles:(id)handles;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setValidationSource:(int64_t)source;
@end

@implementation TUConversationMember

- (unint64_t)hash
{
  handle = [(TUConversationMember *)self handle];
  v4 = [handle hash];
  lightweightPrimary = [(TUConversationMember *)self lightweightPrimary];
  v6 = [lightweightPrimary hash] ^ v4;
  v7 = v6 ^ [(TUConversationMember *)self lightweightPrimaryParticipantIdentifier];
  if ([(TUConversationMember *)self isLightweightMember])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  association = [(TUConversationMember *)self association];
  v10 = v7 ^ v8 ^ [association hash];
  stableDeviceIdentifier = [(TUConversationMember *)self stableDeviceIdentifier];
  v12 = [stableDeviceIdentifier hash];
  proposedParticipantCluster = [(TUConversationMember *)self proposedParticipantCluster];
  v14 = v12 ^ [proposedParticipantCluster hash];

  return v10 ^ v14;
}

- (BOOL)needsContactLookupForDisplayName
{
  handle = [(TUConversationMember *)self handle];
  value = [handle value];
  if ([value destinationIdIsTemporary])
  {
    LOBYTE(v5) = 0;
LABEL_8:

    return v5;
  }

  handle2 = [(TUConversationMember *)self handle];
  value2 = [handle2 value];
  destinationIdIsPseudonym = [value2 destinationIdIsPseudonym];

  if ((destinationIdIsPseudonym & 1) == 0)
  {
    handle = [(TUConversationMember *)self handle];
    value = [handle siriDisplayName];
    if (value)
    {
      handle3 = [(TUConversationMember *)self handle];
      v5 = [handle3 shouldHideContact] ^ 1;
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

- (TUConversationMember)initWithHandle:(id)handle nickname:(id)nickname joinedFromLetMeIn:(BOOL)in
{
  handleCopy = handle;
  nicknameCopy = nickname;
  v27.receiver = self;
  v27.super_class = TUConversationMember;
  v10 = [(TUConversationMember *)&v27 init];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = handleCopy;
  isoCountryCode = [v11 isoCountryCode];
  v13 = isoCountryCode;
  if (isoCountryCode)
  {
    v14 = isoCountryCode;
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
    value = v11;
LABEL_12:

    goto LABEL_13;
  }

  v18 = v11;
  if ([v11 type] == 3)
  {
    value = [v11 value];
    lowercaseString = [value lowercaseString];
    v18 = [TUHandle normalizedEmailAddressHandleForValue:lowercaseString];

    goto LABEL_12;
  }

LABEL_13:
  v21 = TUNormalizedHandleForTUHandle(v18);
  handle = v10->_handle;
  v10->_handle = v21;

  if ([nicknameCopy length])
  {
    v23 = [nicknameCopy copy];
    nickname = v10->_nickname;
    v10->_nickname = v23;
  }

  siriDisplayName = [v11 siriDisplayName];
  [(TUHandle *)v10->_handle setSiriDisplayName:siriDisplayName];

  v10->_joinedFromLetMeIn = in;
  v10->_isOtherInvitedHandle = 0;

LABEL_16:
  return v10;
}

- (TUConversationMember)initWithHandles:(id)handles
{
  anyObject = [handles anyObject];
  v5 = [(TUConversationMember *)self initWithHandle:anyObject];

  return v5;
}

- (TUConversationMember)initWithContact:(id)contact additionalHandles:(id)handles
{
  v40 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v7 = [handles mutableCopy];
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    phoneNumbers = [contactCopy phoneNumbers];
    v9 = [phoneNumbers countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(phoneNumbers);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          if (([v13 tuIsSuggested] & 1) == 0)
          {
            v14 = [TUHandle alloc];
            value = [v13 value];
            stringValue = [value stringValue];
            v17 = [(TUHandle *)v14 initWithType:2 value:stringValue];

            [v7 addObject:v17];
          }
        }

        v10 = [phoneNumbers countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }
  }

  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v19 = [emailAddresses countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(emailAddresses);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          if (([v23 tuIsSuggested] & 1) == 0)
          {
            v24 = [TUHandle alloc];
            value2 = [v23 value];
            v26 = [(TUHandle *)v24 initWithType:3 value:value2];

            [v7 addObject:v26];
          }
        }

        v20 = [emailAddresses countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }
  }

  v27 = [(TUConversationMember *)self initWithHandles:v7];

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (TUConversationMember)initWithContact:(id)contact
{
  v4 = MEMORY[0x1E695DFD8];
  contactCopy = contact;
  v6 = [v4 set];
  v7 = [(TUConversationMember *)self initWithContact:contactCopy additionalHandles:v6];

  return v7;
}

- (TUConversationMember)initWithDestination:(id)destination
{
  v4 = [TUHandle handleWithDestinationID:destination];
  v5 = [(TUConversationMember *)self initWithHandle:v4];

  return v5;
}

- (TUConversationMember)initWithDestinations:(id)destinations
{
  firstObject = [destinations firstObject];
  v5 = [TUHandle handleWithDestinationID:firstObject];

  v6 = [(TUConversationMember *)self initWithHandle:v5];
  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_handle);
  handle = [(TUConversationMember *)self handle];
  [v3 appendFormat:@"%@=%@", v4, handle];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_nickname);
  nickname = [(TUConversationMember *)self nickname];
  [v3 appendFormat:@"%@=%@", v6, nickname];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isLightweightMember);
  [v3 appendFormat:@"%@=%d", v8, -[TUConversationMember isLightweightMember](self, "isLightweightMember")];

  if ([(TUConversationMember *)self isLightweightMember])
  {
    [v3 appendFormat:@", "];
    v9 = NSStringFromSelector(sel_isValidated);
    isValidated = [(TUConversationMember *)self isValidated];
    v11 = @"NO";
    if (isValidated)
    {
      v11 = @"YES";
    }

    [v3 appendFormat:@"%@=%@", v9, v11];
  }

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_lightweightPrimary);
  lightweightPrimary = [(TUConversationMember *)self lightweightPrimary];
  [v3 appendFormat:@"%@=%@", v12, lightweightPrimary];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
  [v3 appendFormat:@"%@=%llu", v14, -[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier")];

  [v3 appendFormat:@", "];
  v15 = NSStringFromSelector(sel_joinedFromLetMeIn);
  [v3 appendFormat:@"%@=%d", v15, -[TUConversationMember joinedFromLetMeIn](self, "joinedFromLetMeIn")];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  dateReceivedLetMeIn = [(TUConversationMember *)self dateReceivedLetMeIn];
  [v3 appendFormat:@"%@=%@", v16, dateReceivedLetMeIn];

  [v3 appendFormat:@", "];
  v18 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  dateInitiatedLetMeIn = [(TUConversationMember *)self dateInitiatedLetMeIn];
  [v3 appendFormat:@"%@=%@", v18, dateInitiatedLetMeIn];

  [v3 appendFormat:@", "];
  v20 = NSStringFromSelector(sel_isOtherInvitedHandle);
  [v3 appendFormat:@"%@=%d", v20, -[TUConversationMember isOtherInvitedHandle](self, "isOtherInvitedHandle")];

  [v3 appendFormat:@", "];
  v21 = NSStringFromSelector(sel_association);
  association = [(TUConversationMember *)self association];
  [v3 appendFormat:@"%@=%@", v21, association];

  [v3 appendFormat:@", "];
  v23 = NSStringFromSelector(sel_associationVoucher);
  associationVoucher = [(TUConversationMember *)self associationVoucher];
  [v3 appendFormat:@"%@=%@", v23, associationVoucher];

  stableDeviceIdentifier = [(TUConversationMember *)self stableDeviceIdentifier];

  if (stableDeviceIdentifier)
  {
    [v3 appendFormat:@", "];
    v26 = NSStringFromSelector(sel_stableDeviceIdentifier);
    stableDeviceIdentifier2 = [(TUConversationMember *)self stableDeviceIdentifier];
    [v3 appendFormat:@"%@=%@", v26, stableDeviceIdentifier2];
  }

  proposedParticipantCluster = [(TUConversationMember *)self proposedParticipantCluster];

  if (proposedParticipantCluster)
  {
    [v3 appendFormat:@", "];
    v29 = NSStringFromSelector(sel_proposedParticipantCluster);
    proposedParticipantCluster2 = [(TUConversationMember *)self proposedParticipantCluster];
    [v3 appendFormat:@"%@=%@", v29, proposedParticipantCluster2];
  }

  [v3 appendFormat:@">"];
  v31 = [v3 copy];

  return v31;
}

- (NSSet)handles
{
  v2 = MEMORY[0x1E695DFD8];
  handle = [(TUConversationMember *)self handle];
  v4 = [v2 setWithObject:handle];

  return v4;
}

- (NSString)idsFromID
{
  v12 = *MEMORY[0x1E69E9840];
  handle = [(TUConversationMember *)self handle];
  v4 = TUCopyIDSFromIDForHandle(handle);

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handle2 = [(TUConversationMember *)self handle];
      v10 = 138412290;
      v11 = handle2;
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
  handle = [(TUConversationMember *)self handle];
  v4 = TUCopyIDSCanonicalAddressForHandle(handle);

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      handle2 = [(TUConversationMember *)self handle];
      v10 = 138412290;
      v11 = handle2;
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
  idsDestination = [(TUConversationMember *)self idsDestination];
  v6[0] = idsDestination;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)representsSameMemberAs:(id)as
{
  asCopy = as;
  handle = [(TUConversationMember *)self handle];
  handle2 = [asCopy handle];

  LOBYTE(asCopy) = [handle isEqualToHandle:handle2];
  return asCopy;
}

- (BOOL)pseudonym
{
  handle = [(TUConversationMember *)self handle];
  value = [handle value];
  destinationIdIsPseudonym = [value destinationIdIsPseudonym];

  return destinationIdIsPseudonym;
}

- (void)setValidationSource:(int64_t)source
{
  if (source != 1 || self->_validationSource != 2)
  {
    self->_validationSource = source;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationMember *)self isEqualToMember:equalCopy];

  return v5;
}

- (BOOL)isEqualToMember:(id)member
{
  memberCopy = member;
  handle = [(TUConversationMember *)self handle];
  handle2 = [memberCopy handle];
  if ([handle isEqualToHandle:handle2])
  {
    lightweightPrimary = [(TUConversationMember *)self lightweightPrimary];
    lightweightPrimary2 = [memberCopy lightweightPrimary];
    if (TUObjectsAreEqualOrNil(lightweightPrimary, lightweightPrimary2) && (v9 = -[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier"), v9 == [memberCopy lightweightPrimaryParticipantIdentifier]) && (v10 = -[TUConversationMember isLightweightMember](self, "isLightweightMember"), v10 == objc_msgSend(memberCopy, "isLightweightMember")))
    {
      association = [(TUConversationMember *)self association];
      association2 = [memberCopy association];
      if (TUObjectsAreEqualOrNil(association, association2))
      {
        stableDeviceIdentifier = [(TUConversationMember *)self stableDeviceIdentifier];
        stableDeviceIdentifier2 = [memberCopy stableDeviceIdentifier];
        if (TUObjectsAreEqualOrNil(stableDeviceIdentifier, stableDeviceIdentifier2))
        {
          proposedParticipantCluster = [(TUConversationMember *)self proposedParticipantCluster];
          [memberCopy proposedParticipantCluster];
          v17 = v19 = stableDeviceIdentifier;
          v11 = TUObjectsAreEqualOrNil(proposedParticipantCluster, v17);

          stableDeviceIdentifier = v19;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handle = [(TUConversationMember *)self handle];
  nickname = [(TUConversationMember *)self nickname];
  v7 = [v4 initWithHandle:handle nickname:nickname joinedFromLetMeIn:{-[TUConversationMember joinedFromLetMeIn](self, "joinedFromLetMeIn")}];

  lightweightPrimary = [(TUConversationMember *)self lightweightPrimary];
  [v7 setLightweightPrimary:lightweightPrimary];

  [v7 setIsLightweightMember:{-[TUConversationMember isLightweightMember](self, "isLightweightMember")}];
  [v7 setIsOtherInvitedHandle:{-[TUConversationMember isOtherInvitedHandle](self, "isOtherInvitedHandle")}];
  dateReceivedLetMeIn = [(TUConversationMember *)self dateReceivedLetMeIn];
  [v7 setDateReceivedLetMeIn:dateReceivedLetMeIn];

  dateInitiatedLetMeIn = [(TUConversationMember *)self dateInitiatedLetMeIn];
  [v7 setDateInitiatedLetMeIn:dateInitiatedLetMeIn];

  [v7 setLightweightPrimaryParticipantIdentifier:{-[TUConversationMember lightweightPrimaryParticipantIdentifier](self, "lightweightPrimaryParticipantIdentifier")}];
  [v7 setValidationSource:{-[TUConversationMember validationSource](self, "validationSource")}];
  association = [(TUConversationMember *)self association];
  v12 = [association copy];
  [v7 setAssociation:v12];

  associationVoucher = [(TUConversationMember *)self associationVoucher];
  v14 = [associationVoucher copy];
  [v7 setAssociationVoucher:v14];

  stableDeviceIdentifier = [(TUConversationMember *)self stableDeviceIdentifier];
  v16 = [stableDeviceIdentifier copy];
  [v7 setStableDeviceIdentifier:v16];

  proposedParticipantCluster = [(TUConversationMember *)self proposedParticipantCluster];
  v18 = [proposedParticipantCluster copy];
  [v7 setProposedParticipantCluster:v18];

  return v7;
}

- (TUConversationMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_nickname);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_joinedFromLetMeIn);
  v12 = [coderCopy decodeBoolForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [(TUConversationMember *)self initWithHandle:v7 nickname:v10 joinedFromLetMeIn:v12];
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_lightweightPrimary);
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    lightweightPrimary = v19->_lightweightPrimary;
    v19->_lightweightPrimary = v22;

    v24 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
    v19->_lightweightPrimaryParticipantIdentifier = [coderCopy decodeInt64ForKey:v24];

    v25 = NSStringFromSelector(sel_isLightweightMember);
    v19->_isLightweightMember = [coderCopy decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isOtherInvitedHandle);
    v19->_isOtherInvitedHandle = [coderCopy decodeBoolForKey:v26];

    objc_storeStrong(&v19->_dateReceivedLetMeIn, v15);
    objc_storeStrong(&v19->_dateInitiatedLetMeIn, v18);
    v27 = NSStringFromSelector(sel_validationSource);
    v19->_validationSource = [coderCopy decodeIntegerForKey:v27];

    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_association);
    v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];
    association = v19->_association;
    v19->_association = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_associationVoucher);
    v34 = [coderCopy decodeObjectOfClass:v32 forKey:v33];
    associationVoucher = v19->_associationVoucher;
    v19->_associationVoucher = v34;

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_stableDeviceIdentifier);
    v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
    stableDeviceIdentifier = v19->_stableDeviceIdentifier;
    v19->_stableDeviceIdentifier = v38;

    v40 = objc_opt_class();
    v41 = NSStringFromSelector(sel_proposedParticipantCluster);
    v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];
    proposedParticipantCluster = v19->_proposedParticipantCluster;
    v19->_proposedParticipantCluster = v42;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(TUConversationMember *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  nickname = [(TUConversationMember *)self nickname];
  v8 = NSStringFromSelector(sel_nickname);
  [coderCopy encodeObject:nickname forKey:v8];

  lightweightPrimary = [(TUConversationMember *)self lightweightPrimary];
  v10 = NSStringFromSelector(sel_lightweightPrimary);
  [coderCopy encodeObject:lightweightPrimary forKey:v10];

  lightweightPrimaryParticipantIdentifier = [(TUConversationMember *)self lightweightPrimaryParticipantIdentifier];
  v12 = NSStringFromSelector(sel_lightweightPrimaryParticipantIdentifier);
  [coderCopy encodeInt64:lightweightPrimaryParticipantIdentifier forKey:v12];

  isLightweightMember = [(TUConversationMember *)self isLightweightMember];
  v14 = NSStringFromSelector(sel_isLightweightMember);
  [coderCopy encodeBool:isLightweightMember forKey:v14];

  joinedFromLetMeIn = [(TUConversationMember *)self joinedFromLetMeIn];
  v16 = NSStringFromSelector(sel_joinedFromLetMeIn);
  [coderCopy encodeBool:joinedFromLetMeIn forKey:v16];

  isOtherInvitedHandle = [(TUConversationMember *)self isOtherInvitedHandle];
  v18 = NSStringFromSelector(sel_isOtherInvitedHandle);
  [coderCopy encodeBool:isOtherInvitedHandle forKey:v18];

  dateReceivedLetMeIn = [(TUConversationMember *)self dateReceivedLetMeIn];
  v20 = NSStringFromSelector(sel_dateReceivedLetMeIn);
  [coderCopy encodeObject:dateReceivedLetMeIn forKey:v20];

  dateInitiatedLetMeIn = [(TUConversationMember *)self dateInitiatedLetMeIn];
  v22 = NSStringFromSelector(sel_dateInitiatedLetMeIn);
  [coderCopy encodeObject:dateInitiatedLetMeIn forKey:v22];

  validationSource = [(TUConversationMember *)self validationSource];
  v24 = NSStringFromSelector(sel_validationSource);
  [coderCopy encodeInteger:validationSource forKey:v24];

  association = [(TUConversationMember *)self association];
  v26 = NSStringFromSelector(sel_association);
  [coderCopy encodeObject:association forKey:v26];

  associationVoucher = [(TUConversationMember *)self associationVoucher];
  v28 = NSStringFromSelector(sel_associationVoucher);
  [coderCopy encodeObject:associationVoucher forKey:v28];

  stableDeviceIdentifier = [(TUConversationMember *)self stableDeviceIdentifier];
  v30 = NSStringFromSelector(sel_stableDeviceIdentifier);
  [coderCopy encodeObject:stableDeviceIdentifier forKey:v30];

  proposedParticipantCluster = [(TUConversationMember *)self proposedParticipantCluster];
  v31 = NSStringFromSelector(sel_proposedParticipantCluster);
  [coderCopy encodeObject:proposedParticipantCluster forKey:v31];
}

@end