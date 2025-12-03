@interface WFDatabaseResultState
- (WFDatabaseResultState)initWithCoder:(id)coder;
- (WFDatabaseResultState)initWithObjectType:(unint64_t)type state:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDatabaseResultState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFDatabaseResultState objectType](self forKey:{"objectType"), @"objectType"}];
  state = [(WFDatabaseResultState *)self state];
  [coderCopy encodeObject:state forKey:@"state"];
}

- (WFDatabaseResultState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"objectType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"state"];

  v10 = [(WFDatabaseResultState *)self initWithObjectType:v5 state:v9];
  return v10;
}

- (WFDatabaseResultState)initWithObjectType:(unint64_t)type state:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDatabaseResultState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v15.receiver = self;
  v15.super_class = WFDatabaseResultState;
  v8 = [(WFDatabaseResultState *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_objectType = type;
    v10 = [stateCopy copy];
    state = v9->_state;
    v9->_state = v10;

    v12 = v9;
  }

  return v9;
}

@end