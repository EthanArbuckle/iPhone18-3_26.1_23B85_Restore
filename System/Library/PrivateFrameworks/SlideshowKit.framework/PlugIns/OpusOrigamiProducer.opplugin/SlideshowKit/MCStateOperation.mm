@interface MCStateOperation
+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key;
- (MCStateOperation)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
- (void)setAlwaysNotifies:(BOOL)notifies;
- (void)setRecordsTime:(BOOL)time;
@end

@implementation MCStateOperation

+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key
{
  v6 = objc_alloc_init(self);
  [v6 setTargetObjectID:d];
  [v6 setStateKey:key];

  return v6;
}

- (MCStateOperation)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCStateOperation;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_stateKey = [imprint objectForKey:@"stateKey"];
  }

  return v4;
}

- (void)demolish
{
  self->_stateKey = 0;
  v3.receiver = self;
  v3.super_class = MCStateOperation;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCStateOperation;
  imprint = [(MCAction *)&v7 imprint];
  v4 = imprint;
  stateKey = self->_stateKey;
  if (stateKey)
  {
    [imprint setObject:stateKey forKey:@"stateKey"];
  }

  return v4;
}

- (void)setAlwaysNotifies:(BOOL)notifies
{
  if (notifies)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFFFFFD | v3;
}

- (void)setRecordsTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFFFFFB | v3;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCStateOperation;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  stateKey = self->_stateKey;
  if (stateKey)
  {
    *(snapshot + 3) = [(NSString *)stateKey copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperation;
  return [-[MCAction description](&v3 "description")];
}

@end