@interface WFNextHourPrecipitationDescription
- (BOOL)isValidAtDate:(id)a3;
- (NSString)longDescription;
- (NSString)shortDescription;
- (WFNextHourPrecipitationDescription)initWithCoder:(id)a3;
- (WFNextHourPrecipitationDescription)initWithToken:(id)a3 shortTemplate:(id)a4 longTemplate:(id)a5 parameters:(id)a6 validUntil:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fillTemplate:(id)a3 withDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFNextHourPrecipitationDescription

- (WFNextHourPrecipitationDescription)initWithToken:(id)a3 shortTemplate:(id)a4 longTemplate:(id)a5 parameters:(id)a6 validUntil:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = WFNextHourPrecipitationDescription;
  v17 = [(WFNextHourPrecipitationDescription *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    token = v17->_token;
    v17->_token = v18;

    v20 = [v13 copy];
    shortTemplate = v17->_shortTemplate;
    v17->_shortTemplate = v20;

    v22 = [v14 copy];
    longTemplate = v17->_longTemplate;
    v17->_longTemplate = v22;

    v24 = [v15 copy];
    parameters = v17->_parameters;
    v17->_parameters = v24;

    v26 = [v16 copy];
    validUntil = v17->_validUntil;
    v17->_validUntil = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSString *)self->_token copy];
  v6 = [(NSString *)self->_shortTemplate copy];
  v7 = [(NSString *)self->_longTemplate copy];
  v8 = [(NSDictionary *)self->_parameters copy];
  v9 = [(NSDate *)self->_validUntil copy];
  v10 = [v4 initWithToken:v5 shortTemplate:v6 longTemplate:v7 parameters:v8 validUntil:v9];

  return v10;
}

- (NSString)shortDescription
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WFNextHourPrecipitationDescription *)self fillTemplate:self->_shortTemplate withDate:v3];

  return v4;
}

- (NSString)longDescription
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WFNextHourPrecipitationDescription *)self fillTemplate:self->_longTemplate withDate:v3];

  return v4;
}

- (BOOL)isValidAtDate:(id)a3
{
  validUntil = self->_validUntil;
  if (!validUntil)
  {
    return 1;
  }

  [(NSDate *)validUntil timeIntervalSinceDate:a3];
  return v4 > 91.0;
}

- (id)fillTemplate:(id)a3 withDate:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"firstAt"];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", @"firstAt"];
    [v8 timeIntervalSinceDate:v6];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.0f", round(v10 / 60.0)];
    [v7 replaceOccurrencesOfString:v9 withString:v11 options:0 range:{0, objc_msgSend(v7, "length")}];
    v12 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"secondAt"];
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", @"secondAt"];
      [v12 timeIntervalSinceDate:v8];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.0f", round(v14 / 60.0)];
      [v7 replaceOccurrencesOfString:v13 withString:v15 options:0 range:{0, objc_msgSend(v7, "length")}];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFNextHourPrecipitationDescription *)self token];
  [v4 encodeObject:v5 forKey:@"WFNextHourPrecipitationDescriptionTokenKey"];

  v6 = [(WFNextHourPrecipitationDescription *)self shortTemplate];
  [v4 encodeObject:v6 forKey:@"WFNextHourPrecipitationDescriptionShortTemplateKey"];

  v7 = [(WFNextHourPrecipitationDescription *)self longTemplate];
  [v4 encodeObject:v7 forKey:@"WFNextHourPrecipitationDescriptionLongTemplateKey"];

  v8 = [(WFNextHourPrecipitationDescription *)self parameters];
  [v4 encodeObject:v8 forKey:@"WFNextHourPrecipitationDescriptionParametersKey"];

  v9 = [(WFNextHourPrecipitationDescription *)self validUntil];
  [v4 encodeObject:v9 forKey:@"WFNextHourPrecipitationDescriptionValidUntilKey"];
}

- (WFNextHourPrecipitationDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionTokenKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionShortTemplateKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionLongTemplateKey"];
  if (initWithCoder__onceToken_3 != -1)
  {
    [WFNextHourPrecipitationDescription initWithCoder:];
  }

  v8 = [v4 decodeObjectOfClasses:initWithCoder__classes_2 forKey:@"WFNextHourPrecipitationDescriptionParametersKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionValidUntilKey"];
  v10 = [(WFNextHourPrecipitationDescription *)self initWithToken:v5 shortTemplate:v6 longTemplate:v7 parameters:v8 validUntil:v9];

  return v10;
}

uint64_t __52__WFNextHourPrecipitationDescription_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = initWithCoder__classes_2;
  initWithCoder__classes_2 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

@end