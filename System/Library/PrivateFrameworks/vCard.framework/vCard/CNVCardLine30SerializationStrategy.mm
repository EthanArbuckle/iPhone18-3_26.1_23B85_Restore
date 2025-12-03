@interface CNVCardLine30SerializationStrategy
- (id)detectedTypeOfData:(id)data;
- (void)_addAutomagicParametersForData:(id)data;
- (void)serializeArray:(id)array withItemSeparator:(id)separator;
- (void)serializeData:(id)data;
- (void)serializeGroupedLines:(id)lines withGroupingName:(id)name;
- (void)serializeGroupingName:(id)name;
- (void)serializeParameters:(id)parameters;
- (void)serializeString:(id)string;
@end

@implementation CNVCardLine30SerializationStrategy

- (void)serializeGroupingName:(id)name
{
  nameCopy = name;
  if (((*(*MEMORY[0x277CFBD30] + 16))() & 1) == 0)
  {
    [(CNVCardSerializationStorage *)self->super._storage appendFormat:@"%@.", nameCopy];
  }
}

- (void)serializeParameters:(id)parameters
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [parameters _cn_map:&__block_literal_global_8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CNVCardSerializationStorage *)self->super._storage appendFormat:@";%@", *(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __58__CNVCardLine30SerializationStrategy_serializeParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [CNVCardParameterEncoder encodeParameterValue:v3];

  v5 = *MEMORY[0x277CFBD30];
  v6 = [v2 name];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v2 name];
    v7 = [v8 stringWithFormat:@"%@=%@", v9, v4];
  }

  return v7;
}

- (void)serializeGroupedLines:(id)lines withGroupingName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [linesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(linesCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        [(CNVCardSerializationStorage *)self->super._storage appendFormat:@"%@.", nameCopy];
        [v12 serializeWithStrategy:self];
        ++v11;
      }

      while (v9 != v11);
      v9 = [linesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)serializeString:(id)string
{
  storage = self->super._storage;
  v4 = [CNVCardValueEncoder encodeValue:string];
  [(CNVCardSerializationStorage *)storage appendFormat:@":%@", v4];
}

- (void)serializeArray:(id)array withItemSeparator:(id)separator
{
  separatorCopy = separator;
  v7 = [array _cn_map:&__block_literal_global_106];
  v10 = v7;
  if (separatorCopy)
  {
    v8 = separatorCopy;
  }

  else
  {
    v8 = @";";
  }

  v9 = [v7 componentsJoinedByString:v8];
  [(CNVCardSerializationStorage *)self->super._storage appendFormat:@":%@", v9];
}

- (void)serializeData:(id)data
{
  dataCopy = data;
  [(CNVCardLine30SerializationStrategy *)self _addAutomagicParametersForData:dataCopy];
  [(CNVCardSerializationStorage *)self->super._storage appendString:@":"];
  v6 = [dataCopy _cn_encodeVCardBase64DataWithInitialLength:{-[CNVCardSerializationStorage currentLength](self->super._storage, "currentLength") - self->_startingLineLength}];

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:1];
  [(CNVCardSerializationStorage *)self->super._storage appendString:v5];
}

- (void)_addAutomagicParametersForData:(id)data
{
  storage = self->super._storage;
  dataCopy = data;
  [(CNVCardSerializationStorage *)storage appendString:@";ENCODING=b"];
  v6 = [(CNVCardLine30SerializationStrategy *)self detectedTypeOfData:dataCopy];

  if (v6)
  {
    [(CNVCardSerializationStorage *)self->super._storage appendFormat:@";TYPE=%@", v6];
  }

  MEMORY[0x2821F96F8]();
}

- (id)detectedTypeOfData:(id)data
{
  if ([CNVCardData isJPEGData:data])
  {
    return @"JPEG";
  }

  else
  {
    return 0;
  }
}

@end