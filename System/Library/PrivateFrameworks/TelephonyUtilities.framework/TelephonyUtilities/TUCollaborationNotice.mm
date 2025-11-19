@interface TUCollaborationNotice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationNotice:(id)a3;
- (NSString)description;
- (TUCollaborationNotice)initWithCoder:(id)a3;
- (TUCollaborationNotice)initWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCollaborationNotice

- (TUCollaborationNotice)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUCollaborationNotice;
  v6 = [(TUCollaborationNotice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCollaborationNotice *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  [v3 appendFormat:@" sessionEventType=%ld", -[TUCollaborationNotice sessionEventType](self, "sessionEventType")];
  v5 = [(TUCollaborationNotice *)self collaboration];
  [v3 appendFormat:@" collaboration=%@", v5];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCollaborationNotice *)self isEqualToCollaborationNotice:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationNotice:(id)a3
{
  v4 = a3;
  v5 = [(TUCollaborationNotice *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6] && (v7 = -[TUCollaborationNotice sessionEventType](self, "sessionEventType"), v7 == objc_msgSend(v4, "sessionEventType")))
  {
    v8 = [(TUCollaborationNotice *)self collaboration];
    v9 = [v4 collaboration];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TUCollaborationNotice *)self sessionEventType];
  v4 = [(TUCollaborationNotice *)self collaboration];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (TUCollaborationNotice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUCollaborationNotice *)self initWithUUID:v7];
  if (v8)
  {
    v9 = NSStringFromSelector(sel_sessionEventType);
    v8->_sessionEventType = [v4 decodeIntegerForKey:v9];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = getSWCollaborationHighlightClass_softClass_0;
    v21 = getSWCollaborationHighlightClass_softClass_0;
    if (!getSWCollaborationHighlightClass_softClass_0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getSWCollaborationHighlightClass_block_invoke_0;
      v17[3] = &unk_1E7424CD8;
      v17[4] = &v18;
      __getSWCollaborationHighlightClass_block_invoke_0(v17);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_collaboration);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    collaboration = v8->_collaboration;
    v8->_collaboration = v14;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCollaborationNotice *)self sessionEventType];
  v6 = NSStringFromSelector(sel_sessionEventType);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(TUCollaborationNotice *)self UUID];
  v8 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUCollaborationNotice *)self collaboration];
  v9 = NSStringFromSelector(sel_collaboration);
  [v4 encodeObject:v10 forKey:v9];
}

@end