@interface BMStoreEventAtomValue
- (BMStoreEventAtomValue)initWithCoder:(id)coder;
- (BMStoreEventAtomValue)initWithEventData:(id)data dataVersion:(unsigned int)version dataTimestamp:(double)timestamp;
- (BMStoreEventAtomValue)initWithProto:(id)proto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMStoreEventAtomValue

- (BMStoreEventAtomValue)initWithEventData:(id)data dataVersion:(unsigned int)version dataTimestamp:(double)timestamp
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = BMStoreEventAtomValue;
  v10 = [(BMStoreEventAtomValue *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_eventData, data);
    v11->_dataVersion = version;
    v11->_dataTimestamp = timestamp;
  }

  return v11;
}

- (BMStoreEventAtomValue)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if (sub_10004C888(v5) && (sub_10004C8E8(v5) & 1) != 0)
      {
        v6 = sub_10004CAD4(v5);
        v7 = sub_10004CAA4(v5);
        self = [(BMStoreEventAtomValue *)self initWithEventData:v6 dataVersion:v7 dataTimestamp:sub_10004CAB8(v5)];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  eventData = [(BMStoreEventAtomValue *)self eventData];
  sub_10004C9D4(v3, eventData);

  sub_10004C834(v3, [(BMStoreEventAtomValue *)self dataVersion]);
  [(BMStoreEventAtomValue *)self dataTimestamp];
  sub_10004C8A0(v3, v5);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  eventData = self->_eventData;
  coderCopy = coder;
  [coderCopy encodeObject:eventData forKey:@"data"];
  v6 = [NSNumber numberWithUnsignedInt:self->_dataVersion];
  [coderCopy encodeObject:v6 forKey:@"dataVersion"];

  v7 = [NSNumber numberWithDouble:self->_dataTimestamp];
  [coderCopy encodeObject:v7 forKey:@"dataTimestamp"];
}

- (BMStoreEventAtomValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BMStoreEventAtomValue;
  v5 = [(BMStoreEventAtomValue *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    eventData = v5->_eventData;
    v5->_eventData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataVersion"];
    v5->_dataVersion = [v8 unsignedIntValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataTimestamp"];
    [v9 doubleValue];
    v5->_dataTimestamp = v10;
  }

  return v5;
}

@end