@interface RMConfigurationUIDetails
+ (id)configurationUIWithTitle:(id)title description:(id)description details:(id)details;
+ (id)configurationUIWithTitle:(id)title description:(id)description details:(id)details hiddenDetails:(id)hiddenDetails;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfigurationUI:(id)i;
- (RMConfigurationUIDetails)initWithCoder:(id)coder;
- (RMConfigurationUIDetails)initWithTitle:(id)title description:(id)description details:(id)details hiddenDetails:(id)hiddenDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMConfigurationUIDetails

+ (id)configurationUIWithTitle:(id)title description:(id)description details:(id)details
{
  detailsCopy = details;
  descriptionCopy = description;
  titleCopy = title;
  v10 = [[RMConfigurationUIDetails alloc] initWithTitle:titleCopy description:descriptionCopy details:detailsCopy hiddenDetails:0];

  return v10;
}

+ (id)configurationUIWithTitle:(id)title description:(id)description details:(id)details hiddenDetails:(id)hiddenDetails
{
  hiddenDetailsCopy = hiddenDetails;
  detailsCopy = details;
  descriptionCopy = description;
  titleCopy = title;
  v13 = [[RMConfigurationUIDetails alloc] initWithTitle:titleCopy description:descriptionCopy details:detailsCopy hiddenDetails:hiddenDetailsCopy];

  return v13;
}

- (RMConfigurationUIDetails)initWithTitle:(id)title description:(id)description details:(id)details hiddenDetails:(id)hiddenDetails
{
  titleCopy = title;
  descriptionCopy = description;
  detailsCopy = details;
  hiddenDetailsCopy = hiddenDetails;
  v20.receiver = self;
  v20.super_class = RMConfigurationUIDetails;
  v14 = [(RMConfigurationUIDetails *)&v20 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    titleUI = v14->_titleUI;
    v14->_titleUI = v15;

    v17 = [descriptionCopy copy];
    descriptionUI = v14->_descriptionUI;
    v14->_descriptionUI = v17;

    objc_storeStrong(&v14->_detailsUI, details);
    objc_storeStrong(&v14->_hiddenDetails, hiddenDetails);
  }

  return v14;
}

- (RMConfigurationUIDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"details"];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"hiddenDetails"];

  v15 = [(RMConfigurationUIDetails *)self initWithTitle:v5 description:v6 details:v10 hiddenDetails:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleUI = [(RMConfigurationUIDetails *)self titleUI];
  [coderCopy encodeObject:titleUI forKey:@"title"];

  descriptionUI = [(RMConfigurationUIDetails *)self descriptionUI];
  [coderCopy encodeObject:descriptionUI forKey:@"description"];

  detailsUI = [(RMConfigurationUIDetails *)self detailsUI];
  [coderCopy encodeObject:detailsUI forKey:@"details"];

  hiddenDetails = [(RMConfigurationUIDetails *)self hiddenDetails];
  [coderCopy encodeObject:hiddenDetails forKey:@"hiddenDetails"];
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
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMConfigurationUIDetails *)self isEqualToConfigurationUI:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfigurationUI:(id)i
{
  iCopy = i;
  titleUI = [(RMConfigurationUIDetails *)self titleUI];
  titleUI2 = [iCopy titleUI];
  if ([titleUI isEqualToString:titleUI2])
  {
    descriptionUI = [(RMConfigurationUIDetails *)self descriptionUI];
    descriptionUI2 = [iCopy descriptionUI];
    v9 = descriptionUI;
    v10 = descriptionUI2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = 0;
      detailsUI2 = v10;
      detailsUI = v9;
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

    detailsUI = [(RMConfigurationUIDetails *)self detailsUI];
    detailsUI2 = [iCopy detailsUI];
    if ([detailsUI isEqualToArray:detailsUI2])
    {
      hiddenDetails = [(RMConfigurationUIDetails *)self hiddenDetails];
      hiddenDetails2 = [iCopy hiddenDetails];
      v18 = hiddenDetails;
      v19 = hiddenDetails2;
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