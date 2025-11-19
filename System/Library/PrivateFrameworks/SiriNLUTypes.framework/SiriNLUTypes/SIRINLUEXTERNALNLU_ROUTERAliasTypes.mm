@interface SIRINLUEXTERNALNLU_ROUTERAliasTypes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOptions:(id)a3;
- (int)optionsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERAliasTypes

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 optionsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[SIRINLUEXTERNALNLU_ROUTERAliasTypes addOptions:](self, "addOptions:", [v7 optionsAtIndex:i]);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self optionsCount])
  {
    [v7 clearOptions];
    v4 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self optionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addOptions:{-[SIRINLUEXTERNALNLU_ROUTERAliasTypes optionsAtIndex:](self, "optionsAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  p_options = &self->_options;
  if (self->_options.count)
  {
    v4 = 0;
    do
    {
      v5 = p_options->list[v4];
      PBDataWriterWriteInt32Field();
      ++v4;
    }

    while (v4 < p_options->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  p_options = &self->_options;
  if (self->_options.count)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (p_options->count)
    {
      v6 = 0;
      do
      {
        v7 = p_options->list[v6];
        if (v7 >= 7)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_options->list[v6]];
        }

        else
        {
          v8 = off_1E8327E40[v7];
        }

        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < p_options->count);
    }

    [v3 setObject:v5 forKey:@"options"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERAliasTypes;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"homeEntity"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"synonym"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"transliteration"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"expandedEmoji"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"contactRelationship"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"contactHypocorism"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"contactHandle"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)optionsAtIndex:(unint64_t)a3
{
  p_options = &self->_options;
  count = self->_options.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_options->list[a3];
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUEXTERNALNLU_ROUTERAliasTypes;
  [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)&v3 dealloc];
}

@end