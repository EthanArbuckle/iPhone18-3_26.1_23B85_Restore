@interface WRWidgetRendererInitializationPayload
- (WRWidgetRendererInitializationPayload)initWithCoder:(id)a3;
- (WRWidgetRendererInitializationPayload)initWithExtensions:(id)a3 configurations:(id)a4 systemEnvironment:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WRWidgetRendererInitializationPayload

- (WRWidgetRendererInitializationPayload)initWithExtensions:(id)a3 configurations:(id)a4 systemEnvironment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WRWidgetRendererInitializationPayload;
  v11 = [(WRWidgetRendererInitializationPayload *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    extensions = v11->_extensions;
    v11->_extensions = v12;

    v14 = [v9 copy];
    configurations = v11->_configurations;
    v11->_configurations = v14;

    v16 = [v10 copy];
    systemEnvironment = v11->_systemEnvironment;
    v11->_systemEnvironment = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  extensions = self->_extensions;
  v5 = a3;
  [v5 encodeObject:extensions forKey:@"extensions"];
  [v5 encodeObject:self->_configurations forKey:@"configurations"];
  [v5 encodeObject:self->_systemEnvironment forKey:@"systemEnvironment"];
}

- (WRWidgetRendererInitializationPayload)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"extensions"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"configurations"];

  v15 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"systemEnvironment"];

  v16 = 0;
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
    v16 = self;
  }

  return v16;
}

@end