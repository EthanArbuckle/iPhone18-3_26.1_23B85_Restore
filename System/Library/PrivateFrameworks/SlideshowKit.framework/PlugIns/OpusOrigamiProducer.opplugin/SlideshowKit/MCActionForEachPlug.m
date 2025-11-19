@interface MCActionForEachPlug
+ (id)forEachPlugActionForTargetPlugObjectID:(id)a3 withAction:(id)a4 andPrefix:(id)a5;
- (MCActionForEachPlug)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCActionForEachPlug

+ (id)forEachPlugActionForTargetPlugObjectID:(id)a3 withAction:(id)a4 andPrefix:(id)a5
{
  v8 = objc_alloc_init(MCActionForEachPlug);
  [(MCAction *)v8 setTargetObjectID:a3];
  [(MCActionForEachPlug *)v8 setAction:a4];
  [(MCActionForEachPlug *)v8 setPrefix:a5];

  return v8;
}

- (MCActionForEachPlug)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCActionForEachPlug;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_action = +[MCObjectLight objectWithImprint:](MCObjectLight, "objectWithImprint:", [a3 objectForKey:@"action"]);
    v4->_prefix = [a3 objectForKey:@"prefix"];
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
  v3 = [(MCAction *)&v7 imprint];
  action = self->_action;
  if (action)
  {
    [v3 setObject:-[MCAction imprint](action forKey:{"imprint"), @"action"}];
  }

  prefix = self->_prefix;
  if (prefix)
  {
    [v3 setObject:prefix forKey:@"prefix"];
  }

  return v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCActionForEachPlug;
  [(MCAction *)&v7 _copySelfToSnapshot:?];
  action = self->_action;
  if (action)
  {
    *(a3 + 3) = [(MCAction *)action snapshot];
  }

  prefix = self->_prefix;
  if (prefix)
  {
    *(a3 + 4) = [(NSString *)prefix copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCActionForEachPlug;
  return [-[MCAction description](&v3 "description")];
}

@end