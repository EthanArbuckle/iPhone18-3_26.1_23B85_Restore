@interface _DPMLRuntimeLegacyRecordParameters
- (_DPMLRuntimeLegacyRecordParameters)initWithNumBucket:(id)bucket minValue:(id)value maxValue:(id)maxValue;
@end

@implementation _DPMLRuntimeLegacyRecordParameters

- (_DPMLRuntimeLegacyRecordParameters)initWithNumBucket:(id)bucket minValue:(id)value maxValue:(id)maxValue
{
  bucketCopy = bucket;
  valueCopy = value;
  maxValueCopy = maxValue;
  v15.receiver = self;
  v15.super_class = _DPMLRuntimeLegacyRecordParameters;
  v12 = [(_DPMLRuntimeLegacyRecordParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_numBucket, bucket);
    objc_storeStrong(&v13->_minValue, value);
    objc_storeStrong(&v13->_maxValue, maxValue);
  }

  return v13;
}

@end