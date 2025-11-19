@interface MCStateOperation
+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4;
- (MCStateOperation)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
- (void)setAlwaysNotifies:(BOOL)a3;
- (void)setRecordsTime:(BOOL)a3;
@end

@implementation MCStateOperation

+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setTargetObjectID:a3];
  [v6 setStateKey:a4];

  return v6;
}

- (MCStateOperation)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCStateOperation;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_stateKey = [a3 objectForKey:@"stateKey"];
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
  v3 = [(MCAction *)&v7 imprint];
  v4 = v3;
  stateKey = self->_stateKey;
  if (stateKey)
  {
    [v3 setObject:stateKey forKey:@"stateKey"];
  }

  return v4;
}

- (void)setAlwaysNotifies:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFFFFFD | v3;
}

- (void)setRecordsTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFFFFFB | v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCStateOperation;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  stateKey = self->_stateKey;
  if (stateKey)
  {
    *(a3 + 3) = [(NSString *)stateKey copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperation;
  return [-[MCAction description](&v3 "description")];
}

@end