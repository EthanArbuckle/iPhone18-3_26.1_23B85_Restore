@interface SMUFairPlayRemoteServerPlaybackContext
- (SMUFairPlayRemoteServerPlaybackContext)initWithBlob:(id)blob identifier:(unsigned int)identifier;
@end

@implementation SMUFairPlayRemoteServerPlaybackContext

- (SMUFairPlayRemoteServerPlaybackContext)initWithBlob:(id)blob identifier:(unsigned int)identifier
{
  blobCopy = blob;
  v11.receiver = self;
  v11.super_class = SMUFairPlayRemoteServerPlaybackContext;
  v7 = [(SMUFairPlayRemoteServerPlaybackContext *)&v11 init];
  if (v7)
  {
    v8 = [blobCopy copy];
    blob = v7->_blob;
    v7->_blob = v8;

    v7->_identifier = identifier;
  }

  return v7;
}

@end