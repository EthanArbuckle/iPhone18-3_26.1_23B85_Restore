@interface WFContextualActionContext
- (WFContextualActionContext)initWithCoder:(id)coder;
- (WFContextualActionContext)initWithSurface:(unint64_t)surface staccatoInteractionType:(id)type preciseTimestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionContext

- (void)encodeWithCoder:(id)coder
{
  files = self->_files;
  coderCopy = coder;
  [coderCopy encodeObject:files forKey:@"files"];
  [coderCopy encodeInteger:self->_surface forKey:@"surface"];
  [coderCopy encodeBool:self->_allowsExpensiveFetch forKey:@"allowsExpensiveFetch"];
  [coderCopy encodeObject:self->_historicalActionIdentifiers forKey:@"historicalActionIdentifiers"];
  [coderCopy encodeObject:self->_preciseTimestamp forKey:@"preciseTimestamp"];
  [coderCopy encodeObject:self->_staccatoInteractionType forKey:@"staccatoInteractionType"];
}

- (WFContextualActionContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"files"];

  v9 = [coderCopy decodeIntegerForKey:@"surface"];
  v10 = [coderCopy decodeBoolForKey:@"allowsExpensiveFetch"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"historicalActionIdentifiers"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staccatoInteractionType"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preciseTimestamp"];

  v17 = [(WFContextualActionContext *)self initWithSurface:v9 staccatoInteractionType:v15 preciseTimestamp:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_files, v8);
    v18->_allowsExpensiveFetch = v10;
    objc_storeStrong(&v18->_historicalActionIdentifiers, v14);
    v19 = v18;
  }

  return v18;
}

- (WFContextualActionContext)initWithSurface:(unint64_t)surface staccatoInteractionType:(id)type preciseTimestamp:(id)timestamp
{
  typeCopy = type;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = WFContextualActionContext;
  v11 = [(WFContextualActionContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_surface = surface;
    v11->_allowsExpensiveFetch = 0;
    objc_storeStrong(&v11->_preciseTimestamp, timestamp);
    objc_storeStrong(&v12->_staccatoInteractionType, type);
    v13 = v12;
  }

  return v12;
}

@end