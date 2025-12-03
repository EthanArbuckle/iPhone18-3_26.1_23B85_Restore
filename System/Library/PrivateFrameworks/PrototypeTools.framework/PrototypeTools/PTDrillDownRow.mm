@interface PTDrillDownRow
+ (id)rowWithTitle:(id)title childSettingsKeyPath:(id)path;
+ (id)rowWithTitleKeyPath:(id)path childSettingsKeyPath:(id)keyPath;
- (BOOL)isEqual:(id)equal;
- (PTDrillDownRow)initWithChildKeyPath:(id)path;
- (PTDrillDownRow)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)value;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSettings:(id)settings;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
@end

@implementation PTDrillDownRow

+ (id)rowWithTitle:(id)title childSettingsKeyPath:(id)path
{
  pathCopy = path;
  titleCopy = title;
  v8 = [[self alloc] initWithChildKeyPath:pathCopy];

  [v8 setStaticTitle:titleCopy];

  return v8;
}

+ (id)rowWithTitleKeyPath:(id)path childSettingsKeyPath:(id)keyPath
{
  keyPathCopy = keyPath;
  pathCopy = path;
  v8 = [[self alloc] initWithChildKeyPath:keyPathCopy];

  [v8 setTitleKeyPath:pathCopy];

  return v8;
}

- (PTDrillDownRow)initWithChildKeyPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PTDrillDownRow;
  v6 = [(PTRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_childKeyPath, path);
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

- (void)setSettings:(id)settings
{
  childSettings = self->_childSettings;
  settingsCopy = settings;
  [(PTSettings *)childSettings removeKeyPathObserver:self];
  v6 = self->_childSettings;
  self->_childSettings = 0;

  v10.receiver = self;
  v10.super_class = PTDrillDownRow;
  [(PTRow *)&v10 setSettings:settingsCopy];

  if (self->_childKeyPath)
  {
    settings = [(PTRow *)self settings];
    v8 = [settings valueForKeyPath:self->_childKeyPath];
    v9 = self->_childSettings;
    self->_childSettings = v8;

    [(PTSettings *)self->_childSettings addKeyPathObserver:self];
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  settingsCopy = settings;
  pathCopy = path;
  if (self->_childSettings == settingsCopy)
  {
    [(PTRow *)self _sendValueChanged];
  }

  v8.receiver = self;
  v8.super_class = PTDrillDownRow;
  [(PTRow *)&v8 settings:settingsCopy changedValueForKeyPath:pathCopy];
}

- (id)value
{
  v8.receiver = self;
  v8.super_class = PTDrillDownRow;
  value = [(PTRow *)&v8 value];
  v4 = value;
  if (value)
  {
    drillDownSummary = value;
  }

  else
  {
    drillDownSummary = [(PTSettings *)self->_childSettings drillDownSummary];
  }

  v6 = drillDownSummary;

  return v6;
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
    v7.super_class = PTDrillDownRow;
    if ([(PTRow *)&v7 isEqual:equalCopy])
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
  v8[2] = __22__PTDrillDownRow_hash__block_invoke;
  v8[3] = &unk_27835ECA8;
  v8[4] = self;
  v4 = [builder appendHashingBlocks:{v8, 0}];
  v5 = [builder appendString:self->_childKeyPath];
  v6 = [builder hash];

  return v6;
}

id __22__PTDrillDownRow_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PTDrillDownRow;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PTDrillDownRow;
  v4 = [(PTRow *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 19, self->_childKeyPath);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PTDrillDownRow;
  coderCopy = coder;
  [(PTRow *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_childKeyPath forKey:{@"childKeyPath", v5.receiver, v5.super_class}];
}

- (PTDrillDownRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PTDrillDownRow;
  v5 = [(PTRow *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childKeyPath"];
    childKeyPath = v5->_childKeyPath;
    v5->_childKeyPath = v6;
  }

  return v5;
}

@end