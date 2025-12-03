@interface SRSTSharedState
+ (SRSTSharedState)passive;
+ (SRSTSharedState)preparingToServe;
+ (SRSTSharedState)serving;
+ (SRSTSharedState)unshared;
- (SRSTSharedState)init;
- (SRSTSharedState)initWithUnderlyingObject:(id)object;
- (id)makeProxy;
- (unint64_t)hash;
@end

@implementation SRSTSharedState

+ (SRSTSharedState)preparingToServe
{
  v2 = [SRSTSharedState alloc];
  v3 = +[_SRSTSharedState preparingToServe];
  v4 = [(SRSTSharedState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTSharedState)serving
{
  v2 = [SRSTSharedState alloc];
  v3 = +[_SRSTSharedState serving];
  v4 = [(SRSTSharedState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

- (SRSTSharedState)init
{
  v6.receiver = self;
  v6.super_class = SRSTSharedState;
  v2 = [(SRSTSharedState *)&v6 init];
  v3 = objc_opt_new();
  underlyingObject = v2->_underlyingObject;
  v2->_underlyingObject = v3;

  return v2;
}

- (unint64_t)hash
{
  name = [(_SRSTSharedState *)self->_underlyingObject name];
  v3 = [name hash];

  return v3;
}

- (id)makeProxy
{
  v2 = [[SRSTSharedStateProxy alloc] initWithState:self];

  return v2;
}

- (SRSTSharedState)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = SRSTSharedState;
  v5 = [(SRSTSharedState *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = objectCopy;

  return v5;
}

+ (SRSTSharedState)unshared
{
  v2 = [SRSTSharedState alloc];
  v3 = +[_SRSTSharedState unshared];
  v4 = [(SRSTSharedState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

+ (SRSTSharedState)passive
{
  v2 = [SRSTSharedState alloc];
  v3 = +[_SRSTSharedState passive];
  v4 = [(SRSTSharedState *)v2 initWithUnderlyingObject:v3];

  return v4;
}

@end