@interface SiriCoreSQLiteQueryResult
- (SiriCoreSQLiteQueryResult)initWithQuery:(id)query beginMachTime:(unint64_t)time endMachTime:(unint64_t)machTime statement:(id)statement columnNameTuple:(id)tuple columnValueTuples:(id)tuples columnValuesMap:(id)map rowValueTuples:(id)self0 rowValueMaps:(id)self1 records:(id)self2 error:(id)self3;
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

- (SiriCoreSQLiteQueryResult)initWithQuery:(id)query beginMachTime:(unint64_t)time endMachTime:(unint64_t)machTime statement:(id)statement columnNameTuple:(id)tuple columnValueTuples:(id)tuples columnValuesMap:(id)map rowValueTuples:(id)self0 rowValueMaps:(id)self1 records:(id)self2 error:(id)self3
{
  queryCopy = query;
  statementCopy = statement;
  tupleCopy = tuple;
  tuplesCopy = tuples;
  mapCopy = map;
  v21 = tupleCopy;
  valueTuplesCopy = valueTuples;
  mapsCopy = maps;
  recordsCopy = records;
  errorCopy = error;
  v47.receiver = self;
  v47.super_class = SiriCoreSQLiteQueryResult;
  v26 = [(SiriCoreSQLiteQueryResult *)&v47 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_query, query);
    v27->_beginMachTime = time;
    v27->_endMachTime = machTime;
    objc_storeStrong(&v27->_statement, statement);
    v28 = [v21 copy];
    columnNameTuple = v27->_columnNameTuple;
    v27->_columnNameTuple = v28;

    v30 = [tuplesCopy copy];
    columnValueTuples = v27->_columnValueTuples;
    v27->_columnValueTuples = v30;

    v32 = [mapCopy copy];
    columnValuesMap = v27->_columnValuesMap;
    v27->_columnValuesMap = v32;

    v34 = [valueTuplesCopy copy];
    rowValueTuples = v27->_rowValueTuples;
    v27->_rowValueTuples = v34;

    v36 = [mapsCopy copy];
    rowValueMaps = v27->_rowValueMaps;
    v27->_rowValueMaps = v36;

    v38 = [recordsCopy copy];
    records = v27->_records;
    v27->_records = v38;

    v40 = [errorCopy copy];
    error = v27->_error;
    v27->_error = v40;
  }

  return v27;
}

@end