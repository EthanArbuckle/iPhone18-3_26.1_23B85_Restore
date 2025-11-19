@interface PLASMetric
- (id)initMetric:(id)a3 withType:(signed __int16)a4 withProperties:(id)a5 withQuery:(id)a6 andSummarizerBlock:(id)a7;
@end

@implementation PLASMetric

- (id)initMetric:(id)a3 withType:(signed __int16)a4 withProperties:(id)a5 withQuery:(id)a6 andSummarizerBlock:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = PLASMetric;
  v17 = [(PLASMetric *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_metricKey, a3);
    v18->_metricType = a4;
    objc_storeStrong(&v18->_metricProperties, a5);
    v19 = MEMORY[0x25F8D2750](v15);
    query = v18->_query;
    v18->_query = v19;

    v21 = MEMORY[0x25F8D2750](v16);
    summarizer = v18->_summarizer;
    v18->_summarizer = v21;
  }

  return v18;
}

@end