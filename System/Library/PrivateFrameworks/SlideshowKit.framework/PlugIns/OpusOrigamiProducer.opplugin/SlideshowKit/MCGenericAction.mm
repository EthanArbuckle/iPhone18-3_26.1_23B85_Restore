@interface MCGenericAction
+ (id)genericActionForTargetPlugObjectID:(id)d withAttributes:(id)attributes;
- (MCGenericAction)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCGenericAction

+ (id)genericActionForTargetPlugObjectID:(id)d withAttributes:(id)attributes
{
  v6 = objc_alloc_init(MCGenericAction);
  [(MCAction *)v6 setTargetObjectID:d];
  [(MCGenericAction *)v6 setAttributes:attributes];

  return v6;
}

- (MCGenericAction)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCGenericAction;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_attributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(imprint, "objectForKey:", @"attributes"}];
  }

  return v4;
}

- (void)demolish
{
  self->_attributes = 0;
  v3.receiver = self;
  v3.super_class = MCGenericAction;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCGenericAction;
  imprint = [(MCAction *)&v7 imprint];
  v4 = imprint;
  attributes = self->_attributes;
  if (attributes)
  {
    [imprint setObject:attributes forKey:@"attributes"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  v6.receiver = self;
  v6.super_class = MCGenericAction;
  [(MCAction *)&v6 _copySelfToSnapshot:snapshot];
  attributes = self->_attributes;
  if (attributes)
  {
    *(snapshot + 3) = [(NSMutableDictionary *)attributes copy];
  }

  objc_sync_exit(self);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCGenericAction;
  return [-[MCAction description](&v3 "description")];
}

@end