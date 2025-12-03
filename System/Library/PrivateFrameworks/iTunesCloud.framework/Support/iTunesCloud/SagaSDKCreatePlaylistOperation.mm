@interface SagaSDKCreatePlaylistOperation
- (SagaSDKCreatePlaylistOperation)initWithCoder:(id)coder;
- (SagaSDKCreatePlaylistOperation)initWithConfiguration:(id)configuration playlistPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SagaSDKCreatePlaylistOperation

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaSDKCreatePlaylistOperation;
  coderCopy = coder;
  [(SagaCreatePlaylistOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestingBundleID forKey:{@"SagaSDKCreatePlaylistOperationRequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKCreatePlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SagaSDKCreatePlaylistOperation;
  v5 = [(SagaCreatePlaylistOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaSDKCreatePlaylistOperationRequestingBundleKey"];
    requestingBundleID = v5->_requestingBundleID;
    v5->_requestingBundleID = v6;
  }

  return v5;
}

- (SagaSDKCreatePlaylistOperation)initWithConfiguration:(id)configuration playlistPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity
{
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = SagaSDKCreatePlaylistOperation;
  v15 = [(SagaCreatePlaylistOperation *)&v19 initWithConfiguration:configuration playlistPersistentID:d properties:properties trackList:list clientIdentity:identity];
  if (v15)
  {
    v16 = [iDCopy copy];
    requestingBundleID = v15->_requestingBundleID;
    v15->_requestingBundleID = v16;
  }

  return v15;
}

@end