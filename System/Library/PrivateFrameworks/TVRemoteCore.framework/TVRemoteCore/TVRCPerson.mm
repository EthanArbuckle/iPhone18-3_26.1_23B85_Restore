@interface TVRCPerson
+ (id)personWithDictionary:(id)a3;
- (CGSize)imageSize;
- (TVRCPerson)initWithDictionary:(id)a3;
- (id)_dateFromNumber:(id)a3;
- (id)_formattedDateWithDate:(id)a3;
- (id)_urlFromString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedAge;
- (id)formattedBirthDate;
- (id)formattedDeathDate;
@end

@implementation TVRCPerson

- (TVRCPerson)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = TVRCPerson;
  v5 = [(TVRCPerson *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"images"];
    v7 = [v6 objectForKeyedSubscript:@"headshot"];

    v8 = [v4 objectForKeyedSubscript:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"title"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 objectForKeyedSubscript:@"bio"];
    bio = v5->_bio;
    v5->_bio = v12;

    v14 = [v7 objectForKeyedSubscript:@"url"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v14;

    v16 = [v7 objectForKeyedSubscript:@"height"];
    v17 = [v7 objectForKeyedSubscript:@"width"];
    objc_opt_class();
    v18 = 1000.0;
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = 1000.0;
      if (isKindOfClass)
      {
        [v17 floatValue];
        v18 = v21;
        [v16 floatValue];
        v20 = v22;
      }
    }

    else
    {
      v20 = 1000.0;
    }

    v5->_imageSize.width = v18;
    v5->_imageSize.height = v20;

    v23 = [v4 objectForKeyedSubscript:@"birthplace"];
    birthplace = v5->_birthplace;
    v5->_birthplace = v23;

    v25 = [v4 objectForKeyedSubscript:@"birthDate"];
    v26 = [(TVRCPerson *)v5 _dateFromNumber:v25];
    birthDate = v5->_birthDate;
    v5->_birthDate = v26;

    v28 = [v4 objectForKeyedSubscript:@"deathDate"];
    v29 = [(TVRCPerson *)v5 _dateFromNumber:v28];
    deathDate = v5->_deathDate;
    v5->_deathDate = v29;

    v31 = [v4 objectForKeyedSubscript:@"url"];
    v32 = [(TVRCPerson *)v5 _urlFromString:v31];
    url = v5->_url;
    v5->_url = v32;
  }

  return v5;
}

+ (id)personWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TVRCPerson);
  v5 = [(TVRCPerson *)self identifier];
  [(TVRCPerson *)v4 setIdentifier:v5];

  v6 = [(TVRCPerson *)self name];
  [(TVRCPerson *)v4 setName:v6];

  v7 = [(TVRCPerson *)self bio];
  [(TVRCPerson *)v4 setBio:v7];

  v8 = [(TVRCPerson *)self imageURLTemplate];
  [(TVRCPerson *)v4 setImageURLTemplate:v8];

  [(TVRCPerson *)self imageSize];
  [(TVRCPerson *)v4 setImageSize:?];
  v9 = [(TVRCPerson *)self birthplace];
  [(TVRCPerson *)v4 setBirthplace:v9];

  v10 = [(TVRCPerson *)self birthDate];
  [(TVRCPerson *)v4 setBirthDate:v10];

  v11 = [(TVRCPerson *)self deathDate];
  [(TVRCPerson *)v4 setDeathDate:v11];

  v12 = [(TVRCPerson *)self url];
  [(TVRCPerson *)v4 setUrl:v12];

  return v4;
}

- (id)formattedBirthDate
{
  v3 = [(TVRCPerson *)self birthDate];

  if (v3)
  {
    v4 = [(TVRCPerson *)self birthDate];
    v5 = [(TVRCPerson *)self _formattedDateWithDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedDeathDate
{
  v3 = [(TVRCPerson *)self deathDate];

  if (v3)
  {
    v4 = [(TVRCPerson *)self deathDate];
    v5 = [(TVRCPerson *)self _formattedDateWithDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedAge
{
  v3 = [(TVRCPerson *)self birthDate];
  v4 = [(TVRCPerson *)self deathDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
  }

  v7 = v6;

  v8 = 0;
  if (v3 && v7)
  {
    if (formattedAge_onceToken != -1)
    {
      [TVRCPerson formattedAge];
    }

    [v7 timeIntervalSinceDate:v3];
    v8 = [formattedAge_formatter stringFromTimeInterval:?];
  }

  return v8;
}

uint64_t __26__TVRCPerson_formattedAge__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA958]);
  v1 = formattedAge_formatter;
  formattedAge_formatter = v0;

  [formattedAge_formatter setUnitsStyle:1];
  v2 = formattedAge_formatter;

  return [v2 setAllowedUnits:4];
}

- (id)_dateFromNumber:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v3 doubleValue], v4 != 0.0))
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4 / 1000.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_urlFromString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_formattedDateWithDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_formattedDateWithDate__onceToken != -1)
    {
      [TVRCPerson _formattedDateWithDate:];
    }

    v4 = [_formattedDateWithDate__formatter stringFromDate:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __37__TVRCPerson__formattedDateWithDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _formattedDateWithDate__formatter;
  _formattedDateWithDate__formatter = v0;

  [_formattedDateWithDate__formatter setDateStyle:2];
  v2 = _formattedDateWithDate__formatter;

  return [v2 setTimeStyle:0];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end