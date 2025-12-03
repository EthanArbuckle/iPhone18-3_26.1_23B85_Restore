@interface BMSyncAtomValue
+ (id)atomValueFromData:(id)data version:(int64_t)version;
- (BMSyncAtomValue)initWithAtomType:(unint64_t)type value:(id)value version:(int64_t)version;
- (BMSyncAtomValue)initWithCoder:(id)coder;
- (BMSyncAtomValue)initWithProto:(id)proto;
- (BMSyncAtomValue)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSyncAtomValue

- (BMSyncAtomValue)initWithAtomType:(unint64_t)type value:(id)value version:(int64_t)version
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = BMSyncAtomValue;
  v10 = [(BMSyncAtomValue *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_value, value);
    v11->_version = version;
  }

  return v11;
}

- (id)encodeAsProto
{
  proto = [(BMSyncAtomValue *)self proto];
  data = [proto data];

  return data;
}

- (BMSyncAtomValue)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if (sub_1000492F0(v5) && sub_100049450(v5))
      {
        v6 = [BMStoreEventAtomValue alloc];
        v7 = sub_1000495C0(v5);
        v8 = [(BMStoreEventAtomValue *)v6 initWithProto:v7];

        self = [(BMSyncAtomValue *)self initWithAtomType:sub_10004927C(v5) value:v8 version:1];
        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10004A394();
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10004A30C();
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMSyncAtomValue)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSyncAtomValue alloc] initWithData:dataCopy];

    self = [(BMSyncAtomValue *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  sub_1000492A8(v3, [(BMSyncAtomValue *)self type]);
  value = [(BMSyncAtomValue *)self value];
  proto = [value proto];

  sub_1000494FC(v3, proto);

  return v3;
}

+ (id)atomValueFromData:(id)data version:(int64_t)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else if (version)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004A41C();
    }

    v7 = 0;
  }

  else
  {
    v14 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:self fromData:dataCopy error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = __biome_log_for_category();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x2020000000;
      v17 = 16;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100026398;
      v13[3] = &unk_100078AD8;
      v13[4] = &buf;
      if (qword_10008BD60 != -1)
      {
        dispatch_once(&qword_10008BD60, v13);
      }

      v10 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
      if (os_log_type_enabled(v9, v10))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "failed to deserialize BMSyncAtomValue with error %@", &buf, 0xCu);
      }
    }
  }

  return v7;
}

- (id)serialize
{
  version = self->_version;
  if (version == 1)
  {
    serializeProto = [(BMSyncAtomValue *)self serializeProto];
  }

  else if (version)
  {
    v8 = __biome_log_for_category();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100026680;
    block[3] = &unk_100078AD8;
    block[4] = &buf;
    if (qword_10008BD70 != -1)
    {
      dispatch_once(&qword_10008BD70, block);
    }

    v9 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = self->_version;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "cannot serialize atom value with version %lu", &buf, 0xCu);
    }

    serializeProto = 0;
  }

  else
  {
    v14 = 0;
    serializeProto = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v14];
    v5 = v14;
    if (v5)
    {
      v6 = __biome_log_for_category();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x2020000000;
      v17 = 16;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10002666C;
      v13[3] = &unk_100078AD8;
      v13[4] = &buf;
      if (qword_10008BD68 != -1)
      {
        dispatch_once(&qword_10008BD68, v13);
      }

      v7 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
      if (os_log_type_enabled(v6, v7))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v6, v7, "failed to serialize BMSyncAtomValue with error %@", &buf, 0xCu);
      }
    }
  }

  return serializeProto;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v5 forKey:@"atomType"];

  [coderCopy encodeObject:self->_value forKey:@"atomValue"];
}

- (BMSyncAtomValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atomType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atomValue"];

  v8 = [(BMSyncAtomValue *)self initWithAtomType:unsignedIntegerValue value:v7 version:0];
  return v8;
}

@end