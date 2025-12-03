@interface BKCAContextDestination
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)appendSuccinctDescriptionToFormatter:(id)formatter;
@end

@implementation BKCAContextDestination

- (unint64_t)hash
{
  v2 = [NSNumber numberWithUnsignedInt:self->_contextID];
  v3 = [v2 hash];

  return v3;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034F08;
  v4[3] = &unk_1000FD128;
  selfCopy = self;
  formatterCopy = formatter;
  v3 = formatterCopy;
  [v3 appendProem:selfCopy block:v4];
}

- (void)appendSuccinctDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:self->_contextID withName:@"contextID" format:1];
  v5 = [formatterCopy appendUInt64:self->_clientPort withName:@"clientPort" format:1];
  v6 = [formatterCopy appendObject:self->_inheritedSceneHostSettings withName:@"inheritedSceneHostSettings" skipIfNil:1];
}

- (id)succinctDescription
{
  v3 = objc_alloc_init(BSDescriptionStream);
  [(BKCAContextDestination *)self appendSuccinctDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && self->_contextID == v8[2] && self->_clientPort == v8[3];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_contextID;
  *(v4 + 3) = self->_clientPort;
  objc_storeStrong(v4 + 2, self->_inheritedSceneHostSettings);
  return v4;
}

@end