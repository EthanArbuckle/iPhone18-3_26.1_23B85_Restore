@interface _TIPreferencesAnalyzerProperty
- (_TIPreferencesAnalyzerProperty)initWithKey:(id)key domain:(id)domain defaultValue:(id)value reportingMode:(int)mode;
@end

@implementation _TIPreferencesAnalyzerProperty

- (_TIPreferencesAnalyzerProperty)initWithKey:(id)key domain:(id)domain defaultValue:(id)value reportingMode:(int)mode
{
  keyCopy = key;
  domainCopy = domain;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = _TIPreferencesAnalyzerProperty;
  v14 = [(_TIPreferencesAnalyzerProperty *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_key, key);
    objc_storeStrong(&v15->_domain, domain);
    objc_storeStrong(&v15->_defaultValue, value);
    v15->_reportingMode = mode;
  }

  return v15;
}

@end