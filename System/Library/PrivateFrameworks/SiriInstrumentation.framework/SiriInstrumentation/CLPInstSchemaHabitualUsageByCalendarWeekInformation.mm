@interface CLPInstSchemaHabitualUsageByCalendarWeekInformation
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaHabitualUsageByCalendarWeekInformation)initWithDictionary:(id)a3;
- (CLPInstSchemaHabitualUsageByCalendarWeekInformation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaHabitualUsageByCalendarWeekInformation

- (CLPInstSchemaHabitualUsageByCalendarWeekInformation)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CLPInstSchemaHabitualUsageByCalendarWeekInformation;
  v5 = [(CLPInstSchemaHabitualUsageByCalendarWeekInformation *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"calendarWeekNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaHabitualUsageByCalendarWeekInformation setCalendarWeekNumber:](v5, "setCalendarWeekNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaHabitualUsageByCalendarWeekInformation setWasHabitualUserDuringCalendarWeek:](v5, "setWasHabitualUserDuringCalendarWeek:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (CLPInstSchemaHabitualUsageByCalendarWeekInformation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaHabitualUsageByCalendarWeekInformation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaHabitualUsageByCalendarWeekInformation *)self dictionaryRepresentation];
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
  v4 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaHabitualUsageByCalendarWeekInformation calendarWeekNumber](self, "calendarWeekNumber")}];
    [v3 setObject:v5 forKeyedSubscript:@"calendarWeekNumber"];

    v4 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaHabitualUsageByCalendarWeekInformation wasHabitualUserDuringCalendarWeek](self, "wasHabitualUserDuringCalendarWeek")}];
    [v3 setObject:v6 forKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_wasHabitualUserDuringCalendarWeek + 1))
  {
    v2 = 2654435761 * self->_calendarWeekNumber;
    if ((*(&self->_wasHabitualUserDuringCalendarWeek + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_wasHabitualUserDuringCalendarWeek + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_wasHabitualUserDuringCalendarWeek;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
  v6 = v4[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    calendarWeekNumber = self->_calendarWeekNumber;
    if (calendarWeekNumber != [v4 calendarWeekNumber])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
    v6 = v4[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    wasHabitualUserDuringCalendarWeek = self->_wasHabitualUserDuringCalendarWeek;
    if (wasHabitualUserDuringCalendarWeek != [v4 wasHabitualUserDuringCalendarWeek])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    v5 = *(&self->_wasHabitualUserDuringCalendarWeek + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasHabitualUserDuringCalendarWeek + 1) = *(&self->_wasHabitualUserDuringCalendarWeek + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end