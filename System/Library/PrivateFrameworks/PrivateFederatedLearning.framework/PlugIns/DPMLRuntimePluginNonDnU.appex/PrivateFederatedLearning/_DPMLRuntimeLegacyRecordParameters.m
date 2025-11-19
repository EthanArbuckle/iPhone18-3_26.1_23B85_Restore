@interface _DPMLRuntimeLegacyRecordParameters
- (_DPMLRuntimeLegacyRecordParameters)initWithNumBucket:(id)a3 minValue:(id)a4 maxValue:(id)a5;
@end

@implementation _DPMLRuntimeLegacyRecordParameters

- (_DPMLRuntimeLegacyRecordParameters)initWithNumBucket:(id)a3 minValue:(id)a4 maxValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _DPMLRuntimeLegacyRecordParameters;
  v12 = [(_DPMLRuntimeLegacyRecordParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_numBucket, a3);
    objc_storeStrong(&v13->_minValue, a4);
    objc_storeStrong(&v13->_maxValue, a5);
  }

  return v13;
}

@end