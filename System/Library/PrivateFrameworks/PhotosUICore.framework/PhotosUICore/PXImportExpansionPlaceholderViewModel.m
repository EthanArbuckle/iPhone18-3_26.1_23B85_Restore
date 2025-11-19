@interface PXImportExpansionPlaceholderViewModel
+ (id)sharedInstance;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImportPlaceholderViewModel:(id)a3;
- (PXImportExpansionPlaceholderViewModel)initWithPlaceholderDate:(id)a3;
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
  v2 = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXImportExpansionPlaceholderViewModel *)self isEqualToImportPlaceholderViewModel:v4];
  }

  return v5;
}

- (BOOL)isEqualToImportPlaceholderViewModel:(id)a3
{
  v4 = a3;
  v5 = [(PXImportItemViewModel *)self kind];
  v6 = [v4 kind];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
    v8 = [v4 placeholderDate];
    v9 = [v7 isEqualToDate:v8];
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
  v5 = [(PXImportExpansionPlaceholderViewModel *)self placeholderDate];
  v6 = [v3 stringWithFormat:@"<%@:%p expansion placeholder date: %@>", v4, self, v5];

  return v6;
}

- (PXImportExpansionPlaceholderViewModel)initWithPlaceholderDate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXImportExpansionPlaceholderViewModel;
  v6 = [(PXImportItemViewModel *)&v10 initWithKind:@"PXImportItemViewModelKindExpansionPlaceholder" selectable:0];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    placeholderUUID = v6->_placeholderUUID;
    v6->_placeholderUUID = v7;

    objc_storeStrong(&v6->_placeholderDate, a3);
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