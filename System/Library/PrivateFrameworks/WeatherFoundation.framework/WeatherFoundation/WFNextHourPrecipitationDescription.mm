@interface WFNextHourPrecipitationDescription
- (BOOL)isValidAtDate:(id)date;
- (NSString)longDescription;
- (NSString)shortDescription;
- (WFNextHourPrecipitationDescription)initWithCoder:(id)coder;
- (WFNextHourPrecipitationDescription)initWithToken:(id)token shortTemplate:(id)template longTemplate:(id)longTemplate parameters:(id)parameters validUntil:(id)until;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fillTemplate:(id)template withDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNextHourPrecipitationDescription

- (WFNextHourPrecipitationDescription)initWithToken:(id)token shortTemplate:(id)template longTemplate:(id)longTemplate parameters:(id)parameters validUntil:(id)until
{
  tokenCopy = token;
  templateCopy = template;
  longTemplateCopy = longTemplate;
  parametersCopy = parameters;
  untilCopy = until;
  v29.receiver = self;
  v29.super_class = WFNextHourPrecipitationDescription;
  v17 = [(WFNextHourPrecipitationDescription *)&v29 init];
  if (v17)
  {
    v18 = [tokenCopy copy];
    token = v17->_token;
    v17->_token = v18;

    v20 = [templateCopy copy];
    shortTemplate = v17->_shortTemplate;
    v17->_shortTemplate = v20;

    v22 = [longTemplateCopy copy];
    longTemplate = v17->_longTemplate;
    v17->_longTemplate = v22;

    v24 = [parametersCopy copy];
    parameters = v17->_parameters;
    v17->_parameters = v24;

    v26 = [untilCopy copy];
    validUntil = v17->_validUntil;
    v17->_validUntil = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(WFNextHourPrecipitationDescription *)self fillTemplate:self->_shortTemplate withDate:date];

  return v4;
}

- (NSString)longDescription
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(WFNextHourPrecipitationDescription *)self fillTemplate:self->_longTemplate withDate:date];

  return v4;
}

- (BOOL)isValidAtDate:(id)date
{
  validUntil = self->_validUntil;
  if (!validUntil)
  {
    return 1;
  }

  [(NSDate *)validUntil timeIntervalSinceDate:date];
  return v4 > 91.0;
}

- (id)fillTemplate:(id)template withDate:(id)date
{
  dateCopy = date;
  v7 = [template mutableCopy];
  v8 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"firstAt"];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", @"firstAt"];
    [v8 timeIntervalSinceDate:dateCopy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  token = [(WFNextHourPrecipitationDescription *)self token];
  [coderCopy encodeObject:token forKey:@"WFNextHourPrecipitationDescriptionTokenKey"];

  shortTemplate = [(WFNextHourPrecipitationDescription *)self shortTemplate];
  [coderCopy encodeObject:shortTemplate forKey:@"WFNextHourPrecipitationDescriptionShortTemplateKey"];

  longTemplate = [(WFNextHourPrecipitationDescription *)self longTemplate];
  [coderCopy encodeObject:longTemplate forKey:@"WFNextHourPrecipitationDescriptionLongTemplateKey"];

  parameters = [(WFNextHourPrecipitationDescription *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"WFNextHourPrecipitationDescriptionParametersKey"];

  validUntil = [(WFNextHourPrecipitationDescription *)self validUntil];
  [coderCopy encodeObject:validUntil forKey:@"WFNextHourPrecipitationDescriptionValidUntilKey"];
}

- (WFNextHourPrecipitationDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionTokenKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionShortTemplateKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionLongTemplateKey"];
  if (initWithCoder__onceToken_3 != -1)
  {
    [WFNextHourPrecipitationDescription initWithCoder:];
  }

  v8 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_2 forKey:@"WFNextHourPrecipitationDescriptionParametersKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFNextHourPrecipitationDescriptionValidUntilKey"];
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