@interface PRXFeature
+ (id)featureWithTitle:(id)title detailText:(id)text icon:(id)icon;
+ (id)featureWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color;
+ (id)optionalFeatureWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color valueChangedBlock:(id)block;
- (PRXFeature)initWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color valueChangedBlock:(id)block;
- (PRXFeature)initWithTitle:(id)title detailText:(id)text imageView:(id)view valueChangedBlock:(id)block;
- (UISwitch)switchControl;
- (void)setOn:(BOOL)on;
- (void)setSwitchControl:(id)control;
@end

@implementation PRXFeature

- (PRXFeature)initWithTitle:(id)title detailText:(id)text imageView:(id)view valueChangedBlock:(id)block
{
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = PRXFeature;
  blockCopy = block;
  textCopy = text;
  titleCopy = title;
  v14 = [(PRXFeature *)&v24 init];
  v15 = [titleCopy copy];

  title = v14->_title;
  v14->_title = v15;

  v17 = [textCopy copy];
  detailText = v14->_detailText;
  v14->_detailText = v17;

  imageView = v14->_imageView;
  v14->_imageView = viewCopy;
  v20 = viewCopy;

  v21 = [blockCopy copy];
  handler = v14->_handler;
  v14->_handler = v21;

  v14->_on = 1;
  return v14;
}

- (PRXFeature)initWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color valueChangedBlock:(id)block
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  colorCopy = color;
  blockCopy = block;
  if (iconCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:iconCopy];
    [v17 setTintColor:colorCopy];
    [v17 setContentMode:1];
    self->_imageViewSize = 32.0;
  }

  else
  {
    v17 = 0;
  }

  icon = self->_icon;
  self->_icon = iconCopy;
  v19 = iconCopy;

  tintColor = self->_tintColor;
  self->_tintColor = colorCopy;

  v21 = [(PRXFeature *)self initWithTitle:titleCopy detailText:textCopy imageView:v17 valueChangedBlock:blockCopy];
  return v21;
}

+ (id)optionalFeatureWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color valueChangedBlock:(id)block
{
  blockCopy = block;
  colorCopy = color;
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v17 = [[self alloc] initWithTitle:titleCopy detailText:textCopy icon:iconCopy tintColor:colorCopy valueChangedBlock:blockCopy];

  return v17;
}

+ (id)featureWithTitle:(id)title detailText:(id)text icon:(id)icon tintColor:(id)color
{
  colorCopy = color;
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v14 = [[self alloc] initWithTitle:titleCopy detailText:textCopy icon:iconCopy tintColor:colorCopy valueChangedBlock:0];

  return v14;
}

+ (id)featureWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v11 = [self alloc];
  makeImageView = [iconCopy makeImageView];
  v13 = [v11 initWithTitle:titleCopy detailText:textCopy imageView:makeImageView valueChangedBlock:0];

  [iconCopy platterSize];
  v15 = v14;

  [v13 setImageViewSize:v15];

  return v13;
}

- (void)setSwitchControl:(id)control
{
  controlCopy = control;
  WeakRetained = objc_loadWeakRetained(&self->_switchControl);

  if (WeakRetained != controlCopy)
  {
    v6 = objc_loadWeakRetained(&self->_switchControl);
    [v6 removeActionForIdentifier:@"PRXToggleSwitch" forControlEvents:4096];

    v7 = objc_storeWeak(&self->_switchControl, controlCopy);
    on = self->_on;
    v9 = v7;
    [controlCopy setOn:on];

    objc_initWeak(&location, self);
    v10 = objc_loadWeakRetained(&self->_switchControl);
    v11 = MEMORY[0x277D750C8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __31__PRXFeature_setSwitchControl___block_invoke;
    v16 = &unk_279ACC270;
    objc_copyWeak(&v17, &location);
    v12 = [v11 actionWithTitle:&stru_2873787A8 image:0 identifier:@"PRXToggleSwitch" handler:&v13];
    [v10 addAction:v12 forControlEvents:{4096, v13, v14, v15, v16}];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __31__PRXFeature_setSwitchControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 7);
    [v3 setOn:{objc_msgSend(v2, "isOn")}];

    WeakRetained = v3;
  }
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    if (!self->_handler)
    {
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Cannot turn off a non-optional PRXFeature" userInfo:0];
      objc_exception_throw(v7);
    }

    onCopy = on;
    self->_on = on;
    WeakRetained = objc_loadWeakRetained(&self->_switchControl);
    [WeakRetained setOn:onCopy animated:1];

    v6 = *(self->_handler + 2);

    v6();
  }
}

- (UISwitch)switchControl
{
  WeakRetained = objc_loadWeakRetained(&self->_switchControl);

  return WeakRetained;
}

@end