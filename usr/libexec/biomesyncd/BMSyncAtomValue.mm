@interface BMSyncAtomValue
+ (id)atomValueFromData:(id)a3 version:(int64_t)a4;
- (BMSyncAtomValue)initWithAtomType:(unint64_t)a3 value:(id)a4 version:(int64_t)a5;
- (BMSyncAtomValue)initWithCoder:(id)a3;
- (BMSyncAtomValue)initWithProto:(id)a3;
- (BMSyncAtomValue)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSyncAtomValue

- (BMSyncAtomValue)initWithAtomType:(unint64_t)a3 value:(id)a4 version:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BMSyncAtomValue;
  v10 = [(BMSyncAtomValue *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    objc_storeStrong(&v10->_value, a4);
    v11->_version = a5;
  }

  return v11;
}

- (id)encodeAsProto
{
  v2 = [(BMSyncAtomValue *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSyncAtomValue)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (sub_1000492F0(v5) && sub_100049450(v5))
      {
        v6 = [BMStoreEventAtomValue alloc];
        v7 = sub_1000495C0(v5);
        v8 = [(BMStoreEventAtomValue *)v6 initWithProto:v7];

        self = [(BMSyncAtomValue *)self initWithAtomType:sub_10004927C(v5) value:v8 version:1];
        v9 = self;
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

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BMSyncAtomValue)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSyncAtomValue alloc] initWithData:v4];

    self = [(BMSyncAtomValue *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  sub_1000492A8(v3, [(BMSyncAtomValue *)self type]);
  v4 = [(BMSyncAtomValue *)self value];
  v5 = [v4 proto];

  sub_1000494FC(v3, v5);

  return v3;
}

+ (id)atomValueFromData:(id)a3 version:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else if (a4)
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
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:a1 fromData:v6 error:&v14];
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
    v4 = [(BMSyncAtomValue *)self serializeProto];
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

    v4 = 0;
  }

  else
  {
    v14 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v14];
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

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  [v6 encodeObject:v5 forKey:@"atomType"];

  [v6 encodeObject:self->_value forKey:@"atomValue"];
}

- (BMSyncAtomValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomValue"];

  v8 = [(BMSyncAtomValue *)self initWithAtomType:v6 value:v7 version:0];
  return v8;
}

@end