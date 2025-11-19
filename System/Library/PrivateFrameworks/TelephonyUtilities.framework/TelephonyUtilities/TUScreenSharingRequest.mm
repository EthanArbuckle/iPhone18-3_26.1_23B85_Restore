@interface TUScreenSharingRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TUScreenSharingRequest)initWithCoder:(id)a3;
- (TUScreenSharingRequest)initWithHandle:(id)a3 type:(int64_t)a4 originType:(int64_t)a5 UUID:(id)a6 participantIdentifier:(unint64_t)a7 shouldSendLegacyInvite:(BOOL)a8 metadata:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUScreenSharingRequest

- (TUScreenSharingRequest)initWithHandle:(id)a3 type:(int64_t)a4 originType:(int64_t)a5 UUID:(id)a6 participantIdentifier:(unint64_t)a7 shouldSendLegacyInvite:(BOOL)a8 metadata:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = TUScreenSharingRequest;
  v18 = [(TUScreenSharingRequest *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handle, a3);
    v19->_type = a4;
    v19->_originType = a5;
    objc_storeStrong(&v19->_UUID, a6);
    v19->_participantIdentifier = a7;
    v19->_shouldSendLegacyInvite = a8;
    objc_storeStrong(&v19->_metadata, a9);
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUScreenSharingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUScreenSharingRequest *)self handle];
  [v3 appendFormat:@" handle=%@", v5];

  [v3 appendFormat:@" type=%lu", -[TUScreenSharingRequest type](self, "type")];
  [v3 appendFormat:@" originType=%lu", -[TUScreenSharingRequest originType](self, "originType")];
  if ([(TUScreenSharingRequest *)self isLocallyOriginated])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@" locallyOriginated=%@", v6];
  [v3 appendFormat:@" participantIdentifier=%llu", -[TUScreenSharingRequest participantIdentifier](self, "participantIdentifier")];
  if ([(TUScreenSharingRequest *)self shouldSendLegacyInvite])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@" shouldSendLegacyInvite=%@", v7];
  v8 = [(TUScreenSharingRequest *)self metadata];

  if (v8)
  {
    v9 = [(TUScreenSharingRequest *)self metadata];
    [v3 appendFormat:@" metadata=%@", v9];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUScreenSharingRequest *)self handle];
  v6 = [(TUScreenSharingRequest *)self type];
  v7 = [(TUScreenSharingRequest *)self originType];
  v8 = [(TUScreenSharingRequest *)self UUID];
  v9 = [(TUScreenSharingRequest *)self participantIdentifier];
  v10 = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  v11 = [(TUScreenSharingRequest *)self metadata];
  v12 = [v4 initWithHandle:v5 type:v6 originType:v7 UUID:v8 participantIdentifier:v9 shouldSendLegacyInvite:v10 metadata:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenSharingRequest *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUScreenSharingRequest *)self type];
  v8 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(TUScreenSharingRequest *)self originType];
  v10 = NSStringFromSelector(sel_originType);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(TUScreenSharingRequest *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUScreenSharingRequest *)self participantIdentifier];
  v14 = NSStringFromSelector(sel_participantIdentifier);
  [v4 encodeInteger:v13 forKey:v14];

  v15 = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  v16 = NSStringFromSelector(sel_shouldSendLegacyInvite);
  [v4 encodeBool:v15 forKey:v16];

  v18 = [(TUScreenSharingRequest *)self metadata];
  v17 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v18 forKey:v17];
}

- (TUScreenSharingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TUScreenSharingRequest;
  v5 = [(TUScreenSharingRequest *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v10];

    v11 = NSStringFromSelector(sel_originType);
    v5->_originType = [v4 decodeIntegerForKey:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_UUID);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    UUID = v5->_UUID;
    v5->_UUID = v14;

    v16 = NSStringFromSelector(sel_participantIdentifier);
    v5->_participantIdentifier = [v4 decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_shouldSendLegacyInvite);
    v5->_shouldSendLegacyInvite = [v4 decodeBoolForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_metadata);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    metadata = v5->_metadata;
    v5->_metadata = v20;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUScreenSharingRequest *)self handle];
  v4 = [v3 hash];
  v5 = [(TUScreenSharingRequest *)self type];
  v6 = v5 ^ [(TUScreenSharingRequest *)self originType]^ v4;
  v7 = [(TUScreenSharingRequest *)self UUID];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(TUScreenSharingRequest *)self participantIdentifier];
  v10 = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  v11 = [(TUScreenSharingRequest *)self metadata];
  v12 = v10 ^ [v11 hash];

  return v9 ^ v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUScreenSharingRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenSharingRequest *)self handle];
  v6 = [v4 handle];
  if ([v5 isEqualToHandle:v6] && (v7 = -[TUScreenSharingRequest type](self, "type"), v7 == objc_msgSend(v4, "type")) && (v8 = -[TUScreenSharingRequest originType](self, "originType"), v8 == objc_msgSend(v4, "originType")))
  {
    v9 = [(TUScreenSharingRequest *)self UUID];
    v10 = [v4 UUID];
    if ([v9 isEqual:v10] && (v11 = -[TUScreenSharingRequest participantIdentifier](self, "participantIdentifier"), v11 == objc_msgSend(v4, "participantIdentifier")) && (v12 = -[TUScreenSharingRequest shouldSendLegacyInvite](self, "shouldSendLegacyInvite"), v12 == objc_msgSend(v4, "shouldSendLegacyInvite")))
    {
      v15 = [(TUScreenSharingRequest *)self metadata];
      v16 = [v4 metadata];
      v13 = TUObjectsAreEqualOrNil(v15, v16);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end