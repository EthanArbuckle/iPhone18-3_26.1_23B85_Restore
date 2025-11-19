@interface SESTLKShare
+ (id)withCKKSExternalShare:(id)a3;
+ (id)withView:(id)a3 tlkUUID:(id)a4 sourcePeerIdentifier:(id)a5 targetPeerIdentifier:(id)a6 shareData:(id)a7;
- (id)asCKKSExternalShare;
@end

@implementation SESTLKShare

+ (id)withView:(id)a3 tlkUUID:(id)a4 sourcePeerIdentifier:(id)a5 targetPeerIdentifier:(id)a6 shareData:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_new();
  v17 = v16[1];
  v16[1] = v11;
  v18 = v11;

  v19 = v16[2];
  v16[2] = v12;
  v20 = v12;

  v21 = v16[3];
  v16[3] = v13;
  v22 = v13;

  v23 = v16[4];
  v16[4] = v14;
  v24 = v14;

  v25 = v16[5];
  v16[5] = v15;

  return v16;
}

+ (id)withCKKSExternalShare:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 tlkUUID];
  v5 = [SESTLKRecord _uuidFromStringPermissive:v4];
  v6 = [v5 ses_toData];

  if (v6)
  {
    v7 = [v3 view];
    v8 = [v3 senderPeerID];
    v9 = [v3 receiverPeerID];
    v10 = [v3 wrappedTLK];
    v11 = [SESTLKShare withView:v7 tlkUUID:v6 sourcePeerIdentifier:v8 targetPeerIdentifier:v9 shareData:v10];
  }

  else
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v3 tlkUUID];
      v14 = [v3 wrappedTLK];
      v15 = [v14 base64];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
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
  v6 = [v5 UUIDString];
  sourcePeerIdentifier = self->_sourcePeerIdentifier;
  targetPeerIdentifier = self->_targetPeerIdentifier;
  shareData = self->_shareData;
  v10 = [MEMORY[0x1E695DEF0] data];
  v11 = [v3 initWithView:view tlkUUID:v6 receiverPeerID:targetPeerIdentifier senderPeerID:sourcePeerIdentifier wrappedTLK:shareData signature:v10];

  return v11;
}

@end