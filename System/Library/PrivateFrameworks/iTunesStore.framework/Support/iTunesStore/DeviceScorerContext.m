@interface DeviceScorerContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DeviceScorerContext

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(DeviceScorerContext);
  v6 = [(NSData *)self->_challengeResponse copyWithZone:a3];
  challengeResponse = v5->_challengeResponse;
  v5->_challengeResponse = v6;

  v8 = [(NSData *)self->_hostChallenge copyWithZone:a3];
  hostChallenge = v5->_hostChallenge;
  v5->_hostChallenge = v8;

  v10 = [(NSString *)self->_secureElementID copyWithZone:a3];
  secureElementID = v5->_secureElementID;
  v5->_secureElementID = v10;

  v5->_serverEndpoint = self->_serverEndpoint;
  return v5;
}

@end