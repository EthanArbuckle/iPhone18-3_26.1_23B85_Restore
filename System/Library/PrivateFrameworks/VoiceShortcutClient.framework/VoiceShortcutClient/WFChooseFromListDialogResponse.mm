@interface WFChooseFromListDialogResponse
- (NSString)description;
- (WFChooseFromListDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFChooseFromListDialogResponse)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFChooseFromListDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFChooseFromListDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFChooseFromListDialogResponse *)self selectedItems:v6.receiver];
  [coderCopy encodeCollection:v5 forKey:@"selectedItems"];

  [coderCopy encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFChooseFromListDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFChooseFromListDialogResponse;
  v5 = [(WFDialogResponse *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"selectedItems"];
    selectedItems = v5->_selectedItems;
    v5->_selectedItems = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFChooseFromListDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFChooseFromListDialogResponse *)self selectedItems:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedItems"];
}

- (WFChooseFromListDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFChooseFromListDialogResponse;
  v5 = [(WFDialogResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectedItems"];
    selectedItems = v5->_selectedItems;
    v5->_selectedItems = v9;

    v11 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  selectedItems = [(WFChooseFromListDialogResponse *)self selectedItems];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, selectedItems: %@, cancelled: %@>", v5, self, selectedItems, v7];

  return v8;
}

@end