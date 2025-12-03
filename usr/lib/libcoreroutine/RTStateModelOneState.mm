@interface RTStateModelOneState
- (RTStateModelOneState)init;
- (RTStateModelOneState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateModelOneState

- (RTStateModelOneState)init
{
  v10.receiver = self;
  v10.super_class = RTStateModelOneState;
  v2 = [(RTStateModelOneState *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = v3;

    v5 = objc_opt_new();
    stateDepiction = v2->_stateDepiction;
    v2->_stateDepiction = v5;

    v7 = objc_opt_new();
    stateTransitions = v2->_stateTransitions;
    v2->_stateTransitions = v7;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueId = [(RTStateModelOneState *)self uniqueId];
  [coderCopy encodeObject:uniqueId forKey:@"uniqueId"];

  stateDepiction = [(RTStateModelOneState *)self stateDepiction];
  [coderCopy encodeObject:stateDepiction forKey:@"stateDepiction"];

  stateTransitions = [(RTStateModelOneState *)self stateTransitions];
  [coderCopy encodeObject:stateTransitions forKey:@"stateTransitions"];
}

- (RTStateModelOneState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = RTStateModelOneState;
  v5 = [(RTStateModelOneState *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueId"];
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateDepiction"];
    stateDepiction = v5->_stateDepiction;
    v5->_stateDepiction = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"stateTransitions"];
    stateTransitions = v5->_stateTransitions;
    v5->_stateTransitions = v14;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uniqueId = [(RTStateModelOneState *)self uniqueId];
  uUIDString = [uniqueId UUIDString];
  stateDepiction = [(RTStateModelOneState *)self stateDepiction];
  v7 = [v3 stringWithFormat:@"identifier, %@, stateDepiction, %@", uUIDString, stateDepiction];

  return v7;
}

@end