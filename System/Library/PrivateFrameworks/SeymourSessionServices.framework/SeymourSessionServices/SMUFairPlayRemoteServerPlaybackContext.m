@interface SMUFairPlayRemoteServerPlaybackContext
- (SMUFairPlayRemoteServerPlaybackContext)initWithBlob:(id)a3 identifier:(unsigned int)a4;
@end

@implementation SMUFairPlayRemoteServerPlaybackContext

- (SMUFairPlayRemoteServerPlaybackContext)initWithBlob:(id)a3 identifier:(unsigned int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SMUFairPlayRemoteServerPlaybackContext;
  v7 = [(SMUFairPlayRemoteServerPlaybackContext *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    blob = v7->_blob;
    v7->_blob = v8;

    v7->_identifier = a4;
  }

  return v7;
}

@end