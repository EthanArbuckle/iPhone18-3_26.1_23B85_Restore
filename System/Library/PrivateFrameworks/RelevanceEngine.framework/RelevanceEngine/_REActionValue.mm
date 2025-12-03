@interface _REActionValue
- (NSSet)uuids;
- (_REActionValue)initWithAction:(id)action;
- (void)addAction:(id)action;
@end

@implementation _REActionValue

- (_REActionValue)initWithAction:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = _REActionValue;
  v6 = [(_REActionValue *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    v8 = MEMORY[0x277CBEB58];
    identifier = [actionCopy identifier];
    v10 = [v8 setWithObject:identifier];
    mutableUUIDs = v7->_mutableUUIDs;
    v7->_mutableUUIDs = v10;
  }

  return v7;
}

- (NSSet)uuids
{
  v2 = [(NSMutableSet *)self->_mutableUUIDs copy];

  return v2;
}

- (void)addAction:(id)action
{
  actionCopy = action;
  mutableUUIDs = self->_mutableUUIDs;
  identifier = [actionCopy identifier];
  [(NSMutableSet *)mutableUUIDs addObject:identifier];

  creationDate = [actionCopy creationDate];
  action = self->_action;
  p_action = &self->_action;
  creationDate2 = [(REDonatedAction *)action creationDate];
  v11 = [creationDate compare:creationDate2];

  if (v11 == 1)
  {
    objc_storeStrong(p_action, action);
  }
}

@end