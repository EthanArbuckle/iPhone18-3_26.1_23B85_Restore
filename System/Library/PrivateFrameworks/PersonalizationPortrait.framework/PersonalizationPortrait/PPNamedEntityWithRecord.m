@interface PPNamedEntityWithRecord
- (PPNamedEntityWithRecord)initWithName:(id)a3 category:(unint64_t)a4 dynamicCategory:(id)a5 language:(id)a6 mostRelevantRecord:(id)a7;
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
  v4 = [(PPNamedEntity *)self name];
  v5 = [PPNamedEntity describeCategory:[(PPNamedEntity *)self category]];
  v6 = [(PPNamedEntity *)self bestLanguage];
  v7 = [v3 initWithFormat:@"<PPNamedEntityWithRecord n:'%@' c:'%@' l:%@ r:%p>", v4, v5, v6, self->_mostRelevantRecord];

  return v7;
}

- (PPNamedEntityWithRecord)initWithName:(id)a3 category:(unint64_t)a4 dynamicCategory:(id)a5 language:(id)a6 mostRelevantRecord:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = PPNamedEntityWithRecord;
  v14 = [(PPNamedEntity *)&v17 initWithName:a3 category:a4 dynamicCategory:a5 language:a6 mostRelevantRecord:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mostRelevantRecord, a7);
  }

  return v15;
}

@end