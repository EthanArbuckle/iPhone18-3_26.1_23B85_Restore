@interface MCActionForEachPlug
+ (id)forEachPlugActionForTargetPlugObjectID:(id)d withAction:(id)action andPrefix:(id)prefix;
- (MCActionForEachPlug)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCActionForEachPlug

+ (id)forEachPlugActionForTargetPlugObjectID:(id)d withAction:(id)action andPrefix:(id)prefix
{
  v8 = objc_alloc_init(MCActionForEachPlug);
  [(MCAction *)v8 setTargetObjectID:d];
  [(MCActionForEachPlug *)v8 setAction:action];
  [(MCActionForEachPlug *)v8 setPrefix:prefix];

  return v8;
}

- (MCActionForEachPlug)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCActionForEachPlug;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_action = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [imprint objectForKey:@"action"]);
    v4->_prefix = [imprint objectForKey:@"prefix"];
  }

  return v4;
}

- (void)demolish
{
  self->_action = 0;

  self->_prefix = 0;
  v3.receiver = self;
  v3.super_class = MCActionForEachPlug;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCActionForEachPlug;
  imprint = [(MCAction *)&v7 imprint];
  action = self->_action;
  if (action)
  {
    [imprint setObject:-[MCAction imprint](action forKey:{"imprint"), @"action"}];
  }

  prefix = self->_prefix;
  if (prefix)
  {
    [imprint setObject:prefix forKey:@"prefix"];
  }

  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v7.receiver = self;
  v7.super_class = MCActionForEachPlug;
  [(MCAction *)&v7 _copySelfToSnapshot:?];
  action = self->_action;
  if (action)
  {
    *(snapshot + 3) = [(MCAction *)action snapshot];
  }

  prefix = self->_prefix;
  if (prefix)
  {
    *(snapshot + 4) = [(NSString *)prefix copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCActionForEachPlug;
  return [-[MCAction description](&v3 "description")];
}

@end