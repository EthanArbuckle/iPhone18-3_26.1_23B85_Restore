@interface MOAction
- (BOOL)isEqual:(id)equal;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionMetaData:(id)data;
- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence;
- (MOAction)initWithCoder:(id)coder;
- (MOAction)initWithIdentifier:(id)identifier;
- (MOAction)initWithIdentifier:(id)identifier actionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence actionMetaData:(id)data;
- (id)description;
- (unint64_t)accessTypeFromActionType:(unint64_t)type actionSubtype:(int64_t)subtype;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOAction

- (MOAction)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOAction initWithIdentifier:v5];
    }
  }

  v6 = [(MOAction *)self initWithIdentifier:identifierCopy actionName:@"action" actionType:0 actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v6;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type
{
  nameCopy = name;
  v7 = +[NSUUID UUID];
  v8 = [(MOAction *)self initWithIdentifier:v7 actionName:nameCopy actionType:type actionSubtype:0 actionNameConfidence:0 actionMetaData:-1.0];

  return v8;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype
{
  nameCopy = name;
  v9 = +[NSUUID UUID];
  v10 = [(MOAction *)self initWithIdentifier:v9 actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:0 actionMetaData:-1.0];

  return v10;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence
{
  nameCopy = name;
  v11 = +[NSUUID UUID];
  v12 = [(MOAction *)self initWithIdentifier:v11 actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:0 actionMetaData:confidence];

  return v12;
}

- (MOAction)initWithActionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionMetaData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  v12 = +[NSUUID UUID];
  v13 = [(MOAction *)self initWithIdentifier:v12 actionName:nameCopy actionType:type actionSubtype:subtype actionNameConfidence:dataCopy actionMetaData:-1.0];

  return v13;
}

- (MOAction)initWithIdentifier:(id)identifier actionName:(id)name actionType:(unint64_t)type actionSubtype:(int64_t)subtype actionNameConfidence:(double)confidence actionMetaData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = MOAction;
  v16 = [(MOAction *)&v20 init];
  if (v16)
  {
    v17 = +[NSUUID UUID];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    objc_storeStrong(&v16->_actionName, name);
    v16->_actionType = type;
    v16->_actionSubtype = subtype;
    v16->_actionNameConfidence = confidence;
    objc_storeStrong(&v16->_actionMetaData, data);
    v16->_sourceEventAccessType = [(MOAction *)v16 accessTypeFromActionType:type actionSubtype:subtype];
  }

  return v16;
}

- (id)description
{
  identifier = [(MOAction *)self identifier];
  actionName = [(MOAction *)self actionName];
  mask = [actionName mask];
  actionType = [(MOAction *)self actionType];
  actionSubtype = [(MOAction *)self actionSubtype];
  [(MOAction *)self actionNameConfidence];
  v9 = [NSString stringWithFormat:@"<MOAction identifier, %@, action, %@, type, %lu, subtype, %lu, confidence, %f>", identifier, mask, actionType, actionSubtype, v8];

  return v9;
}

- (unint64_t)accessTypeFromActionType:(unint64_t)type actionSubtype:(int64_t)subtype
{
  result = 5;
  if (type <= 3)
  {
    if (type - 2 < 2)
    {
      return result;
    }

    if (type == 1)
    {
      if (subtype != 6)
      {
        if ((subtype - 3) >= 2)
        {
          if (subtype <= 9 && ((1 << subtype) & 0x302) != 0)
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

  if (type <= 0xC)
  {
    if (((1 << type) & 0xE00) != 0)
    {
      return result;
    }

    if (((1 << type) & 0x1180) == 0)
    {
      if (type != 6)
      {
        goto LABEL_6;
      }

      return 2;
    }

    return 0;
  }

LABEL_6:
  if (type != 4)
  {
    if (type != 5)
    {
      return 0;
    }

    return 3;
  }

  return 1;
}

- (MOAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
  v7 = [coderCopy decodeInt64ForKey:@"actionType"];
  v8 = [coderCopy decodeInt64ForKey:@"actionSubtype"];
  [coderCopy decodeDoubleForKey:@"actionNameConfidence"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionMetaData"];
  v12 = [MODictionaryEncoder decodeToDictionary:v11];
  v13 = [(MOAction *)self initWithIdentifier:v5 actionName:v6 actionType:v7 actionSubtype:v8 actionNameConfidence:v12 actionMetaData:v10];

  if (v13)
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOAction *)v13 setSourceEventIdentifier:v14];

    -[MOAction setSourceEventAccessType:](v13, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInt64:self->_actionType forKey:@"actionType"];
  [coderCopy encodeInt64:self->_actionSubtype forKey:@"actionSubtype"];
  [coderCopy encodeObject:self->_actionName forKey:@"actionName"];
  [coderCopy encodeDouble:@"actionNameConfidence" forKey:self->_actionNameConfidence];
  v5 = [MODictionaryEncoder encodeDictionary:self->_actionMetaData];
  [coderCopy encodeObject:v5 forKey:@"actionMetaData"];

  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  identifier = [(MOAction *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(MOAction *)self identifier];
        if (identifier || ([(MOAction *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOAction *)self identifier];
          identifier3 = [(MOAction *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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