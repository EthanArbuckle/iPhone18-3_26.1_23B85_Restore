@interface WRWidgetRendererInitializationPayload
- (WRWidgetRendererInitializationPayload)initWithCoder:(id)coder;
- (WRWidgetRendererInitializationPayload)initWithExtensions:(id)extensions configurations:(id)configurations systemEnvironment:(id)environment;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WRWidgetRendererInitializationPayload

- (WRWidgetRendererInitializationPayload)initWithExtensions:(id)extensions configurations:(id)configurations systemEnvironment:(id)environment
{
  extensionsCopy = extensions;
  configurationsCopy = configurations;
  environmentCopy = environment;
  v19.receiver = self;
  v19.super_class = WRWidgetRendererInitializationPayload;
  v11 = [(WRWidgetRendererInitializationPayload *)&v19 init];
  if (v11)
  {
    v12 = [extensionsCopy copy];
    extensions = v11->_extensions;
    v11->_extensions = v12;

    v14 = [configurationsCopy copy];
    configurations = v11->_configurations;
    v11->_configurations = v14;

    v16 = [environmentCopy copy];
    systemEnvironment = v11->_systemEnvironment;
    v11->_systemEnvironment = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  extensions = self->_extensions;
  coderCopy = coder;
  [coderCopy encodeObject:extensions forKey:@"extensions"];
  [coderCopy encodeObject:self->_configurations forKey:@"configurations"];
  [coderCopy encodeObject:self->_systemEnvironment forKey:@"systemEnvironment"];
}

- (WRWidgetRendererInitializationPayload)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"extensions"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"configurations"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemEnvironment"];

  selfCopy = 0;
  if (v9 && v14 && v15)
  {
    v20.receiver = self;
    v20.super_class = WRWidgetRendererInitializationPayload;
    v17 = [(WRWidgetRendererInitializationPayload *)&v20 init];
    p_isa = &v17->super.isa;
    if (v17)
    {
      objc_storeStrong(&v17->_extensions, v9);
      objc_storeStrong(p_isa + 2, v14);
      objc_storeStrong(p_isa + 3, v15);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

@end