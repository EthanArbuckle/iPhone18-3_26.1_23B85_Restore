@interface _SFPBSportsTeam
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSportsTeam)initWithDictionary:(id)a3;
- (_SFPBSportsTeam)initWithFacade:(id)a3;
- (_SFPBSportsTeam)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAccessibilityDescription:(id)a3;
- (void)setName:(id)a3;
- (void)setRecord:(id)a3;
- (void)setScore:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSportsTeam

- (_SFPBSportsTeam)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSportsTeam *)self init];
  if (v5)
  {
    v6 = [v4 logo];

    if (v6)
    {
      v7 = [_SFPBImage alloc];
      v8 = [v4 logo];
      v9 = [(_SFPBImage *)v7 initWithFacade:v8];
      [(_SFPBSportsTeam *)v5 setLogo:v9];
    }

    v10 = [v4 record];

    if (v10)
    {
      v11 = [v4 record];
      [(_SFPBSportsTeam *)v5 setRecord:v11];
    }

    v12 = [v4 score];

    if (v12)
    {
      v13 = [v4 score];
      [(_SFPBSportsTeam *)v5 setScore:v13];
    }

    v14 = [v4 accessibilityDescription];

    if (v14)
    {
      v15 = [v4 accessibilityDescription];
      [(_SFPBSportsTeam *)v5 setAccessibilityDescription:v15];
    }

    v16 = [v4 name];

    if (v16)
    {
      v17 = [v4 name];
      [(_SFPBSportsTeam *)v5 setName:v17];
    }

    v18 = [v4 button];

    if (v18)
    {
      v19 = [_SFPBButtonItem alloc];
      v20 = [v4 button];
      v21 = [(_SFPBButtonItem *)v19 initWithFacade:v20];
      [(_SFPBSportsTeam *)v5 setButton:v21];
    }

    if ([v4 hasIsWinner])
    {
      -[_SFPBSportsTeam setIsWinner:](v5, "setIsWinner:", [v4 isWinner]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBSportsTeam)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFPBSportsTeam;
  v5 = [(_SFPBSportsTeam *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"logo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBImage alloc] initWithDictionary:v6];
      [(_SFPBSportsTeam *)v5 setLogo:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"record"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSportsTeam *)v5 setRecord:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSportsTeam *)v5 setScore:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"accessibilityDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBSportsTeam *)v5 setAccessibilityDescription:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSportsTeam *)v5 setName:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"button"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBButtonItem alloc] initWithDictionary:v16];
      [(_SFPBSportsTeam *)v5 setButton:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isWinner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsTeam setIsWinner:](v5, "setIsWinner:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (_SFPBSportsTeam)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSportsTeam *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSportsTeam *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessibilityDescription)
  {
    v4 = [(_SFPBSportsTeam *)self accessibilityDescription];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accessibilityDescription"];
  }

  if (self->_button)
  {
    v6 = [(_SFPBSportsTeam *)self button];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"button"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"button"];
    }
  }

  if (self->_isWinner)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSportsTeam isWinner](self, "isWinner")}];
    [v3 setObject:v9 forKeyedSubscript:@"isWinner"];
  }

  if (self->_logo)
  {
    v10 = [(_SFPBSportsTeam *)self logo];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"logo"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"logo"];
    }
  }

  if (self->_name)
  {
    v13 = [(_SFPBSportsTeam *)self name];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"name"];
  }

  if (self->_record)
  {
    v15 = [(_SFPBSportsTeam *)self record];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"record"];
  }

  if (self->_score)
  {
    v17 = [(_SFPBSportsTeam *)self score];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"score"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_SFPBSportsTeam *)self logo];
  v6 = [v4 logo];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_SFPBSportsTeam *)self logo];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSportsTeam *)self logo];
    v10 = [v4 logo];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsTeam *)self record];
  v6 = [v4 record];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_SFPBSportsTeam *)self record];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSportsTeam *)self record];
    v15 = [v4 record];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsTeam *)self score];
  v6 = [v4 score];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_SFPBSportsTeam *)self score];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBSportsTeam *)self score];
    v20 = [v4 score];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsTeam *)self accessibilityDescription];
  v6 = [v4 accessibilityDescription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_SFPBSportsTeam *)self accessibilityDescription];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBSportsTeam *)self accessibilityDescription];
    v25 = [v4 accessibilityDescription];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsTeam *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_SFPBSportsTeam *)self name];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBSportsTeam *)self name];
    v30 = [v4 name];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSportsTeam *)self button];
  v6 = [v4 button];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_SFPBSportsTeam *)self button];
    if (!v32)
    {

LABEL_35:
      isWinner = self->_isWinner;
      v37 = isWinner == [v4 isWinner];
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_SFPBSportsTeam *)self button];
    v35 = [v4 button];
    v36 = [v34 isEqual:v35];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_SFPBSportsTeam *)self logo];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBSportsTeam *)self record];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBSportsTeam *)self score];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBSportsTeam *)self accessibilityDescription];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBSportsTeam *)self name];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBSportsTeam *)self button];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSportsTeam *)self isWinner])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = [a3 copy];
  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setScore:(id)a3
{
  v4 = [a3 copy];
  score = self->_score;
  self->_score = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRecord:(id)a3
{
  v4 = [a3 copy];
  record = self->_record;
  self->_record = v4;

  MEMORY[0x1EEE66BB8]();
}

@end