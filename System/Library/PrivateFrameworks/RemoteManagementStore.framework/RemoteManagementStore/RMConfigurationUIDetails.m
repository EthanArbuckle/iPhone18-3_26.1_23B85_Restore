@interface RMConfigurationUIDetails
+ (id)configurationUIWithTitle:(id)a3 description:(id)a4 details:(id)a5;
+ (id)configurationUIWithTitle:(id)a3 description:(id)a4 details:(id)a5 hiddenDetails:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfigurationUI:(id)a3;
- (RMConfigurationUIDetails)initWithCoder:(id)a3;
- (RMConfigurationUIDetails)initWithTitle:(id)a3 description:(id)a4 details:(id)a5 hiddenDetails:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMConfigurationUIDetails

+ (id)configurationUIWithTitle:(id)a3 description:(id)a4 details:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RMConfigurationUIDetails alloc] initWithTitle:v9 description:v8 details:v7 hiddenDetails:0];

  return v10;
}

+ (id)configurationUIWithTitle:(id)a3 description:(id)a4 details:(id)a5 hiddenDetails:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[RMConfigurationUIDetails alloc] initWithTitle:v12 description:v11 details:v10 hiddenDetails:v9];

  return v13;
}

- (RMConfigurationUIDetails)initWithTitle:(id)a3 description:(id)a4 details:(id)a5 hiddenDetails:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = RMConfigurationUIDetails;
  v14 = [(RMConfigurationUIDetails *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    titleUI = v14->_titleUI;
    v14->_titleUI = v15;

    v17 = [v11 copy];
    descriptionUI = v14->_descriptionUI;
    v14->_descriptionUI = v17;

    objc_storeStrong(&v14->_detailsUI, a5);
    objc_storeStrong(&v14->_hiddenDetails, a6);
  }

  return v14;
}

- (RMConfigurationUIDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"details"];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"hiddenDetails"];

  v15 = [(RMConfigurationUIDetails *)self initWithTitle:v5 description:v6 details:v10 hiddenDetails:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMConfigurationUIDetails *)self titleUI];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(RMConfigurationUIDetails *)self descriptionUI];
  [v4 encodeObject:v6 forKey:@"description"];

  v7 = [(RMConfigurationUIDetails *)self detailsUI];
  [v4 encodeObject:v7 forKey:@"details"];

  v8 = [(RMConfigurationUIDetails *)self hiddenDetails];
  [v4 encodeObject:v8 forKey:@"hiddenDetails"];
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
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMConfigurationUIDetails *)self isEqualToConfigurationUI:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfigurationUI:(id)a3
{
  v4 = a3;
  v5 = [(RMConfigurationUIDetails *)self titleUI];
  v6 = [v4 titleUI];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMConfigurationUIDetails *)self descriptionUI];
    v8 = [v4 descriptionUI];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        v12 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    v14 = [(RMConfigurationUIDetails *)self detailsUI];
    v13 = [v4 detailsUI];
    if ([v14 isEqualToArray:v13])
    {
      v16 = [(RMConfigurationUIDetails *)self hiddenDetails];
      v17 = [v4 hiddenDetails];
      v18 = v16;
      v19 = v17;
      v20 = v19;
      if (v18 == v19)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v18 && v19)
        {
          v12 = [v18 isEqual:v19];
        }
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

@end