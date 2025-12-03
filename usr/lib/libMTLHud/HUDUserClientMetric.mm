@interface HUDUserClientMetric
- (HUDUserClientMetric)initWithBridgedDescriptor:(HUDMetricDescriptor *)descriptor record:(HUDValueHistoryRecord *)record;
- (HUDUserClientMetric)initWithDescriptor:(HUDMetricDescriptor *)descriptor;
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
- (void)formatValue:(double)value buffer:(char *)buffer length:(unint64_t)length;
- (void)setFloatValue:(double)value;
- (void)setIntValue:(int64_t)value;
- (void)setName:(id)name;
- (void)setStringValue:(id)value;
@end

@implementation HUDUserClientMetric

- (HUDUserClientMetric)initWithDescriptor:(HUDMetricDescriptor *)descriptor
{
  v11.receiver = self;
  v11.super_class = HUDUserClientMetric;
  v4 = [(HUDUserClientMetric *)&v11 init];
  v5 = v4;
  if (v4)
  {
    *&v6 = __copy_assignment_8_8_s0_s8_s16_t24w44(&v4->_descriptor, descriptor).n128_u64[0];
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

- (HUDUserClientMetric)initWithBridgedDescriptor:(HUDMetricDescriptor *)descriptor record:(HUDValueHistoryRecord *)record
{
  v13.receiver = self;
  v13.super_class = HUDUserClientMetric;
  v6 = [(HUDUserClientMetric *)&v13 init];
  v7 = v6;
  if (v6)
  {
    *&v8 = __copy_assignment_8_8_s0_s8_s16_t24w44(&v6->_descriptor, descriptor).n128_u64[0];
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
    v7->_stringValue = record;
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
      stringValue = [(HUDUserClientMetric *)self stringValue];
      intValue = [stringValue intValue];

      return intValue;
    }

    if (valuesMaxSinceBeginning_low != 1)
    {
      return 0;
    }
  }

  return *(stringValue + 1028);
}

- (void)setIntValue:(int64_t)value
{
  LODWORD(self->_record.valuesMaxSinceBeginning) = 0;
  HUDValueHistoryRecordAddValue(&self->_record, value);
  self->_stringValue = value;
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
      stringValue = [(HUDUserClientMetric *)self stringValue];
      [stringValue floatValue];
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

- (void)setFloatValue:(double)value
{
  LODWORD(self->_record.valuesMaxSinceBeginning) = 1;
  HUDValueHistoryRecordAddValue(&self->_record, value);
  *&self->_stringValue = value;
  *&self->_bridged = HUDCurrentTimeInNs();
}

- (NSString)stringValue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (LODWORD(selfCopy->_record.valuesMaxSinceBeginning) == 2)
  {
    v3 = [*&selfCopy->_metricType copy];
  }

  else
  {
    [(HUDUserClientMetric *)selfCopy floatValue];
    [(HUDUserClientMetric *)selfCopy formatValue:v6 buffer:512 length:?];
    v3 = [NSString stringWithUTF8String:v6];
  }

  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(selfCopy->_record.valuesMaxSinceBeginning) = 2;
  objc_storeStrong(&selfCopy->_metricType, value);
  *&selfCopy->_bridged = HUDCurrentTimeInNs();
  objc_sync_exit(selfCopy);
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

- (void)setName:(id)name
{
  nameCopy = name;
  objc_storeStrong(&self->_descriptor.name, name);
  name = self->_descriptor.name;
  if ((self->_descriptor.options & 2) != 0)
  {
    nameCopy2 = [@"* " stringByAppendingString:name];
  }

  else
  {
    nameCopy2 = name;
  }

  v7 = *&self->_enabled;
  *&self->_enabled = nameCopy2;
}

- (void)formatValue:(double)value buffer:(char *)buffer length:(unint64_t)length
{
  unitType = self->_descriptor.unitType;
  if (unitType > 1)
  {
    switch(unitType)
    {
      case 2:

        MTLHUDFormattedTimeInNanosecond(value, 3, 0, buffer, length);
        break;
      case 3:

        MTLHUDFormattedBytes(value, 0, 0, buffer, length);
        break;
      case 4:

        MTLHUDFormattedBytesPerSecond(value, 0, 0, buffer, length);
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
    v8 = snprintf(buffer, length, "%.2f");
    goto LABEL_20;
  }

  if (!valuesMaxSinceBeginning_low)
  {
LABEL_19:
    v8 = snprintf(buffer, length, "%llu");
LABEL_20:
    buffer[v8] = 0;
    return;
  }

  if (length)
  {
    *buffer = 0;
  }
}

@end