@interface StockDataSource
- (NSString)localizedSourceDescription;
- (StockDataSource)initWithDictionary:(id)a3;
- (id)archiveDictionary;
- (id)description;
@end

@implementation StockDataSource

- (StockDataSource)initWithDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = StockDataSource;
  v5 = [(StockDataSource *)&v16 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 objectForKey:@"id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[StockDataSource setIdentifier:](v5, "setIdentifier:", [v6 integerValue]);
  }

  v7 = [v4 objectForKey:@"name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(StockDataSource *)v5 setName:v7];
  }

  v8 = [v4 objectForKey:@"text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(StockDataSource *)v5 setSourceDescription:v8];
  }

  v9 = [(StockDataSource *)v5 name];
  if ([v9 length])
  {
    v10 = [(StockDataSource *)v5 sourceDescription];
    v11 = [v10 length];

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
    v14 = [(StockDataSource *)v5 identifier];
    *buf = 134217984;
    v18 = v14;
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

  v4 = [(StockDataSource *)self name];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [StocksBundles getBundle:1];
    v7 = [v6 localizedStringForKey:v5 value:&stru_287C73C90 table:@"Localizable"];
  }

  else
  {
    v7 = [(StockDataSource *)self sourceDescription];
  }

  return v7;
}

- (id)archiveDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"id";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[StockDataSource identifier](self, "identifier")}];
  v9[0] = v3;
  v8[1] = @"name";
  v4 = [(StockDataSource *)self name];
  v9[1] = v4;
  v8[2] = @"text";
  v5 = [(StockDataSource *)self sourceDescription];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(StockDataSource *)self identifier];
  v5 = [(StockDataSource *)self name];
  v6 = [(StockDataSource *)self sourceDescription];
  v7 = [v3 stringWithFormat:@"<StockDataSource: %p, %i, %@, %@>", self, v4, v5, v6];

  return v7;
}

@end