@interface WFPerformQueryDialogResponse
- (NSString)description;
- (WFPerformQueryDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFPerformQueryDialogResponse)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPerformQueryDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFPerformQueryDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFPerformQueryDialogResponse *)self queryResults:v6.receiver];
  [v4 encodeCollection:v5 forKey:@"queryResults"];

  [v4 encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFPerformQueryDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFPerformQueryDialogResponse;
  v5 = [(WFDialogResponse *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"queryResults"];
    queryResults = v5->_queryResults;
    v5->_queryResults = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFPerformQueryDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFPerformQueryDialogResponse *)self queryResults:v6.receiver];
  [v4 encodeObject:v5 forKey:@"queryResults"];
}

- (WFPerformQueryDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFPerformQueryDialogResponse;
  v5 = [(WFDialogResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"queryResults"];
    queryResults = v5->_queryResults;
    v5->_queryResults = v9;

    v11 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFPerformQueryDialogResponse *)self queryResults];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, queryResults: %@, cancelled: %@>", v5, self, v6, v7];

  return v8;
}

@end