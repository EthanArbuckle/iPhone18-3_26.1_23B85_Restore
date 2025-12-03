@interface PTRestoreDefaultSettingsRowAction
+ (id)actionWithSettingsKeyPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (PTRestoreDefaultSettingsRowAction)initWithCoder:(id)coder;
- (id)defaultHandler;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTRestoreDefaultSettingsRowAction

+ (id)actionWithSettingsKeyPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [pathCopy copy];

  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (id)defaultHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PTRestoreDefaultSettingsRowAction_defaultHandler__block_invoke;
  v4[3] = &unk_27835EFD8;
  v4[4] = self;
  v2 = MEMORY[0x223D60750](v4, a2);

  return v2;
}

BOOL __51__PTRestoreDefaultSettingsRowAction_defaultHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 childSettingsForKeyPath:*(*(a1 + 32) + 24)];
  v3 = v2;
  if (v2)
  {
    [v2 restoreDefaultValues];
  }

  return v3 != 0;
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
    v7.receiver = self;
    v7.super_class = PTRestoreDefaultSettingsRowAction;
    if ([(PTRowAction *)&v7 isEqual:equalCopy])
    {
      v5 = BSEqualStrings();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PTRestoreDefaultSettingsRowAction_hash__block_invoke;
  v8[3] = &unk_27835ECA8;
  v8[4] = self;
  v4 = [builder appendHashingBlocks:{v8, 0}];
  v5 = [builder appendString:self->_settingsKeyPath];
  v6 = [builder hash];

  return v6;
}

id __41__PTRestoreDefaultSettingsRowAction_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTRestoreDefaultSettingsRowAction;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PTRestoreDefaultSettingsRowAction;
  coderCopy = coder;
  [(PTRowAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_settingsKeyPath forKey:{@"settingsKeyPath", v5.receiver, v5.super_class}];
}

- (PTRestoreDefaultSettingsRowAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PTRestoreDefaultSettingsRowAction;
  v5 = [(PTRowAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingsKeyPath"];
    settingsKeyPath = v5->_settingsKeyPath;
    v5->_settingsKeyPath = v6;
  }

  return v5;
}

@end