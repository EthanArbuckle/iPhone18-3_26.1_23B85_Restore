@interface PTChoiceRow
- (BOOL)isEncodable;
- (BOOL)isEqual:(id)a3;
- (PTChoiceRow)initWithCoder:(id)a3;
- (PTChoiceRowDataSource)dataSource;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForValue:(id)a3;
- (id)possibleValues:(id)a3 titles:(id)a4;
- (id)shortTitleForRow:(int64_t)a3 inSection:(int64_t)a4;
- (id)titleForRow:(int64_t)a3 inSection:(int64_t)a4;
- (id)titleForSection:(int64_t)a3;
- (id)valueForRow:(int64_t)a3 inSection:(int64_t)a4;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTChoiceRow

- (id)possibleValues:(id)a3 titles:(id)a4
{
  v6 = a4;
  [(PTChoiceRow *)self setPossibleValues:a3];
  [(PTChoiceRow *)self setPossibleTitles:v6];

  return self;
}

- (int64_t)numberOfSections
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_dataSource);
    v5 = [v4 numberOfSectionsForChoiceRow:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)titleForSection:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 choiceRow:self titleForSection:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 choiceRow:self numberOfRowsInSection:a3];
  }

  else
  {
    v7 = [(NSArray *)self->_possibleValues count];
  }

  return v7;
}

- (id)valueForRow:(int64_t)a3 inSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_dataSource);
    v9 = [v8 choiceRow:self valueForRow:a3 inSection:a4];
  }

  else
  {
    v9 = [(NSArray *)self->_possibleValues objectAtIndex:a3];
  }

  return v9;
}

- (id)titleForRow:(int64_t)a3 inSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_dataSource);
    v9 = [v8 choiceRow:self titleForRow:a3 inSection:a4];
  }

  else
  {
    v9 = [(NSArray *)self->_possibleTitles objectAtIndex:a3];
  }

  return v9;
}

- (id)shortTitleForRow:(int64_t)a3 inSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_dataSource);
    v9 = [v8 choiceRow:self shortTitleForRow:a3 inSection:a4];
  }

  else
  {
    v9 = [(NSArray *)self->_possibleShortTitles objectAtIndex:a3];
  }

  return v9;
}

- (id)indexPathForValue:(id)a3
{
  v4 = a3;
  if ([(PTChoiceRow *)self numberOfSections]< 1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while ([(PTChoiceRow *)self numberOfRowsInSection:v5]< 1)
    {
LABEL_7:
      if (++v5 >= [(PTChoiceRow *)self numberOfSections])
      {
        goto LABEL_8;
      }
    }

    v6 = 0;
    while (1)
    {
      v7 = [(PTChoiceRow *)self valueForRow:v6 inSection:v5];
      if ([v4 isEqual:v7])
      {
        break;
      }

      if (++v6 >= [(PTChoiceRow *)self numberOfRowsInSection:v5])
      {
        goto LABEL_7;
      }
    }

    v8 = [MEMORY[0x277CCAA70] pt_indexPathForRow:v6 inSection:v5];
  }

  return v8;
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
    v7.super_class = PTChoiceRow;
    if ([(PTRow *)&v7 isEqual:v4]&& BSEqualObjects() && BSEqualObjects())
    {
      v5 = BSEqualObjects();
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
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __19__PTChoiceRow_hash__block_invoke;
  v10[3] = &unk_27835ECA8;
  v10[4] = self;
  v4 = [v3 appendHashingBlocks:{v10, 0}];
  v5 = [v3 appendObject:self->_possibleValues];
  v6 = [v3 appendObject:self->_possibleTitles];
  v7 = [v3 appendObject:self->_possibleShortTitles];
  v8 = [v3 hash];

  return v8;
}

id __19__PTChoiceRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTChoiceRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PTChoiceRow;
  v4 = [(PTRow *)&v6 copyWithZone:a3];
  [v4 setPossibleValues:self->_possibleValues];
  [v4 setPossibleTitles:self->_possibleTitles];
  [v4 setPossibleShortTitles:self->_possibleShortTitles];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTChoiceRow;
  v4 = a3;
  [(PTRow *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_possibleValues forKey:{@"values", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_possibleTitles forKey:@"titles"];
  [v4 encodeObject:self->_possibleShortTitles forKey:@"shortTitles"];
}

- (PTChoiceRow)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PTChoiceRow;
  v5 = [(PTRow *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = PTPlistableClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"values"];
    possibleValues = v5->_possibleValues;
    v5->_possibleValues = v10;

    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"titles"];
    possibleTitles = v5->_possibleTitles;
    v5->_possibleTitles = v12;

    v14 = [v4 decodeObjectOfClasses:v8 forKey:@"shortTitles"];
    possibleShortTitles = v5->_possibleShortTitles;
    v5->_possibleShortTitles = v14;

    v16 = v5->_possibleTitles;
    objc_opt_class();
    if ((PTValidateArray(v16) & 1) == 0)
    {
      v17 = v5->_possibleTitles;
      if (!v17)
      {
        v17 = @"nil";
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"PTChoiceRow expected array of strings for 'possibleTitles', got %@", v17}];
    }

    if (!v5->_possibleValues)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"PTChoiceRow expected array of plist types for 'possibleValues', got nil"}];
    }

    v18 = v5->_possibleShortTitles;
    if (v18)
    {
      objc_opt_class();
      if ((PTValidateArray(v18) & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"PTChoiceRow expected optional array of strings for 'possibleShortTitles', got %@", v5->_possibleShortTitles}];
      }
    }
  }

  return v5;
}

- (BOOL)isEncodable
{
  v5.receiver = self;
  v5.super_class = PTChoiceRow;
  v3 = [(PTRow *)&v5 isEncodable];
  if (v3)
  {
    LOBYTE(v3) = PTObjectIsRecursivelyPlistable(self->_possibleValues);
  }

  return v3;
}

- (PTChoiceRowDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end