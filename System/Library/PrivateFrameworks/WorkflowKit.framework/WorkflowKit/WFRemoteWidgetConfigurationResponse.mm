@interface WFRemoteWidgetConfigurationResponse
+ (id)fromSecureData:(id)a3;
- (WFRemoteWidgetConfigurationResponse)initWithCoder:(id)a3;
- (WFRemoteWidgetConfigurationResponse)initWithError:(id)a3;
@end

@implementation WFRemoteWidgetConfigurationResponse

- (WFRemoteWidgetConfigurationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFRemoteWidgetConfigurationResponse *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5 = [(WFRemoteWidgetConfigurationResponse *)v5 initWithError:v5->_error];
  }

  return v5;
}

- (WFRemoteWidgetConfigurationResponse)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFRemoteWidgetConfigurationResponse;
  v6 = [(WFRemoteWidgetConfigurationResponse *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)fromSecureData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [v4 bs_secureDecodedFromData:v3 withAdditionalClasses:v10];

  return v11;
}

@end