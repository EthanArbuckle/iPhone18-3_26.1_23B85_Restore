@interface TUScreenSharingRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TUScreenSharingRequest)initWithCoder:(id)coder;
- (TUScreenSharingRequest)initWithHandle:(id)handle type:(int64_t)type originType:(int64_t)originType UUID:(id)d participantIdentifier:(unint64_t)identifier shouldSendLegacyInvite:(BOOL)invite metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUScreenSharingRequest

- (TUScreenSharingRequest)initWithHandle:(id)handle type:(int64_t)type originType:(int64_t)originType UUID:(id)d participantIdentifier:(unint64_t)identifier shouldSendLegacyInvite:(BOOL)invite metadata:(id)metadata
{
  handleCopy = handle;
  dCopy = d;
  metadataCopy = metadata;
  v22.receiver = self;
  v22.super_class = TUScreenSharingRequest;
  v18 = [(TUScreenSharingRequest *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handle, handle);
    v19->_type = type;
    v19->_originType = originType;
    objc_storeStrong(&v19->_UUID, d);
    v19->_participantIdentifier = identifier;
    v19->_shouldSendLegacyInvite = invite;
    objc_storeStrong(&v19->_metadata, metadata);
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUScreenSharingRequest *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  handle = [(TUScreenSharingRequest *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

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
  metadata = [(TUScreenSharingRequest *)self metadata];

  if (metadata)
  {
    metadata2 = [(TUScreenSharingRequest *)self metadata];
    [v3 appendFormat:@" metadata=%@", metadata2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handle = [(TUScreenSharingRequest *)self handle];
  type = [(TUScreenSharingRequest *)self type];
  originType = [(TUScreenSharingRequest *)self originType];
  uUID = [(TUScreenSharingRequest *)self UUID];
  participantIdentifier = [(TUScreenSharingRequest *)self participantIdentifier];
  shouldSendLegacyInvite = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  metadata = [(TUScreenSharingRequest *)self metadata];
  v12 = [v4 initWithHandle:handle type:type originType:originType UUID:uUID participantIdentifier:participantIdentifier shouldSendLegacyInvite:shouldSendLegacyInvite metadata:metadata];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(TUScreenSharingRequest *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  type = [(TUScreenSharingRequest *)self type];
  v8 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v8];

  originType = [(TUScreenSharingRequest *)self originType];
  v10 = NSStringFromSelector(sel_originType);
  [coderCopy encodeInteger:originType forKey:v10];

  uUID = [(TUScreenSharingRequest *)self UUID];
  v12 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v12];

  participantIdentifier = [(TUScreenSharingRequest *)self participantIdentifier];
  v14 = NSStringFromSelector(sel_participantIdentifier);
  [coderCopy encodeInteger:participantIdentifier forKey:v14];

  shouldSendLegacyInvite = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  v16 = NSStringFromSelector(sel_shouldSendLegacyInvite);
  [coderCopy encodeBool:shouldSendLegacyInvite forKey:v16];

  metadata = [(TUScreenSharingRequest *)self metadata];
  v17 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v17];
}

- (TUScreenSharingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TUScreenSharingRequest;
  v5 = [(TUScreenSharingRequest *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handle);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v10];

    v11 = NSStringFromSelector(sel_originType);
    v5->_originType = [coderCopy decodeIntegerForKey:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_UUID);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    UUID = v5->_UUID;
    v5->_UUID = v14;

    v16 = NSStringFromSelector(sel_participantIdentifier);
    v5->_participantIdentifier = [coderCopy decodeIntegerForKey:v16];

    v17 = NSStringFromSelector(sel_shouldSendLegacyInvite);
    v5->_shouldSendLegacyInvite = [coderCopy decodeBoolForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_metadata);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    metadata = v5->_metadata;
    v5->_metadata = v20;
  }

  return v5;
}

- (unint64_t)hash
{
  handle = [(TUScreenSharingRequest *)self handle];
  v4 = [handle hash];
  type = [(TUScreenSharingRequest *)self type];
  v6 = type ^ [(TUScreenSharingRequest *)self originType]^ v4;
  uUID = [(TUScreenSharingRequest *)self UUID];
  v8 = [uUID hash];
  v9 = v6 ^ v8 ^ [(TUScreenSharingRequest *)self participantIdentifier];
  shouldSendLegacyInvite = [(TUScreenSharingRequest *)self shouldSendLegacyInvite];
  metadata = [(TUScreenSharingRequest *)self metadata];
  v12 = shouldSendLegacyInvite ^ [metadata hash];

  return v9 ^ v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUScreenSharingRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  handle = [(TUScreenSharingRequest *)self handle];
  handle2 = [requestCopy handle];
  if ([handle isEqualToHandle:handle2] && (v7 = -[TUScreenSharingRequest type](self, "type"), v7 == objc_msgSend(requestCopy, "type")) && (v8 = -[TUScreenSharingRequest originType](self, "originType"), v8 == objc_msgSend(requestCopy, "originType")))
  {
    uUID = [(TUScreenSharingRequest *)self UUID];
    uUID2 = [requestCopy UUID];
    if ([uUID isEqual:uUID2] && (v11 = -[TUScreenSharingRequest participantIdentifier](self, "participantIdentifier"), v11 == objc_msgSend(requestCopy, "participantIdentifier")) && (v12 = -[TUScreenSharingRequest shouldSendLegacyInvite](self, "shouldSendLegacyInvite"), v12 == objc_msgSend(requestCopy, "shouldSendLegacyInvite")))
    {
      metadata = [(TUScreenSharingRequest *)self metadata];
      metadata2 = [requestCopy metadata];
      v13 = TUObjectsAreEqualOrNil(metadata, metadata2);
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