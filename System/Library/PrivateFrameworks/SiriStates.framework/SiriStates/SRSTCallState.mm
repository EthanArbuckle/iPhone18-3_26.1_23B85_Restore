@interface SRSTCallState
+ (SRSTCallState)micMutedCall;
+ (SRSTCallState)noCall;
+ (SRSTCallState)onHoldCall;
+ (SRSTCallState)ongoingCall;
- (SRSTCallState)init;
- (SRSTCallState)initWithUnderlyingObject:(id)object;
- (id)makeProxy;
- (unint64_t)hash;
@end

@implementation SRSTCallState

+ (SRSTCallState)noCall
{
  v2 = [SRSTCallState alloc];
  v3 = +[_SRSTCallState noCall];
  v4 = [(SRSTCallState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTCallState)micMutedCall
{
  v2 = [SRSTCallState alloc];
  v3 = +[_SRSTCallState micMutedCall];
  v4 = [(SRSTCallState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

- (SRSTCallState)init
{
  v6.receiver = self;
  v6.super_class = SRSTCallState;
  v2 = [(SRSTCallState *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (unint64_t)hash
{
  name = [(_SRSTCallState *)self->_underlyingObject name];
  v3 = [name hash];

  return v3;
}

- (id)makeProxy
{
  v2 = [[SRSTCallStateProxy alloc] initWithState:self];

  return v2;
}

- (SRSTCallState)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = SRSTCallState;
  v5 = [(SRSTCallState *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = objectCopy;

  return v5;
}

+ (SRSTCallState)onHoldCall
{
  v2 = [SRSTCallState alloc];
  v3 = +[_SRSTCallState onHoldCall];
  v4 = [(SRSTCallState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTCallState)ongoingCall
{
  v2 = [SRSTCallState alloc];
  v3 = +[_SRSTCallState ongoingCall];
  v4 = [(SRSTCallState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

@end