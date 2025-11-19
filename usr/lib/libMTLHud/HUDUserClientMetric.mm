@interface HUDUserClientMetric
- (HUDUserClientMetric)initWithBridgedDescriptor:(HUDMetricDescriptor *)a3 record:(HUDValueHistoryRecord *)a4;
- (HUDUserClientMetric)initWithDescriptor:(HUDMetricDescriptor *)a3;
- (HUDValueHistoryRecord)record;
- (NSString)displayName;
- (NSString)stringValue;
- (double)averageValueForAllSamples;
- (double)averageValueForLastSampleCountSamples;
- (double)floatValue;
- (double)maxValueForAllSamples;
- (double)maxValueForLastSampleCountSamples;
- (double)minValueForAllSamples;
- (double)minValueForLastSampleCountSamples;
- (int64_t)intValue;
- (unint64_t)sampleCount;
- (unint64_t)totalSampleCount;
- (void)formatValue:(double)a3 buffer:(char *)a4 length:(unint64_t)a5;
- (void)setFloatValue:(double)a3;
- (void)setIntValue:(int64_t)a3;
- (void)setName:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation HUDUserClientMetric

- (HUDUserClientMetric)initWithDescriptor:(HUDMetricDescriptor *)a3
{
  v11.receiver = self;
  v11.super_class = HUDUserClientMetric;
  v4 = [(HUDUserClientMetric *)&v11 init];
  v5 = v4;
  if (v4)
  {
    *&v6 = __copy_assignment_8_8_s0_s8_s16_t24w44(&v4->_descriptor, a3).n128_u64[0];
    name = v5->_descriptor.name;
    if ((v5->_descriptor.options & 2) != 0)
    {
      v8 = [@"* " stringByAppendingString:{name, v6}];
    }

    else
    {
      v8 = name;
    }

    v9 = *&v5->_enabled;
    *&v5->_enabled = v8;

    LOWORD(v5->_lastUpdateTime) = 1;
    LOBYTE(v5->_value.floatValue) = 0;
    *&v5->_bridged = 0;
    HUDValueHistoryRecordInit(&v5->_record, 0.0, 1000000000.0, 100.0);
  }

  return v5;
}

- (HUDUserClientMetric)initWithBridgedDescriptor:(HUDMetricDescriptor *)a3 record:(HUDValueHistoryRecord *)a4
{
  v13.receiver = self;
  v13.super_class = HUDUserClientMetric;
  v6 = [(HUDUserClientMetric *)&v13 init];
  v7 = v6;
  if (v6)
  {
    *&v8 = __copy_assignment_8_8_s0_s8_s16_t24w44(&v6->_descriptor, a3).n128_u64[0];
    name = v7->_descriptor.name;
    if ((v7->_descriptor.options & 2) != 0)
    {
      v10 = [@"* " stringByAppendingString:{name, v8}];
    }

    else
    {
      v10 = name;
    }

    v11 = *&v7->_enabled;
    *&v7->_enabled = v10;

    LOWORD(v7->_lastUpdateTime) = 1;
    LOBYTE(v7->_value.floatValue) = 1;
    *&v7->_bridged = 0;
    v7->_stringValue = a4;
  }

  return v7;
}

- (HUDValueHistoryRecord)record
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    return self->_stringValue;
  }

  else
  {
    return &self->_record;
  }
}

- (int64_t)intValue
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  valuesMaxSinceBeginning_low = LODWORD(self->_record.valuesMaxSinceBeginning);
  if (valuesMaxSinceBeginning_low)
  {
    if (valuesMaxSinceBeginning_low == 2)
    {
      v5 = [(HUDUserClientMetric *)self stringValue];
      v4 = [v5 intValue];

      return v4;
    }

    if (valuesMaxSinceBeginning_low != 1)
    {
      return 0;
    }
  }

  return *(stringValue + 1028);
}

- (void)setIntValue:(int64_t)a3
{
  LODWORD(self->_record.valuesMaxSinceBeginning) = 0;
  HUDValueHistoryRecordAddValue(&self->_record, a3);
  self->_stringValue = a3;
  *&self->_bridged = HUDCurrentTimeInNs();
}

