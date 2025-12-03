@interface MCStateOperationStringSet
+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andString:(id)string;
- (MCStateOperationStringSet)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCStateOperationStringSet

+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andString:(id)string
{
  v6 = [MCStateOperationStringSet stateOperationForTargetPlugObjectID:d withStateKey:key];
  v6[4] = [string copy];
  return v6;
}

- (MCStateOperationStringSet)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCStateOperationStringSet;
  v4 = [(MCStateOperation *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_string = [imprint objectForKey:@"string"];
  }

  return v4;
}

- (void)demolish
{
  self->_string = 0;
  v3.receiver = self;
  v3.super_class = MCStateOperationStringSet;
  [(MCStateOperation *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCStateOperationStringSet;
  imprint = [(MCStateOperation *)&v7 imprint];
  v4 = imprint;
  string = self->_string;
  if (string)
  {
    [imprint setObject:string forKey:@"string"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCStateOperationStringSet;
  [(MCStateOperation *)&v6 _copySelfToSnapshot:?];
  string = self->_string;
  if (string)
  {
    *(snapshot + 4) = [(NSString *)string copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperationStringSet;
  return [-[MCStateOperation description](&v3 "description")];
}

@end