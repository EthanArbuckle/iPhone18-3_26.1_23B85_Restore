@interface WFContextualActionContext
- (WFContextualActionContext)initWithCoder:(id)a3;
- (WFContextualActionContext)initWithSurface:(unint64_t)a3 staccatoInteractionType:(id)a4 preciseTimestamp:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualActionContext

- (void)encodeWithCoder:(id)a3
{
  files = self->_files;
  v5 = a3;
  [v5 encodeObject:files forKey:@"files"];
  [v5 encodeInteger:self->_surface forKey:@"surface"];
  [v5 encodeBool:self->_allowsExpensiveFetch forKey:@"allowsExpensiveFetch"];
  [v5 encodeObject:self->_historicalActionIdentifiers forKey:@"historicalActionIdentifiers"];
  [v5 encodeObject:self->_preciseTimestamp forKey:@"preciseTimestamp"];
  [v5 encodeObject:self->_staccatoInteractionType forKey:@"staccatoInteractionType"];
}

- (WFContextualActionContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"files"];

  v9 = [v5 decodeIntegerForKey:@"surface"];
  v10 = [v5 decodeBoolForKey:@"allowsExpensiveFetch"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"historicalActionIdentifiers"];

  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"staccatoInteractionType"];
  v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"preciseTimestamp"];

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

- (WFContextualActionContext)initWithSurface:(unint64_t)a3 staccatoInteractionType:(id)a4 preciseTimestamp:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFContextualActionContext;
  v11 = [(WFContextualActionContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_surface = a3;
    v11->_allowsExpensiveFetch = 0;
    objc_storeStrong(&v11->_preciseTimestamp, a5);
    objc_storeStrong(&v12->_staccatoInteractionType, a4);
    v13 = v12;
  }

  return v12;
}

@end