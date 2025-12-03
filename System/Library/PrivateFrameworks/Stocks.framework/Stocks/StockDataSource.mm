@interface StockDataSource
- (NSString)localizedSourceDescription;
- (StockDataSource)initWithDictionary:(id)dictionary;
- (id)archiveDictionary;
- (id)description;
@end

@implementation StockDataSource

- (StockDataSource)initWithDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = StockDataSource;
  v5 = [(StockDataSource *)&v16 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [dictionaryCopy objectForKey:@"id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[StockDataSource setIdentifier:](v5, "setIdentifier:", [v6 integerValue]);
  }

  v7 = [dictionaryCopy objectForKey:@"name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(StockDataSource *)v5 setName:v7];
  }

  v8 = [dictionaryCopy objectForKey:@"text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(StockDataSource *)v5 setSourceDescription:v8];
  }

  name = [(StockDataSource *)v5 name];
  if ([name length])
  {
    sourceDescription = [(StockDataSource *)v5 sourceDescription];
    v11 = [sourceDescription length];

    if (v11)
    {

LABEL_11:
      v12 = v5;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = StocksLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(StockDataSource *)v5 identifier];
    *buf = 134217984;
    v18 = identifier;
    _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring data source ID %llu with empty name or description", buf, 0xCu);
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSString)localizedSourceDescription
{
  v3 = localizedSourceDescription_dataSourceMap;
  if (!localizedSourceDescription_dataSourceMap)
  {
    localizedSourceDescription_dataSourceMap = &unk_287C810C0;

    v3 = &unk_287C810C0;
  }

  name = [(StockDataSource *)self name];
  v5 = [v3 objectForKeyedSubscript:name];

  if (v5)
  {
    v6 = [StocksBundles getBundle:1];
    sourceDescription = [v6 localizedStringForKey:v5 value:&stru_287C73C90 table:@"Localizable"];
  }

  else
  {
    sourceDescription = [(StockDataSource *)self sourceDescription];
  }

  return sourceDescription;
}

- (id)archiveDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"id";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[StockDataSource identifier](self, "identifier")}];
  v9[0] = v3;
  v8[1] = @"name";
  name = [(StockDataSource *)self name];
  v9[1] = name;
  v8[2] = @"text";
  sourceDescription = [(StockDataSource *)self sourceDescription];
  v9[2] = sourceDescription;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(StockDataSource *)self identifier];
  name = [(StockDataSource *)self name];
  sourceDescription = [(StockDataSource *)self sourceDescription];
  v7 = [v3 stringWithFormat:@"<StockDataSource: %p, %i, %@, %@>", self, identifier, name, sourceDescription];

  return v7;
}

@end