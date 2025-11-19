@interface PRXFeature
+ (id)featureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
+ (id)featureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6;
+ (id)optionalFeatureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6 valueChangedBlock:(id)a7;
- (PRXFeature)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6 valueChangedBlock:(id)a7;
- (PRXFeature)initWithTitle:(id)a3 detailText:(id)a4 imageView:(id)a5 valueChangedBlock:(id)a6;
- (UISwitch)switchControl;
- (void)setOn:(BOOL)a3;
- (void)setSwitchControl:(id)a3;
@end

@implementation PRXFeature

- (PRXFeature)initWithTitle:(id)a3 detailText:(id)a4 imageView:(id)a5 valueChangedBlock:(id)a6
{
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PRXFeature;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(PRXFeature *)&v24 init];
  v15 = [v13 copy];

  title = v14->_title;
  v14->_title = v15;

  v17 = [v12 copy];
  detailText = v14->_detailText;
  v14->_detailText = v17;

  imageView = v14->_imageView;
  v14->_imageView = v10;
  v20 = v10;

  v21 = [v11 copy];
  handler = v14->_handler;
  v14->_handler = v21;

  v14->_on = 1;
  return v14;
}

- (PRXFeature)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6 valueChangedBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
    [v17 setTintColor:v15];
    [v17 setContentMode:1];
    self->_imageViewSize = 32.0;
  }

  else
  {
    v17 = 0;
  }

  icon = self->_icon;
  self->_icon = v14;
  v19 = v14;

  tintColor = self->_tintColor;
  self->_tintColor = v15;

  v21 = [(PRXFeature *)self initWithTitle:v12 detailText:v13 imageView:v17 valueChangedBlock:v16];
  return v21;
}

+ (id)optionalFeatureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6 valueChangedBlock:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithTitle:v16 detailText:v15 icon:v14 tintColor:v13 valueChangedBlock:v12];

  return v17;
}

+ (id)featureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 tintColor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithTitle:v13 detailText:v12 icon:v11 tintColor:v10 valueChangedBlock:0];

  return v14;
}

+ (id)featureWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [v8 makeImageView];
  v13 = [v11 initWithTitle:v10 detailText:v9 imageView:v12 valueChangedBlock:0];

  [v8 platterSize];
  v15 = v14;

  [v13 setImageViewSize:v15];

  return v13;
}

- (void)setSwitchControl:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switchControl);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_switchControl);
    [v6 removeActionForIdentifier:@"PRXToggleSwitch" forControlEvents:4096];

    v7 = objc_storeWeak(&self->_switchControl, v4);
    on = self->_on;
    v9 = v7;
    [v4 setOn:on];

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

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    if (!self->_handler)
    {
      v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Cannot turn off a non-optional PRXFeature" userInfo:0];
      objc_exception_throw(v7);
    }

    v4 = a3;
    self->_on = a3;
    WeakRetained = objc_loadWeakRetained(&self->_switchControl);
    [WeakRetained setOn:v4 animated:1];

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