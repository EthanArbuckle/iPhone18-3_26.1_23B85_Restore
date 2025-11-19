@interface SiriCoreSQLiteQueryResult
- (SiriCoreSQLiteQueryResult)initWithQuery:(id)a3 beginMachTime:(unint64_t)a4 endMachTime:(unint64_t)a5 statement:(id)a6 columnNameTuple:(id)a7 columnValueTuples:(id)a8 columnValuesMap:(id)a9 rowValueTuples:(id)a10 rowValueMaps:(id)a11 records:(id)a12 error:(id)a13;
- (id)description;
@end

@implementation SiriCoreSQLiteQueryResult

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = SiriCoreSQLiteQueryResult;
  v4 = [(SiriCoreSQLiteQueryResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {query = %@, beginMachTime = %llu, endMachTime = %llu", v4, self->_query, self->_beginMachTime, self->_endMachTime];

  if (self->_columnNameTuple)
  {
    [v5 appendFormat:@", columnNameTuple = %@", self->_columnNameTuple];
  }

  if (self->_columnValueTuples)
  {
    [v5 appendFormat:@", columnValueTuples = %@", self->_columnValueTuples];
  }

  if (self->_columnValuesMap)
  {
    [v5 appendFormat:@", columnValuesMap = %@", self->_columnValuesMap];
  }

  if (self->_rowValueTuples)
  {
    [v5 appendFormat:@", rowValueTuples = %@", self->_rowValueTuples];
  }

  if (self->_rowValueMaps)
  {
    [v5 appendFormat:@", rowValueMaps = %@", self->_rowValueMaps];
  }

  if (self->_records)
  {
    [v5 appendFormat:@", records = %@", self->_records];
  }

  if (self->_error)
  {
    [v5 appendFormat:@", error = %@", self->_error];
  }

  [v5 appendString:@"}"];

  return v5;
}

- (SiriCoreSQLiteQueryResult)initWithQuery:(id)a3 beginMachTime:(unint64_t)a4 endMachTime:(unint64_t)a5 statement:(id)a6 columnNameTuple:(id)a7 columnValueTuples:(id)a8 columnValuesMap:(id)a9 rowValueTuples:(id)a10 rowValueMaps:(id)a11 records:(id)a12 error:(id)a13
{
  v46 = a3;
  v45 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v18;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v47.receiver = self;
  v47.super_class = SiriCoreSQLiteQueryResult;
  v26 = [(SiriCoreSQLiteQueryResult *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_query, a3);
    v27->_beginMachTime = a4;
    v27->_endMachTime = a5;
    objc_storeStrong(&v27->_statement, a6);
    v28 = [v21 copy];
    columnNameTuple = v27->_columnNameTuple;
    v27->_columnNameTuple = v28;

    v30 = [v19 copy];
    columnValueTuples = v27->_columnValueTuples;
    v27->_columnValueTuples = v30;

    v32 = [v20 copy];
    columnValuesMap = v27->_columnValuesMap;
    v27->_columnValuesMap = v32;

    v34 = [v22 copy];
    rowValueTuples = v27->_rowValueTuples;
    v27->_rowValueTuples = v34;

    v36 = [v23 copy];
    rowValueMaps = v27->_rowValueMaps;
    v27->_rowValueMaps = v36;

    v38 = [v24 copy];
    records = v27->_records;
    v27->_records = v38;

    v40 = [v25 copy];
    error = v27->_error;
    v27->_error = v40;
  }

  return v27;
}

@end