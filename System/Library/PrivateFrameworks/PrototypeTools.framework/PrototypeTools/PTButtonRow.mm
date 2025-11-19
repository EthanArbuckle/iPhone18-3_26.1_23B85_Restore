@interface PTButtonRow
+ (id)restoreDefaultSettingsButton;
+ (id)rowWithTitle:(id)a3 action:(id)a4;
+ (id)rowWithTitle:(id)a3 outletKeyPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PTButtonRow)initWithCoder:(id)a3;
- (id)_defaultAction;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTButtonRow

+ (id)rowWithTitle:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 row];
  v9 = [v8 staticTitle:v7];

  v10 = [v9 action:v6];

  return v10;
}

+ (id)rowWithTitle:(id)a3 outletKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 row];
  v9 = [v8 staticTitle:v7];

  v10 = [v9 outletKeyPath:v6];

  return v10;
}

+ (id)restoreDefaultSettingsButton
{
  v3 = +[PTRestoreDefaultSettingsRowAction action];
  v4 = [a1 rowWithTitle:@"Restore Defaults" action:v3];

  return v4;
}

- (id)_defaultAction
{
  if (self->_outletKeyPath)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__PTButtonRow__defaultAction__block_invoke;
    v5[3] = &unk_27835ECD0;
    v5[4] = self;
    v3 = [PTRowAction actionWithHandler:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __29__PTButtonRow__defaultAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 settings];
  v4 = [v3 valueForKeyPath:*(*(a1 + 32) + 144)];

  [v4 _invokeActions];
  return 1;
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
    v7.receiver = self;
    v7.super_class = PTButtonRow;
    if ([(PTRow *)&v7 isEqual:v4])
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __19__PTButtonRow_hash__block_invoke;
  v8[3] = &unk_27835ECA8;
  v8[4] = self;
  v4 = [v3 appendHashingBlocks:{v8, 0}];
  v5 = [v3 appendString:self->_outletKeyPath];
  v6 = [v3 hash];

  return v6;
}

id __19__PTButtonRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTButtonRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PTButtonRow;
  v4 = [(PTRow *)&v6 copyWithZone:a3];
  [v4 setOutletKeyPath:self->_outletKeyPath];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTButtonRow;
  v4 = a3;
  [(PTRow *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_outletKeyPath forKey:{@"outletKeyPath", v5.receiver, v5.super_class}];
}

- (PTButtonRow)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTButtonRow;
  v5 = [(PTRow *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outletKeyPath"];
    outletKeyPath = v5->_outletKeyPath;
    v5->_outletKeyPath = v6;
  }

  return v5;
}

@end