@interface CLPCReportingReadResult
- (CLPCReportingReadResult)init;
- (id).cxx_construct;
- (id)debugDescription;
- (id)rowsForSchemaID:(unint64_t)d error:(id *)error;
- (unint64_t)hasRowsForSchemaID:(unint64_t)d error:(id *)error;
- (void)enumerate:(id)enumerate;
@end

@implementation CLPCReportingReadResult

- (CLPCReportingReadResult)init
{
  v7.receiver = self;
  v7.super_class = CLPCReportingReadResult;
  v2 = [(CLPCReportingReadResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v6 = 0;
    std::array<CLPCReportingRows * {__strong},11ul>::fill[abi:ne200100](v2->rows_by_schema.__elems_, &v6);

    v4 = v3;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (unint64_t)hasRowsForSchemaID:(unint64_t)d error:(id *)error
{
  if (d >= 0xB)
  {
    return 0;
  }

  else if (self->rows_by_schema.__elems_[d])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)rowsForSchemaID:(unint64_t)d error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (d >= 0xB)
  {
    v7 = 0;
  }

  else
  {
    v6 = self->rows_by_schema.__elems_[d];
    v7 = v6;
    if (!v6 || (-[CLPCReportingRows rows](v6, "rows"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, !v9))
    {
      if (error)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"There are no rows for schema ID %lu.", d];
        v14 = *MEMORY[0x277CCA068];
        v15[0] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v11];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)enumerate:(id)enumerate
{
  v3 = 0;
  p_rows_by_schema = &self->rows_by_schema;
  enumerateCopy = enumerate;
  while (1)
  {
    v5 = p_rows_by_schema->__elems_[v3];
    v6 = v5;
    if (v5)
    {
      rows = [(CLPCReportingRows *)v5 rows];
      v8 = [rows count];

      if (v8)
      {
        if ((enumerateCopy[2](enumerateCopy, v3, v6) & 1) == 0)
        {
          break;
        }
      }
    }

    if (++v3 == 11)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
}

- (id)debugDescription
{
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CLPCReportingReadResult_debugDescription__block_invoke;
  v7[3] = &unk_279A184D0;
  v4 = array;
  v8 = v4;
  [(CLPCReportingReadResult *)self enumerate:v7];
  v5 = [v4 description];

  return v5;
}

uint64_t __43__CLPCReportingReadResult_debugDescription__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEB18];
  v7 = [v5 schema];
  v8 = [v7 columns];
  v9 = [v6 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v5 schema];
  v11 = [v10 columns];

  v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [(CLPCReportingSchemaColumn *)*(*(&v22 + 1) + 8 * v14) dictionaryRepresentation];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v26[0] = @"SchemaID";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v27[0] = v17;
  v27[1] = v9;
  v26[1] = @"Columns";
  v26[2] = @"Rows";
  v18 = [v5 rows];
  v27[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v16 addObject:v19];

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

@end