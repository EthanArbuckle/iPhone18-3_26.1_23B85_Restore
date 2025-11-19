@interface _TIPreferencesAnalyzerProperty
- (_TIPreferencesAnalyzerProperty)initWithKey:(id)a3 domain:(id)a4 defaultValue:(id)a5 reportingMode:(int)a6;
@end

@implementation _TIPreferencesAnalyzerProperty

- (_TIPreferencesAnalyzerProperty)initWithKey:(id)a3 domain:(id)a4 defaultValue:(id)a5 reportingMode:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = _TIPreferencesAnalyzerProperty;
  v14 = [(_TIPreferencesAnalyzerProperty *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_key, a3);
    objc_storeStrong(&v15->_domain, a4);
    objc_storeStrong(&v15->_defaultValue, a5);
    v15->_reportingMode = a6;
  }

  return v15;
}

@end