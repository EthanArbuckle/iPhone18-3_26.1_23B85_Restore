@interface XBLaunchInterfaceConfiguration
- (NSString)description;
- (XBLaunchInterfaceConfiguration)initWithCoder:(id)a3;
- (XBLaunchInterfaceConfiguration)initWithConfigurationDictionary:(id)a3;
- (XBLaunchInterfaceConfiguration)initWithXPCDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation XBLaunchInterfaceConfiguration

- (XBLaunchInterfaceConfiguration)initWithConfigurationDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = XBLaunchInterfaceConfiguration;
  v5 = [(XBLaunchInterfaceConfiguration *)&v29 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEA60] array];
    bars = v5->_bars;
    v5->_bars = v6;

    v8 = [v4 valueForKey:@"UIColorName"];
    colorName = v5->_colorName;
    v5->_colorName = v8;

    v10 = [v4 valueForKey:@"UIImageName"];
    imageName = v5->_imageName;
    v5->_imageName = v10;

    v12 = [v4 valueForKey:@"UIImageRespectsSafeAreaInsets"];
    v5->_imageRespectsSafeAreaInsets = [v12 BOOLValue];

    v13 = [v4 valueForKey:@"UINavigationBar"];
    if (v13)
    {
      v14 = [(NSArray *)v5->_bars arrayByAddingObject:@"UINavigationBar"];
      v15 = v5->_bars;
      v5->_bars = v14;

      v16 = [v13 valueForKey:@"UIImageName"];
      navigationBarImageName = v5->_navigationBarImageName;
      v5->_navigationBarImageName = v16;
    }

    v18 = [v4 valueForKey:@"UIToolbar"];
    if (v18)
    {
      v19 = [(NSArray *)v5->_bars arrayByAddingObject:@"UIToolbar"];
      v20 = v5->_bars;
      v5->_bars = v19;

      v21 = [v18 valueForKey:@"UIImageName"];
      toolbarImageName = v5->_toolbarImageName;
      v5->_toolbarImageName = v21;
    }

    v23 = [v4 valueForKey:@"UITabBar"];
    if (v23)
    {
      v24 = [(NSArray *)v5->_bars arrayByAddingObject:@"UITabBar"];
      v25 = v5->_bars;
      v5->_bars = v24;

      v26 = [v23 valueForKey:@"UIImageName"];
      tabBarImageName = v5->_tabBarImageName;
      v5->_tabBarImageName = v26;
    }
  }

  return v5;
}

- (XBLaunchInterfaceConfiguration)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = XBLaunchInterfaceConfiguration;
  v5 = [(XBLaunchInterfaceConfiguration *)&v19 init];
  if (v5)
  {
    v6 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    colorName = v5->_colorName;
    v5->_colorName = v6;

    v8 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    imageName = v5->_imageName;
    v5->_imageName = v8;

    v5->_imageRespectsSafeAreaInsets = xpc_dictionary_get_BOOL(v4, "imageRespectsSafeAreaInsets");
    v10 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    navigationBarImageName = v5->_navigationBarImageName;
    v5->_navigationBarImageName = v10;

    v12 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    toolbarImageName = v5->_toolbarImageName;
    v5->_toolbarImageName = v12;

    v14 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    tabBarImageName = v5->_tabBarImageName;
    v5->_tabBarImageName = v14;

    v16 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    bars = v5->_bars;
    v5->_bars = v16;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "imageRespectsSafeAreaInsets", self->_imageRespectsSafeAreaInsets);
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
}

- (XBLaunchInterfaceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = XBLaunchInterfaceConfiguration;
  v5 = [(XBLaunchInterfaceConfiguration *)&v35 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      [XBLaunchInterfaceConfiguration initWithCoder:];
    }

    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"colorName"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v34];
    v7 = [v6 copy];
    colorName = v5->_colorName;
    v5->_colorName = v7;

    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"imageName"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v33];
    v10 = [v9 copy];
    imageName = v5->_imageName;
    v5->_imageName = v10;

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"imageRespectsSafeAreaInsets"];
    v5->_imageRespectsSafeAreaInsets = [v4 decodeBoolForKey:v12];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"navigationBarImageName"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v13];
    v15 = [v14 copy];
    navigationBarImageName = v5->_navigationBarImageName;
    v5->_navigationBarImageName = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"toolbarImageName"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v17];
    v19 = [v18 copy];
    toolbarImageName = v5->_toolbarImageName;
    v5->_toolbarImageName = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"tabBarImageName"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v21];
    v23 = [v22 copy];
    tabBarImageName = v5->_tabBarImageName;
    v5->_tabBarImageName = v23;

    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bars"];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:v25];
    v30 = [v29 copy];
    bars = v5->_bars;
    v5->_bars = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [XBLaunchInterfaceConfiguration encodeWithCoder:];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"colorName"];
  [v4 encodeObject:self->_colorName forKey:v11];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"imageName"];
  [v4 encodeObject:self->_imageName forKey:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"imageRespectsSafeAreaInsets"];
  [v4 encodeBool:self->_imageRespectsSafeAreaInsets forKey:v6];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"navigationBarImageName"];
  [v4 encodeObject:self->_navigationBarImageName forKey:v7];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"toolbarImageName"];
  [v4 encodeObject:self->_toolbarImageName forKey:v8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"tabBarImageName"];
  [v4 encodeObject:self->_tabBarImageName forKey:v9];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bars"];
  [v4 encodeObject:self->_bars forKey:v10];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_colorName withName:@"colorName"];
  v5 = [v3 appendObject:self->_imageName withName:@"imageName"];
  v6 = [v3 appendBool:self->_imageRespectsSafeAreaInsets withName:@"imageRespectsSafeAreaInsets"];
  v7 = [v3 appendObject:self->_navigationBarImageName withName:@"navigationBarImageName"];
  v8 = [v3 appendObject:self->_toolbarImageName withName:@"toolbarImageName"];
  v9 = [v3 appendObject:self->_tabBarImageName withName:@"tabBarImageName"];
  v10 = [v3 appendObject:self->_bars withName:@"bars"];
  v11 = [v3 build];

  return v11;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

@end