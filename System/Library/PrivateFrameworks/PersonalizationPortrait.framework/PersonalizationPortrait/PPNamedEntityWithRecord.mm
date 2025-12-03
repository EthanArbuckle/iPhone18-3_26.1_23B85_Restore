@interface PPNamedEntityWithRecord
- (PPNamedEntityWithRecord)initWithName:(id)name category:(unint64_t)category dynamicCategory:(id)dynamicCategory language:(id)language mostRelevantRecord:(id)record;
- (double)sentimentScore;
- (id)description;
@end

@implementation PPNamedEntityWithRecord

- (double)sentimentScore
{
  mostRelevantRecord = self->_mostRelevantRecord;
  if (!mostRelevantRecord)
  {
    return 0.0;
  }

  [(PPNamedEntityRecord *)mostRelevantRecord sentimentScore];
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(PPNamedEntity *)self name];
  v5 = [PPNamedEntity describeCategory:[(PPNamedEntity *)self category]];
  bestLanguage = [(PPNamedEntity *)self bestLanguage];
  v7 = [v3 initWithFormat:@"<PPNamedEntityWithRecord n:'%@' c:'%@' l:%@ r:%p>", name, v5, bestLanguage, self->_mostRelevantRecord];

  return v7;
}

- (PPNamedEntityWithRecord)initWithName:(id)name category:(unint64_t)category dynamicCategory:(id)dynamicCategory language:(id)language mostRelevantRecord:(id)record
{
  recordCopy = record;
  v17.receiver = self;
  v17.super_class = PPNamedEntityWithRecord;
  v14 = [(PPNamedEntity *)&v17 initWithName:name category:category dynamicCategory:dynamicCategory language:language mostRelevantRecord:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mostRelevantRecord, record);
  }

  return v15;
}

@end