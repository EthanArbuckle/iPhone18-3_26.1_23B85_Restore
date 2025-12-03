@interface SRSTState
+ (SRSTState)analyzing;
+ (SRSTState)available;
+ (SRSTState)disabled;
+ (SRSTState)postResponse;
+ (SRSTState)processing;
+ (SRSTState)responding;
+ (SRSTState)resting;
+ (SRSTState)understanding;
- (SRSTState)init;
- (SRSTState)initWithUnderlyingObject:(id)object;
- (id)makeProxy;
- (unint64_t)hash;
@end

@implementation SRSTState

+ (SRSTState)analyzing
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState analyzing];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)resting
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState resting];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)available
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState available];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

- (SRSTState)init
{
  v6.receiver = self;
  v6.super_class = SRSTState;
  v2 = [(SRSTState *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (unint64_t)hash
{
  name = [(_SRSTState *)self->_underlyingObject name];
  v3 = [name hash];

  return v3;
}

- (id)makeProxy
{
  v2 = [[SRSTStateProxy alloc] initWithState:self];

  return v2;
}

- (SRSTState)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = SRSTState;
  v5 = [(SRSTState *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = objectCopy;

  return v5;
}

+ (SRSTState)postResponse
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState postResponse];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)understanding
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState understanding];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)responding
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState responding];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)disabled
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState disabled];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTState)processing
{
  v2 = [SRSTState alloc];
  v3 = +[_SRSTState processing];
  v4 = [(SRSTState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

@end