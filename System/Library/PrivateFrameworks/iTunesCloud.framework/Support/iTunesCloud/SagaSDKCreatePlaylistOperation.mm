@interface SagaSDKCreatePlaylistOperation
- (SagaSDKCreatePlaylistOperation)initWithCoder:(id)a3;
- (SagaSDKCreatePlaylistOperation)initWithConfiguration:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6 requestingBundleID:(id)a7 clientIdentity:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SagaSDKCreatePlaylistOperation

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSDKCreatePlaylistOperation;
  v4 = a3;
  [(SagaCreatePlaylistOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_requestingBundleID forKey:{@"SagaSDKCreatePlaylistOperationRequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKCreatePlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SagaSDKCreatePlaylistOperation;
  v5 = [(SagaCreatePlaylistOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaSDKCreatePlaylistOperationRequestingBundleKey"];
    requestingBundleID = v5->_requestingBundleID;
    v5->_requestingBundleID = v6;
  }

  return v5;
}

- (SagaSDKCreatePlaylistOperation)initWithConfiguration:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6 requestingBundleID:(id)a7 clientIdentity:(id)a8
{
  v14 = a7;
  v19.receiver = self;
  v19.super_class = SagaSDKCreatePlaylistOperation;
  v15 = [(SagaCreatePlaylistOperation *)&v19 initWithConfiguration:a3 playlistPersistentID:a4 properties:a5 trackList:a6 clientIdentity:a8];
  if (v15)
  {
    v16 = [v14 copy];
    requestingBundleID = v15->_requestingBundleID;
    v15->_requestingBundleID = v16;
  }

  return v15;
}

@end