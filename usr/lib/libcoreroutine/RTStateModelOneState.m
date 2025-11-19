@interface RTStateModelOneState
- (RTStateModelOneState)init;
- (RTStateModelOneState)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTStateModelOneState *)self uniqueId];
  [v4 encodeObject:v5 forKey:@"uniqueId"];

  v6 = [(RTStateModelOneState *)self stateDepiction];
  [v4 encodeObject:v6 forKey:@"stateDepiction"];

  v7 = [(RTStateModelOneState *)self stateTransitions];
  [v4 encodeObject:v7 forKey:@"stateTransitions"];
}

- (RTStateModelOneState)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RTStateModelOneState;
  v5 = [(RTStateModelOneState *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueId"];
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateDepiction"];
    stateDepiction = v5->_stateDepiction;
    v5->_stateDepiction = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"stateTransitions"];
    stateTransitions = v5->_stateTransitions;
    v5->_stateTransitions = v14;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTStateModelOneState *)self uniqueId];
  v5 = [v4 UUIDString];
  v6 = [(RTStateModelOneState *)self stateDepiction];
  v7 = [v3 stringWithFormat:@"identifier, %@, stateDepiction, %@", v5, v6];

  return v7;
}

@end