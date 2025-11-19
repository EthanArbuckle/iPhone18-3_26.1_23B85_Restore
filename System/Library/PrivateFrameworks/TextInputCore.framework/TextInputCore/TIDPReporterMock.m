@interface TIDPReporterMock
- (BOOL)record:(id)a3;
- (BOOL)recordNumbersVectors:(id)a3 metadata:(id)a4;
- (BOOL)recordTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5;
- (NSArray)recordsWritten;
- (TIDPReporterMock)init;
@end

@implementation TIDPReporterMock

- (NSArray)recordsWritten
{
  v2 = [(NSMutableArray *)self->_recordsWritten copy];

  return v2;
}

- (BOOL)recordTokenFrequency:(id)a3 withLocale:(id)a4 withTokenType:(id)a5
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [[v6 alloc] initWithObjects:{v7, 0}];

  [(TIDPReporterMock *)self record:v8];
  return 1;
}

- (BOOL)recordNumbersVectors:(id)a3 metadata:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TIDPReporterMock *)self record:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)record:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)self->_recordsWritten addObject:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (TIDPReporterMock)init
{
  v7.receiver = self;
  v7.super_class = TIDPReporterMock;
  v3 = [(TIDPReporterMock *)&v7 init];
  if (v3 == self)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recordsWritten = v3->_recordsWritten;
    v3->_recordsWritten = v4;
  }

  return v3;
}

@end