@interface REElementArchiver
- (REElementArchiver)initWithEngine:(id)engine;
- (id)_supportedClasses;
- (id)dataWithElement:(id)element;
- (id)elementWithData:(id)data;
@end

@implementation REElementArchiver

- (REElementArchiver)initWithEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = REElementArchiver;
  v6 = [(REElementArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engine, engine);
  }

  return v7;
}

- (id)_supportedClasses
{
  if (_supportedClasses_onceToken != -1)
  {
    [REElementArchiver _supportedClasses];
  }

  v3 = _supportedClasses_Classes;

  return v3;
}

void __38__REElementArchiver__supportedClasses__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:5];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8}];
  v3 = _supportedClasses_Classes;
  _supportedClasses_Classes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)elementWithData:(id)data
{
  v4 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  _supportedClasses = [(REElementArchiver *)self _supportedClasses];
  v12 = 0;
  v7 = [v4 unarchivedObjectOfClasses:_supportedClasses fromData:dataCopy error:&v12];

  v8 = v12;
  if (v7)
  {
    v9 = [(RERelevanceEngine *)self->_engine elementFromDictionary:v7];
  }

  else
  {
    v10 = RELogForDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(REElementArchiver *)v8 elementWithData:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)dataWithElement:(id)element
{
  v3 = [(RERelevanceEngine *)self->_engine dictionaryFromElement:element];
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = RELogForDomain(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(REElementArchiver *)v5 dataWithElement:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)elementWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to decode REElement from data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dataWithElement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to encode REElement to data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end