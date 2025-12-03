@interface SIRINLUEXTERNALNLU_ROUTERAliasTypes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOptions:(id)options;
- (int)optionsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERAliasTypes

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  optionsCount = [fromCopy optionsCount];
  if (optionsCount)
  {
    v5 = optionsCount;
    for (i = 0; i != v5; ++i)
    {
      -[SIRINLUEXTERNALNLU_ROUTERAliasTypes addOptions:](self, "addOptions:", [fromCopy optionsAtIndex:i]);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self optionsCount])
  {
    [toCopy clearOptions];
    optionsCount = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self optionsCount];
    if (optionsCount)
    {
      v5 = optionsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addOptions:{-[SIRINLUEXTERNALNLU_ROUTERAliasTypes optionsAtIndex:](self, "optionsAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)to
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"options"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERAliasTypes;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEqualToString:@"homeEntity"])
  {
    v4 = 0;
  }

  else if ([optionsCopy isEqualToString:@"synonym"])
  {
    v4 = 1;
  }

  else if ([optionsCopy isEqualToString:@"transliteration"])
  {
    v4 = 2;
  }

  else if ([optionsCopy isEqualToString:@"expandedEmoji"])
  {
    v4 = 3;
  }

  else if ([optionsCopy isEqualToString:@"contactRelationship"])
  {
    v4 = 4;
  }

  else if ([optionsCopy isEqualToString:@"contactHypocorism"])
  {
    v4 = 5;
  }

  else if ([optionsCopy isEqualToString:@"contactHandle"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)optionsAtIndex:(unint64_t)index
{
  p_options = &self->_options;
  count = self->_options.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_options->list[index];
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUEXTERNALNLU_ROUTERAliasTypes;
  [(SIRINLUEXTERNALNLU_ROUTERAliasTypes *)&v3 dealloc];
}

@end