- (double)floatValue
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  valuesMaxSinceBeginning_low = LODWORD(self->_record.valuesMaxSinceBeginning);
  if (valuesMaxSinceBeginning_low)
  {
    if (valuesMaxSinceBeginning_low == 2)
    {
      v5 = [(HUDUserClientMetric *)self stringValue];
      [v5 floatValue];
      v4 = v6;
    }

    else
    {
      v4 = 0.0;
      if (valuesMaxSinceBeginning_low == 1)
      {
        return *(stringValue + 1028);
      }
    }
  }

  else
  {
    return *(stringValue + 1028);
  }

  return v4;
}

- (double)averageValueForAllSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = self->_record.values;
    }
  }

  else
  {
    stringValue = self->_record.values;
  }

  return stringValue[138];
}

- (double)averageValueForLastSampleCountSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  return *(stringValue + 988);
}

- (double)minValueForAllSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = self->_record.values;
    }
  }

  else
  {
    stringValue = self->_record.values;
  }

  return stringValue[139];
}

- (double)maxValueForAllSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = self->_record.values;
    }
  }

  else
  {
    stringValue = self->_record.values;
  }

  return stringValue[140];
}

- (double)minValueForLastSampleCountSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  return *(stringValue + 972);
}

- (double)maxValueForLastSampleCountSamples
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  return *(stringValue + 980);
}

- (unint64_t)sampleCount
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  v3 = stringValue[275];
  if (v3 >= 0x78)
  {
    return 120;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)totalSampleCount
{
  if (LOBYTE(self->_value.floatValue) == 1)
  {
    stringValue = self->_stringValue;
    if (!stringValue)
    {
      stringValue = &self->_record;
    }
  }

  else
  {
    stringValue = &self->_record;
  }

  return stringValue[275];
}

- (void)setFloatValue:(double)a3
{
  LODWORD(self->_record.valuesMaxSinceBeginning) = 1;
  HUDValueHistoryRecordAddValue(&self->_record, a3);
  *&self->_stringValue = a3;
  *&self->_bridged = HUDCurrentTimeInNs();
}

- (NSString)stringValue
{
  v2 = self;
  objc_sync_enter(v2);
  if (LODWORD(v2->_record.valuesMaxSinceBeginning) == 2)
  {
    v3 = [*&v2->_metricType copy];
  }

  else
  {
    [(HUDUserClientMetric *)v2 floatValue];
    [(HUDUserClientMetric *)v2 formatValue:v6 buffer:512 length:?];
    v3 = [NSString stringWithUTF8String:v6];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (void)setStringValue:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  LODWORD(v5->_record.valuesMaxSinceBeginning) = 2;
  objc_storeStrong(&v5->_metricType, a3);
  *&v5->_bridged = HUDCurrentTimeInNs();
  objc_sync_exit(v5);
}

- (NSString)displayName
{
  v3 = [*&self->_enabled length];
  v4 = 1256;
  if (!v3)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)setName:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_descriptor.name, a3);
  name = self->_descriptor.name;
  if ((self->_descriptor.options & 2) != 0)
  {
    v6 = [@"* " stringByAppendingString:name];
  }

  else
  {
    v6 = name;
  }

  v7 = *&self->_enabled;
  *&self->_enabled = v6;
}

- (void)formatValue:(double)a3 buffer:(char *)a4 length:(unint64_t)a5
{
  unitType = self->_descriptor.unitType;
  if (unitType > 1)
  {
    switch(unitType)
    {
      case 2:

        MTLHUDFormattedTimeInNanosecond(a3, 3, 0, a4, a5);
        break;
      case 3:

        MTLHUDFormattedBytes(a3, 0, 0, a4, a5);
        break;
      case 4:

        MTLHUDFormattedBytesPerSecond(a3, 0, 0, a4, a5);
        break;
    }

    return;
  }

  if (unitType)
  {
    if (unitType != 1)
    {
      return;
    }

    goto LABEL_19;
  }

  valuesMaxSinceBeginning_low = LODWORD(self->_record.valuesMaxSinceBeginning);
  if (valuesMaxSinceBeginning_low == 1)
  {
    v8 = snprintf(a4, a5, "%.2f");
    goto LABEL_20;
  }

  if (!valuesMaxSinceBeginning_low)
  {
LABEL_19:
    v8 = snprintf(a4, a5, "%llu");
LABEL_20:
    a4[v8] = 0;
    return;
  }

  if (a5)
  {
    *a4 = 0;
  }
}

@end