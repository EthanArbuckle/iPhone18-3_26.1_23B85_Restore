@interface _SFPBReminder
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBReminder)initWithDictionary:(id)dictionary;
- (_SFPBReminder)initWithFacade:(id)facade;
- (_SFPBReminder)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setNotes:(id)notes;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBReminder

- (_SFPBReminder)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBReminder *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBReminder *)v5 setTitle:title2];
    }

    dueDate = [facadeCopy dueDate];

    if (dueDate)
    {
      v9 = [_SFPBDate alloc];
      dueDate2 = [facadeCopy dueDate];
      v11 = [(_SFPBDate *)v9 initWithNSDate:dueDate2];
      [(_SFPBReminder *)v5 setDueDate:v11];
    }

    notes = [facadeCopy notes];

    if (notes)
    {
      notes2 = [facadeCopy notes];
      [(_SFPBReminder *)v5 setNotes:notes2];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBReminder)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBReminder;
  v5 = [(_SFPBReminder *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBReminder *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dueDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDate alloc] initWithDictionary:v8];
      [(_SFPBReminder *)v5 setDueDate:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBReminder *)v5 setNotes:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBReminder)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBReminder *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBReminder *)self dictionaryRepresentation];
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
  if (self->_dueDate)
  {
    dueDate = [(_SFPBReminder *)self dueDate];
    dictionaryRepresentation = [dueDate dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dueDate"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dueDate"];
    }
  }

  if (self->_notes)
  {
    notes = [(_SFPBReminder *)self notes];
    v8 = [notes copy];
    [dictionary setObject:v8 forKeyedSubscript:@"notes"];
  }

  if (self->_title)
  {
    title = [(_SFPBReminder *)self title];
    v10 = [title copy];
    [dictionary setObject:v10 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(_SFPBDate *)self->_dueDate hash]^ v3;
  return v4 ^ [(NSString *)self->_notes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = [(_SFPBReminder *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_16;
  }

  title3 = [(_SFPBReminder *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBReminder *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  title = [(_SFPBReminder *)self dueDate];
  title2 = [equalCopy dueDate];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_16;
  }

  dueDate = [(_SFPBReminder *)self dueDate];
  if (dueDate)
  {
    v13 = dueDate;
    dueDate2 = [(_SFPBReminder *)self dueDate];
    dueDate3 = [equalCopy dueDate];
    v16 = [dueDate2 isEqual:dueDate3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  title = [(_SFPBReminder *)self notes];
  title2 = [equalCopy notes];
  if ((title != 0) != (title2 == 0))
  {
    notes = [(_SFPBReminder *)self notes];
    if (!notes)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = notes;
    notes2 = [(_SFPBReminder *)self notes];
    notes3 = [equalCopy notes];
    v21 = [notes2 isEqual:notes3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBReminder *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  dueDate = [(_SFPBReminder *)self dueDate];
  if (dueDate)
  {
    PBDataWriterWriteSubmessage();
  }

  notes = [(_SFPBReminder *)self notes];
  if (notes)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setNotes:(id)notes
{
  v4 = [notes copy];
  notes = self->_notes;
  self->_notes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end