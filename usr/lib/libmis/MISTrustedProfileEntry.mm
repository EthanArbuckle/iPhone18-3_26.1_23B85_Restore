@interface MISTrustedProfileEntry
- (BOOL)isEqual:(id)equal;
- (MISTrustedProfileEntry)initWithUUID:(id)d trustedTeamIDEntry:(id)entry;
- (id)redactedDescription;
- (unint64_t)hash;
@end

@implementation MISTrustedProfileEntry

- (unint64_t)hash
{
  v4 = objc_msgSend_uuid(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_trustedTeamIDEntry(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v8 = objc_msgSend_uuid(self, v6, v7);
    v11 = objc_msgSend_uuid(v5, v9, v10);
    if (objc_msgSend_isEqual_(v8, v12, v11))
    {
      v15 = objc_msgSend_trustedTeamIDEntry(self, v13, v14);
      v18 = objc_msgSend_trustedTeamIDEntry(v5, v16, v17);
      isEqual = objc_msgSend_isEqual_(v15, v19, v18);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)redactedDescription
{
  v4 = MEMORY[0x1E696AEC0];
  uuid = self->_uuid;
  v6 = objc_msgSend_teamID(self->_trustedTeamIDEntry, a2, v2);
  v9 = objc_msgSend_signature(self->_trustedTeamIDEntry, v7, v8);
  v11 = objc_msgSend_stringWithFormat_(v4, v10, @"MISTrustedProfileEntry(%@, %@, %@)", uuid, v6, v9);

  return v11;
}

- (MISTrustedProfileEntry)initWithUUID:(id)d trustedTeamIDEntry:(id)entry
{
  dCopy = d;
  entryCopy = entry;
  v12.receiver = self;
  v12.super_class = MISTrustedProfileEntry;
  v9 = [(MISTrustedProfileEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_trustedTeamIDEntry, entry);
  }

  return v10;
}

@end