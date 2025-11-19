@interface WFDatabaseResultState
- (WFDatabaseResultState)initWithCoder:(id)a3;
- (WFDatabaseResultState)initWithObjectType:(unint64_t)a3 state:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDatabaseResultState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WFDatabaseResultState objectType](self forKey:{"objectType"), @"objectType"}];
  v5 = [(WFDatabaseResultState *)self state];
  [v4 encodeObject:v5 forKey:@"state"];
}

- (WFDatabaseResultState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"objectType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"state"];

  v10 = [(WFDatabaseResultState *)self initWithObjectType:v5 state:v9];
  return v10;
}

- (WFDatabaseResultState)initWithObjectType:(unint64_t)a3 state:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDatabaseResultState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v15.receiver = self;
  v15.super_class = WFDatabaseResultState;
  v8 = [(WFDatabaseResultState *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_objectType = a3;
    v10 = [v7 copy];
    state = v9->_state;
    v9->_state = v10;

    v12 = v9;
  }

  return v9;
}

@end