@interface MOAction
- (BOOL)isEqual:(id)a3;
- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4;
- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5;
- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5 actionMetaData:(id)a6;
- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5 actionNameConfidence:(double)a6;
- (MOAction)initWithCoder:(id)a3;
- (MOAction)initWithIdentifier:(id)a3;
- (MOAction)initWithIdentifier:(id)a3 actionName:(id)a4 actionType:(unint64_t)a5 actionSubtype:(int64_t)a6 actionNameConfidence:(double)a7 actionMetaData:(id)a8;
- (id)description;
- (unint64_t)accessTypeFromActionType:(unint64_t)a3 actionSubtype:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOAction

- (MOAction)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOAction initWithIdentifier:v5];
    }
  }

  v6 = [(MOAction *)self initWithIdentifier:v4 actionName:@"action" actionType:0 actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v6;
}

- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSUUID UUID];
  v8 = [(MOAction *)self initWithIdentifier:v7 actionName:v6 actionType:a4 actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v8;
}

- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5
{
  v8 = a3;
  v9 = +[NSUUID UUID];
  v10 = [(MOAction *)self initWithIdentifier:v9 actionName:v8 actionType:a4 actionSubtype:a5 actionNameConfidence:0 actionMetaData:-1.0];

  return v10;
}

- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5 actionNameConfidence:(double)a6
{
  v10 = a3;
  v11 = +[NSUUID UUID];
  v12 = [(MOAction *)self initWithIdentifier:v11 actionName:v10 actionType:a4 actionSubtype:a5 actionNameConfidence:0 actionMetaData:a6];

  return v12;
}

- (MOAction)initWithActionName:(id)a3 actionType:(unint64_t)a4 actionSubtype:(int64_t)a5 actionMetaData:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = +[NSUUID UUID];
  v13 = [(MOAction *)self initWithIdentifier:v12 actionName:v11 actionType:a4 actionSubtype:a5 actionNameConfidence:v10 actionMetaData:-1.0];

  return v13;
}

- (MOAction)initWithIdentifier:(id)a3 actionName:(id)a4 actionType:(unint64_t)a5 actionSubtype:(int64_t)a6 actionNameConfidence:(double)a7 actionMetaData:(id)a8
{
  v14 = a4;
  v15 = a8;
  v20.receiver = self;
  v20.super_class = MOAction;
  v16 = [(MOAction *)&v20 init];
  if (v16)
  {
    v17 = +[NSUUID UUID];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    objc_storeStrong(&v16->_actionName, a4);
    v16->_actionType = a5;
    v16->_actionSubtype = a6;
    v16->_actionNameConfidence = a7;
    objc_storeStrong(&v16->_actionMetaData, a8);
    v16->_sourceEventAccessType = [(MOAction *)v16 accessTypeFromActionType:a5 actionSubtype:a6];
  }

  return v16;
}

- (id)description
{
  v3 = [(MOAction *)self identifier];
  v4 = [(MOAction *)self actionName];
  v5 = [v4 mask];
  v6 = [(MOAction *)self actionType];
  v7 = [(MOAction *)self actionSubtype];
  [(MOAction *)self actionNameConfidence];
  v9 = [NSString stringWithFormat:@"<MOAction identifier, %@, action, %@, type, %lu, subtype, %lu, confidence, %f>", v3, v5, v6, v7, v8];

  return v9;
}

- (unint64_t)accessTypeFromActionType:(unint64_t)a3 actionSubtype:(int64_t)a4
{
  result = 5;
  if (a3 <= 3)
  {
    if (a3 - 2 < 2)
    {
      return result;
    }

    if (a3 == 1)
    {
      if (a4 != 6)
      {
        if ((a4 - 3) >= 2)
        {
          if (a4 <= 9 && ((1 << a4) & 0x302) != 0)
          {
            return 5;
          }

          return 0;
        }

        return 3;
      }

      return 2;
    }

    return 0;
  }

  if (a3 <= 0xC)
  {
    if (((1 << a3) & 0xE00) != 0)
    {
      return result;
    }

    if (((1 << a3) & 0x1180) == 0)
    {
      if (a3 != 6)
      {
        goto LABEL_6;
      }

      return 2;
    }

    return 0;
  }

LABEL_6:
  if (a3 != 4)
  {
    if (a3 != 5)
    {
      return 0;
    }

    return 3;
  }

  return 1;
}

- (MOAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
  v7 = [v4 decodeInt64ForKey:@"actionType"];
  v8 = [v4 decodeInt64ForKey:@"actionSubtype"];
  [v4 decodeDoubleForKey:@"actionNameConfidence"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionMetaData"];
  v12 = [MODictionaryEncoder decodeToDictionary:v11];
  v13 = [(MOAction *)self initWithIdentifier:v5 actionName:v6 actionType:v7 actionSubtype:v8 actionNameConfidence:v12 actionMetaData:v10];

  if (v13)
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOAction *)v13 setSourceEventIdentifier:v14];

    -[MOAction setSourceEventAccessType:](v13, "setSourceEventAccessType:", [v4 decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeInt64:self->_actionType forKey:@"actionType"];
  [v6 encodeInt64:self->_actionSubtype forKey:@"actionSubtype"];
  [v6 encodeObject:self->_actionName forKey:@"actionName"];
  [v6 encodeDouble:@"actionNameConfidence" forKey:self->_actionNameConfidence];
  v5 = [MODictionaryEncoder encodeDictionary:self->_actionMetaData];
  [v6 encodeObject:v5 forKey:@"actionMetaData"];

  [v6 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v6 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  v2 = [(MOAction *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOAction *)self identifier];
        if (v8 || ([(MOAction *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOAction *)self identifier];
          v10 = [(MOAction *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOAction initWithIdentifier:]";
  v3 = 1024;
  v4 = 34;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v1, 0x12u);
}

@end