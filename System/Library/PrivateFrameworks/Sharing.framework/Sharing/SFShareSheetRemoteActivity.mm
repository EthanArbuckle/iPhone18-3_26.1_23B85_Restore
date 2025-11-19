@interface SFShareSheetRemoteActivity
+ (id)activitySourceTypeToString:(int64_t)a3;
+ (id)builtinActivityWithUUID:(id)a3;
+ (id)sharingServiceWithIdentifier:(id)a3;
- (SFShareSheetRemoteActivity)initWithActivitySourceType:(int64_t)a3 identifier:(id)a4 uuid:(id)a5;
- (SFShareSheetRemoteActivity)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFShareSheetRemoteActivity

- (SFShareSheetRemoteActivity)initWithActivitySourceType:(int64_t)a3 identifier:(id)a4 uuid:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SFShareSheetRemoteActivity;
  v11 = [(SFShareSheetRemoteActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_activitySourceType = a3;
    objc_storeStrong(&v11->_identifier, a4);
    v13 = [v10 copy];
    uuid = v12->_uuid;
    v12->_uuid = v13;
  }

  return v12;
}

+ (id)sharingServiceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[SFShareSheetRemoteActivity alloc] initWithActivitySourceType:0 identifier:v3 uuid:0];

  return v4;
}

+ (id)builtinActivityWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[SFShareSheetRemoteActivity alloc] initWithActivitySourceType:1 identifier:0 uuid:v3];

  return v4;
}

+ (id)activitySourceTypeToString:(int64_t)a3
{
  if (a3)
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
  v6 = [(SFShareSheetRemoteActivity *)self identifier];
  v7 = [(SFShareSheetRemoteActivity *)self uuid];
  v8 = [(SFShareSheetRemoteActivity *)self title];
  v9 = [(SFShareSheetRemoteActivity *)self isRTS];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"< %@ activitySourceType:%@, identifier:%@, uuid:%@, title:%@, isRTS:%@>", v4, v5, v6, v7, v8, v10];

  return v11;
}

- (SFShareSheetRemoteActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetRemoteActivity *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_activitySourceType);
    v5->_activitySourceType = [v4 decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_identifier);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_uuid);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    v14 = [v13 copy];
    uuid = v5->_uuid;
    v5->_uuid = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_title);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    title = v5->_title;
    v5->_title = v18;

    v20 = NSStringFromSelector(sel_isRTS);
    v5->_isRTS = [v4 decodeBoolForKey:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activitySourceType = self->_activitySourceType;
  v5 = a3;
  v6 = NSStringFromSelector(sel_activitySourceType);
  [v5 encodeInteger:activitySourceType forKey:v6];

  identifier = self->_identifier;
  v8 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v8];

  uuid = self->_uuid;
  v10 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v10];

  title = self->_title;
  v12 = NSStringFromSelector(sel_title);
  [v5 encodeObject:title forKey:v12];

  isRTS = self->_isRTS;
  v14 = NSStringFromSelector(sel_isRTS);
  [v5 encodeBool:isRTS forKey:v14];
}

@end