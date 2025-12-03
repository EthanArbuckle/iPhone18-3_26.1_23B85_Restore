@interface SFShareSheetRemoteActivity
+ (id)activitySourceTypeToString:(int64_t)string;
+ (id)builtinActivityWithUUID:(id)d;
+ (id)sharingServiceWithIdentifier:(id)identifier;
- (SFShareSheetRemoteActivity)initWithActivitySourceType:(int64_t)type identifier:(id)identifier uuid:(id)uuid;
- (SFShareSheetRemoteActivity)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShareSheetRemoteActivity

- (SFShareSheetRemoteActivity)initWithActivitySourceType:(int64_t)type identifier:(id)identifier uuid:(id)uuid
{
  identifierCopy = identifier;
  uuidCopy = uuid;
  v16.receiver = self;
  v16.super_class = SFShareSheetRemoteActivity;
  v11 = [(SFShareSheetRemoteActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_activitySourceType = type;
    objc_storeStrong(&v11->_identifier, identifier);
    v13 = [uuidCopy copy];
    uuid = v12->_uuid;
    v12->_uuid = v13;
  }

  return v12;
}

+ (id)sharingServiceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[SFShareSheetRemoteActivity alloc] initWithActivitySourceType:0 identifier:identifierCopy uuid:0];

  return v4;
}

+ (id)builtinActivityWithUUID:(id)d
{
  dCopy = d;
  v4 = [[SFShareSheetRemoteActivity alloc] initWithActivitySourceType:1 identifier:0 uuid:dCopy];

  return v4;
}

+ (id)activitySourceTypeToString:(int64_t)string
{
  if (string)
  {
    return @"SFShareSheetActivitySourceTypeBuiltin";
  }

  else
  {
    return @"SFShareSheetActivitySourceTypeSharingService";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = SFShareSheetRemoteActivity;
  v4 = [(SFShareSheetRemoteActivity *)&v13 description];
  v5 = [SFShareSheetRemoteActivity activitySourceTypeToString:[(SFShareSheetRemoteActivity *)self activitySourceType]];
  identifier = [(SFShareSheetRemoteActivity *)self identifier];
  uuid = [(SFShareSheetRemoteActivity *)self uuid];
  title = [(SFShareSheetRemoteActivity *)self title];
  isRTS = [(SFShareSheetRemoteActivity *)self isRTS];
  v10 = @"NO";
  if (isRTS)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"< %@ activitySourceType:%@, identifier:%@, uuid:%@, title:%@, isRTS:%@>", v4, v5, identifier, uuid, title, v10];

  return v11;
}

- (SFShareSheetRemoteActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShareSheetRemoteActivity *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_activitySourceType);
    v5->_activitySourceType = [coderCopy decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_identifier);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_uuid);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    v14 = [v13 copy];
    uuid = v5->_uuid;
    v5->_uuid = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_title);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    title = v5->_title;
    v5->_title = v18;

    v20 = NSStringFromSelector(sel_isRTS);
    v5->_isRTS = [coderCopy decodeBoolForKey:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activitySourceType = self->_activitySourceType;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_activitySourceType);
  [coderCopy encodeInteger:activitySourceType forKey:v6];

  identifier = self->_identifier;
  v8 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v8];

  uuid = self->_uuid;
  v10 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v10];

  title = self->_title;
  v12 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v12];

  isRTS = self->_isRTS;
  v14 = NSStringFromSelector(sel_isRTS);
  [coderCopy encodeBool:isRTS forKey:v14];
}

@end