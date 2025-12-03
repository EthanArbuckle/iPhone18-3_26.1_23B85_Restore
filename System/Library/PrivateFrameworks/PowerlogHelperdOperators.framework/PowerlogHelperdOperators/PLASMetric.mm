@interface PLASMetric
- (id)initMetric:(id)metric withType:(signed __int16)type withProperties:(id)properties withQuery:(id)query andSummarizerBlock:(id)block;
@end

@implementation PLASMetric

- (id)initMetric:(id)metric withType:(signed __int16)type withProperties:(id)properties withQuery:(id)query andSummarizerBlock:(id)block
{
  metricCopy = metric;
  propertiesCopy = properties;
  queryCopy = query;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = PLASMetric;
  v17 = [(PLASMetric *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_metricKey, metric);
    v18->_metricType = type;
    objc_storeStrong(&v18->_metricProperties, properties);
    v19 = MEMORY[0x25F8D2750](queryCopy);
    query = v18->_query;
    v18->_query = v19;

    v21 = MEMORY[0x25F8D2750](blockCopy);
    summarizer = v18->_summarizer;
    v18->_summarizer = v21;
  }

  return v18;
}

@end