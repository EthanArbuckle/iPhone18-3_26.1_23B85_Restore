@interface BMStoreEventAtomValue
- (BMStoreEventAtomValue)initWithCoder:(id)a3;
- (BMStoreEventAtomValue)initWithEventData:(id)a3 dataVersion:(unsigned int)a4 dataTimestamp:(double)a5;
- (BMStoreEventAtomValue)initWithProto:(id)a3;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMStoreEventAtomValue

- (BMStoreEventAtomValue)initWithEventData:(id)a3 dataVersion:(unsigned int)a4 dataTimestamp:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = BMStoreEventAtomValue;
  v10 = [(BMStoreEventAtomValue *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_eventData, a3);
    v11->_dataVersion = a4;
    v11->_dataTimestamp = a5;
  }

  return v11;
}

- (BMStoreEventAtomValue)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (sub_10004C888(v5) && (sub_10004C8E8(v5) & 1) != 0)
      {
        v6 = sub_10004CAD4(v5);
        v7 = sub_10004CAA4(v5);
        self = [(BMStoreEventAtomValue *)self initWithEventData:v6 dataVersion:v7 dataTimestamp:sub_10004CAB8(v5)];

        v8 = self;
LABEL_13:

        goto LABEL_14;
      }

      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_10004A518();
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10004A490();
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMStoreEventAtomValue *)self eventData];
  sub_10004C9D4(v3, v4);

  sub_10004C834(v3, [(BMStoreEventAtomValue *)self dataVersion]);
  [(BMStoreEventAtomValue *)self dataTimestamp];
  sub_10004C8A0(v3, v5);

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  eventData = self->_eventData;
  v5 = a3;
  [v5 encodeObject:eventData forKey:@"data"];
  v6 = [NSNumber numberWithUnsignedInt:self->_dataVersion];
  [v5 encodeObject:v6 forKey:@"dataVersion"];

  v7 = [NSNumber numberWithDouble:self->_dataTimestamp];
  [v5 encodeObject:v7 forKey:@"dataTimestamp"];
}

- (BMStoreEventAtomValue)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BMStoreEventAtomValue;
  v5 = [(BMStoreEventAtomValue *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    eventData = v5->_eventData;
    v5->_eventData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataVersion"];
    v5->_dataVersion = [v8 unsignedIntValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataTimestamp"];
    [v9 doubleValue];
    v5->_dataTimestamp = v10;
  }

  return v5;
}

@end