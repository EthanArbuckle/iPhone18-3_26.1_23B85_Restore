@interface _REActionValue
- (NSSet)uuids;
- (_REActionValue)initWithAction:(id)a3;
- (void)addAction:(id)a3;
@end

@implementation _REActionValue

- (_REActionValue)initWithAction:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _REActionValue;
  v6 = [(_REActionValue *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    v8 = MEMORY[0x277CBEB58];
    v9 = [v5 identifier];
    v10 = [v8 setWithObject:v9];
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

- (void)addAction:(id)a3
{
  v12 = a3;
  mutableUUIDs = self->_mutableUUIDs;
  v6 = [v12 identifier];
  [(NSMutableSet *)mutableUUIDs addObject:v6];

  v7 = [v12 creationDate];
  action = self->_action;
  p_action = &self->_action;
  v10 = [(REDonatedAction *)action creationDate];
  v11 = [v7 compare:v10];

  if (v11 == 1)
  {
    objc_storeStrong(p_action, a3);
  }
}

@end