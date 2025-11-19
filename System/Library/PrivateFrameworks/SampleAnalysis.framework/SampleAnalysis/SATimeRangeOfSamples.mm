@interface SATimeRangeOfSamples
- (SATimeRangeOfSamples)initWithStartTime:(id)a3 endTime:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6;
- (id)debugDescription;
@end

@implementation SATimeRangeOfSamples

- (SATimeRangeOfSamples)initWithStartTime:(id)a3 endTime:(id)a4 startSampleIndex:(unint64_t)a5 endSampleIndex:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = SATimeRangeOfSamples;
  v10 = [(SATimeRangeOfSamples *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startTime, a3);
    objc_storeStrong(&v11->_endTime, a4);
    v11->_startSampleIndex = a5;
    v11->_endSampleIndex = a6;
  }

  return v11;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  startSampleIndex = self->_startSampleIndex;
  endSampleIndex = self->_endSampleIndex;
  v6 = [(SATimestamp *)self->_startTime debugDescription];
  v7 = [(SATimestamp *)self->_endTime debugDescription];
  v8 = [v3 initWithFormat:@"%lu-%lu %@-%@", startSampleIndex, endSampleIndex, v6, v7];

  return v8;
}

@end