@interface _SFPBSportsTeam
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSportsTeam)initWithDictionary:(id)dictionary;
- (_SFPBSportsTeam)initWithFacade:(id)facade;
- (_SFPBSportsTeam)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAccessibilityDescription:(id)description;
- (void)setName:(id)name;
- (void)setRecord:(id)record;
- (void)setScore:(id)score;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSportsTeam

- (_SFPBSportsTeam)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSportsTeam *)self init];
  if (v5)
  {
    logo = [facadeCopy logo];

    if (logo)
    {
      v7 = [_SFPBImage alloc];
      logo2 = [facadeCopy logo];
      v9 = [(_SFPBImage *)v7 initWithFacade:logo2];
      [(_SFPBSportsTeam *)v5 setLogo:v9];
    }

    record = [facadeCopy record];

    if (record)
    {
      record2 = [facadeCopy record];
      [(_SFPBSportsTeam *)v5 setRecord:record2];
    }

    score = [facadeCopy score];

    if (score)
    {
      score2 = [facadeCopy score];
      [(_SFPBSportsTeam *)v5 setScore:score2];
    }

    accessibilityDescription = [facadeCopy accessibilityDescription];

    if (accessibilityDescription)
    {
      accessibilityDescription2 = [facadeCopy accessibilityDescription];
      [(_SFPBSportsTeam *)v5 setAccessibilityDescription:accessibilityDescription2];
    }

    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBSportsTeam *)v5 setName:name2];
    }

    button = [facadeCopy button];

    if (button)
    {
      v19 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:button2];
      [(_SFPBSportsTeam *)v5 setButton:v21];
    }

    if ([facadeCopy hasIsWinner])
    {
      -[_SFPBSportsTeam setIsWinner:](v5, "setIsWinner:", [facadeCopy isWinner]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBSportsTeam)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = _SFPBSportsTeam;
  v5 = [(_SFPBSportsTeam *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBSportsTeam *)v5 setLogo:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"record"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSportsTeam *)v5 setRecord:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSportsTeam *)v5 setScore:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"accessibilityDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBSportsTeam *)v5 setAccessibilityDescription:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSportsTeam *)v5 setName:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"button"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBButtonItem alloc] initWithDictionary:v16];
      [(_SFPBSportsTeam *)v5 setButton:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isWinner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsTeam setIsWinner:](v5, "setIsWinner:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBSportsTeam)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSportsTeam *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSportsTeam *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessibilityDescription)
  {
    accessibilityDescription = [(_SFPBSportsTeam *)self accessibilityDescription];
    v5 = [accessibilityDescription copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accessibilityDescription"];
  }

  if (self->_button)
  {
    button = [(_SFPBSportsTeam *)self button];
    dictionaryRepresentation = [button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"button"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"button"];
    }
  }

  if (self->_isWinner)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSportsTeam isWinner](self, "isWinner")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isWinner"];
  }

  if (self->_logo)
  {
    logo = [(_SFPBSportsTeam *)self logo];
    dictionaryRepresentation2 = [logo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"logo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"logo"];
    }
  }

  if (self->_name)
  {
    name = [(_SFPBSportsTeam *)self name];
    v14 = [name copy];
    [dictionary setObject:v14 forKeyedSubscript:@"name"];
  }

  if (self->_record)
  {
    record = [(_SFPBSportsTeam *)self record];
    v16 = [record copy];
    [dictionary setObject:v16 forKeyedSubscript:@"record"];
  }

  if (self->_score)
  {
    score = [(_SFPBSportsTeam *)self score];
    v18 = [score copy];
    [dictionary setObject:v18 forKeyedSubscript:@"score"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBImage *)self->_logo hash];
  v4 = [(NSString *)self->_record hash];
  v5 = [(NSString *)self->_score hash];
  v6 = [(NSString *)self->_accessibilityDescription hash];
  v7 = [(NSString *)self->_name hash];
  v8 = [(_SFPBButtonItem *)self->_button hash];
  v9 = 2654435761;
  if (!self->_isWinner)
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  logo = [(_SFPBSportsTeam *)self logo];
  logo2 = [equalCopy logo];
  if ((logo != 0) == (logo2 == 0))
  {
    goto LABEL_31;
  }

  logo3 = [(_SFPBSportsTeam *)self logo];
  if (logo3)
  {
    v8 = logo3;
    logo4 = [(_SFPBSportsTeam *)self logo];
    logo5 = [equalCopy logo];
    v11 = [logo4 isEqual:logo5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  logo = [(_SFPBSportsTeam *)self record];
  logo2 = [equalCopy record];
  if ((logo != 0) == (logo2 == 0))
  {
    goto LABEL_31;
  }

  record = [(_SFPBSportsTeam *)self record];
  if (record)
  {
    v13 = record;
    record2 = [(_SFPBSportsTeam *)self record];
    record3 = [equalCopy record];
    v16 = [record2 isEqual:record3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  logo = [(_SFPBSportsTeam *)self score];
  logo2 = [equalCopy score];
  if ((logo != 0) == (logo2 == 0))
  {
    goto LABEL_31;
  }

  score = [(_SFPBSportsTeam *)self score];
  if (score)
  {
    v18 = score;
    score2 = [(_SFPBSportsTeam *)self score];
    score3 = [equalCopy score];
    v21 = [score2 isEqual:score3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  logo = [(_SFPBSportsTeam *)self accessibilityDescription];
  logo2 = [equalCopy accessibilityDescription];
  if ((logo != 0) == (logo2 == 0))
  {
    goto LABEL_31;
  }

  accessibilityDescription = [(_SFPBSportsTeam *)self accessibilityDescription];
  if (accessibilityDescription)
  {
    v23 = accessibilityDescription;
    accessibilityDescription2 = [(_SFPBSportsTeam *)self accessibilityDescription];
    accessibilityDescription3 = [equalCopy accessibilityDescription];
    v26 = [accessibilityDescription2 isEqual:accessibilityDescription3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  logo = [(_SFPBSportsTeam *)self name];
  logo2 = [equalCopy name];
  if ((logo != 0) == (logo2 == 0))
  {
    goto LABEL_31;
  }

  name = [(_SFPBSportsTeam *)self name];
  if (name)
  {
    v28 = name;
    name2 = [(_SFPBSportsTeam *)self name];
    name3 = [equalCopy name];
    v31 = [name2 isEqual:name3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  logo = [(_SFPBSportsTeam *)self button];
  logo2 = [equalCopy button];
  if ((logo != 0) != (logo2 == 0))
  {
    button = [(_SFPBSportsTeam *)self button];
    if (!button)
    {

LABEL_35:
      isWinner = self->_isWinner;
      v37 = isWinner == [equalCopy isWinner];
      goto LABEL_33;
    }

    v33 = button;
    button2 = [(_SFPBSportsTeam *)self button];
    button3 = [equalCopy button];
    v36 = [button2 isEqual:button3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  logo = [(_SFPBSportsTeam *)self logo];
  if (logo)
  {
    PBDataWriterWriteSubmessage();
  }

  record = [(_SFPBSportsTeam *)self record];
  if (record)
  {
    PBDataWriterWriteStringField();
  }

  score = [(_SFPBSportsTeam *)self score];
  if (score)
  {
    PBDataWriterWriteStringField();
  }

  accessibilityDescription = [(_SFPBSportsTeam *)self accessibilityDescription];
  if (accessibilityDescription)
  {
    PBDataWriterWriteStringField();
  }

  name = [(_SFPBSportsTeam *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  button = [(_SFPBSportsTeam *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSportsTeam *)self isWinner])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccessibilityDescription:(id)description
{
  v4 = [description copy];
  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setScore:(id)score
{
  v4 = [score copy];
  score = self->_score;
  self->_score = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRecord:(id)record
{
  v4 = [record copy];
  record = self->_record;
  self->_record = v4;

  MEMORY[0x1EEE66BB8]();
}

@end