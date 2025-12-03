@interface SESTLKShare
+ (id)withCKKSExternalShare:(id)share;
+ (id)withView:(id)view tlkUUID:(id)d sourcePeerIdentifier:(id)identifier targetPeerIdentifier:(id)peerIdentifier shareData:(id)data;
- (id)asCKKSExternalShare;
@end

@implementation SESTLKShare

+ (id)withView:(id)view tlkUUID:(id)d sourcePeerIdentifier:(id)identifier targetPeerIdentifier:(id)peerIdentifier shareData:(id)data
{
  viewCopy = view;
  dCopy = d;
  identifierCopy = identifier;
  peerIdentifierCopy = peerIdentifier;
  dataCopy = data;
  v16 = objc_opt_new();
  v17 = v16[1];
  v16[1] = viewCopy;
  v18 = viewCopy;

  v19 = v16[2];
  v16[2] = dCopy;
  v20 = dCopy;

  v21 = v16[3];
  v16[3] = identifierCopy;
  v22 = identifierCopy;

  v23 = v16[4];
  v16[4] = peerIdentifierCopy;
  v24 = peerIdentifierCopy;

  v25 = v16[5];
  v16[5] = dataCopy;

  return v16;
}

+ (id)withCKKSExternalShare:(id)share
{
  v22 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  tlkUUID = [shareCopy tlkUUID];
  v5 = [SESTLKRecord _uuidFromStringPermissive:tlkUUID];
  ses_toData = [v5 ses_toData];

  if (ses_toData)
  {
    view = [shareCopy view];
    senderPeerID = [shareCopy senderPeerID];
    receiverPeerID = [shareCopy receiverPeerID];
    wrappedTLK = [shareCopy wrappedTLK];
    v11 = [SESTLKShare withView:view tlkUUID:ses_toData sourcePeerIdentifier:senderPeerID targetPeerIdentifier:receiverPeerID shareData:wrappedTLK];
  }

  else
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      tlkUUID2 = [shareCopy tlkUUID];
      wrappedTLK2 = [shareCopy wrappedTLK];
      base64 = [wrappedTLK2 base64];
      v18 = 138412546;
      v19 = tlkUUID2;
      v20 = 2112;
      v21 = base64;
      _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "Share without a TLK String %@ - %@", &v18, 0x16u);
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)asCKKSExternalShare
{
  v3 = objc_alloc(MEMORY[0x1E697AA38]);
  view = self->_view;
  v5 = [MEMORY[0x1E696AFB0] ses_withData:self->_tlkUUID];
  uUIDString = [v5 UUIDString];
  sourcePeerIdentifier = self->_sourcePeerIdentifier;
  targetPeerIdentifier = self->_targetPeerIdentifier;
  shareData = self->_shareData;
  data = [MEMORY[0x1E695DEF0] data];
  v11 = [v3 initWithView:view tlkUUID:uUIDString receiverPeerID:targetPeerIdentifier senderPeerID:sourcePeerIdentifier wrappedTLK:shareData signature:data];

  return v11;
}

@end