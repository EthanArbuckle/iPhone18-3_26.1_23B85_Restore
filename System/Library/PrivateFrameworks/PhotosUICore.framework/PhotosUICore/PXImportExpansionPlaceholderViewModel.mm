@interface PXImportExpansionPlaceholderViewModel
+ (id)sharedInstance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToImportPlaceholderViewModel:(id)model;
- (PXImportExpansionPlaceholderViewModel)initWithPlaceholderDate:(id)date;
- (id)description;
- (id)fileName;
- (unint64_t)hash;
@end

@implementation PXImportExpansionPlaceholderViewModel

- (id)fileName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  placeholderDate = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
  v3 = [placeholderDate hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXImportExpansionPlaceholderViewModel *)self isEqualToImportPlaceholderViewModel:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToImportPlaceholderViewModel:(id)model
{
  modelCopy = model;
  kind = [(PXImportItemViewModel *)self kind];
  kind2 = [modelCopy kind];
  if ([kind isEqualToString:kind2])
  {
    placeholderDate = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
    placeholderDate2 = [modelCopy placeholderDate];
    v9 = [placeholderDate isEqualToDate:placeholderDate2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  placeholderDate = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
  v6 = [v3 stringWithFormat:@"<%@:%p expansion placeholder date: %@>", v4, self, placeholderDate];

  return v6;
}

- (PXImportExpansionPlaceholderViewModel)initWithPlaceholderDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = PXImportExpansionPlaceholderViewModel;
  v6 = [(PXImportItemViewModel *)&v10 initWithKind:@"PXImportItemViewModelKindExpansionPlaceholder" selectable:0];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    placeholderUUID = v6->_placeholderUUID;
    v6->_placeholderUUID = uUID;

    objc_storeStrong(&v6->_placeholderDate, date);
  }

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_58154 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_58154, &__block_literal_global_58155);
  }

  v3 = sharedInstance_placeholderModel;

  return v3;
}

void __55__PXImportExpansionPlaceholderViewModel_sharedInstance__block_invoke()
{
  v0 = [PXImportExpansionPlaceholderViewModel alloc];
  v3 = [MEMORY[0x1E695DF00] distantPast];
  v1 = [(PXImportExpansionPlaceholderViewModel *)v0 initWithPlaceholderDate:v3];
  v2 = sharedInstance_placeholderModel;
  sharedInstance_placeholderModel = v1;
}

@end