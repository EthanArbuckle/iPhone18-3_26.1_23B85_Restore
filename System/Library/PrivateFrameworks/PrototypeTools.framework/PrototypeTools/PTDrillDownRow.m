@interface PTDrillDownRow
+ (id)rowWithTitle:(id)a3 childSettingsKeyPath:(id)a4;
+ (id)rowWithTitleKeyPath:(id)a3 childSettingsKeyPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PTDrillDownRow)initWithChildKeyPath:(id)a3;
- (PTDrillDownRow)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)value;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSettings:(id)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
@end

@implementation PTDrillDownRow

+ (id)rowWithTitle:(id)a3 childSettingsKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithChildKeyPath:v6];

  [v8 setStaticTitle:v7];

  return v8;
}

+ (id)rowWithTitleKeyPath:(id)a3 childSettingsKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithChildKeyPath:v6];

  [v8 setTitleKeyPath:v7];

  return v8;
}

- (PTDrillDownRow)initWithChildKeyPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTDrillDownRow;
  v6 = [(PTRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childKeyPath, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(PTSettings *)self->_childSettings removeKeyPathObserver:self];
  v3.receiver = self;
  v3.super_class = PTDrillDownRow;
  [(PTRow *)&v3 dealloc];
}

- (void)setSettings:(id)a3
{
  childSettings = self->_childSettings;
  v5 = a3;
  [(PTSettings *)childSettings removeKeyPathObserver:self];
  v6 = self->_childSettings;
  self->_childSettings = 0;

  v10.receiver = self;
  v10.super_class = PTDrillDownRow;
  [(PTRow *)&v10 setSettings:v5];

  if (self->_childKeyPath)
  {
    v7 = [(PTRow *)self settings];
    v8 = [v7 valueForKeyPath:self->_childKeyPath];
    v9 = self->_childSettings;
    self->_childSettings = v8;

    [(PTSettings *)self->_childSettings addKeyPathObserver:self];
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_childSettings == v6)
  {
    [(PTRow *)self _sendValueChanged];
  }

  v8.receiver = self;
  v8.super_class = PTDrillDownRow;
  [(PTRow *)&v8 settings:v6 changedValueForKeyPath:v7];
}

- (id)value
{
  v8.receiver = self;
  v8.super_class = PTDrillDownRow;
  v3 = [(PTRow *)&v8 value];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PTSettings *)self->_childSettings drillDownSummary];
  }

  v6 = v5;

  return v6;
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
    v7.super_class = PTDrillDownRow;
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
  v8[2] = __22__PTDrillDownRow_hash__block_invoke;
  v8[3] = &unk_27835ECA8;
  v8[4] = self;
  v4 = [v3 appendHashingBlocks:{v8, 0}];
  v5 = [v3 appendString:self->_childKeyPath];
  v6 = [v3 hash];

  return v6;
}

id __22__PTDrillDownRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTDrillDownRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PTDrillDownRow;
  v4 = [(PTRow *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 19, self->_childKeyPath);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PTDrillDownRow;
  v4 = a3;
  [(PTRow *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_childKeyPath forKey:{@"childKeyPath", v5.receiver, v5.super_class}];
}

- (PTDrillDownRow)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTDrillDownRow;
  v5 = [(PTRow *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childKeyPath"];
    childKeyPath = v5->_childKeyPath;
    v5->_childKeyPath = v6;
  }

  return v5;
}

@end