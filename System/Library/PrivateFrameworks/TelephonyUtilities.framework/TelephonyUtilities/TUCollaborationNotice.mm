@interface TUCollaborationNotice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationNotice:(id)notice;
- (NSString)description;
- (TUCollaborationNotice)initWithCoder:(id)coder;
- (TUCollaborationNotice)initWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCollaborationNotice

- (TUCollaborationNotice)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TUCollaborationNotice;
  v6 = [(TUCollaborationNotice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCollaborationNotice *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  [v3 appendFormat:@" sessionEventType=%ld", -[TUCollaborationNotice sessionEventType](self, "sessionEventType")];
  collaboration = [(TUCollaborationNotice *)self collaboration];
  [v3 appendFormat:@" collaboration=%@", collaboration];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCollaborationNotice *)self isEqualToCollaborationNotice:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationNotice:(id)notice
{
  noticeCopy = notice;
  uUID = [(TUCollaborationNotice *)self UUID];
  uUID2 = [noticeCopy UUID];
  if ([uUID isEqual:uUID2] && (v7 = -[TUCollaborationNotice sessionEventType](self, "sessionEventType"), v7 == objc_msgSend(noticeCopy, "sessionEventType")))
  {
    collaboration = [(TUCollaborationNotice *)self collaboration];
    collaboration2 = [noticeCopy collaboration];
    v10 = [collaboration isEqual:collaboration2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  sessionEventType = [(TUCollaborationNotice *)self sessionEventType];
  collaboration = [(TUCollaborationNotice *)self collaboration];
  v5 = [collaboration hash];

  return v5 ^ sessionEventType;
}

- (TUCollaborationNotice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUCollaborationNotice *)self initWithUUID:v7];
  if (v8)
  {
    v9 = NSStringFromSelector(sel_sessionEventType);
    v8->_sessionEventType = [coderCopy decodeIntegerForKey:v9];

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
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    collaboration = v8->_collaboration;
    v8->_collaboration = v14;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionEventType = [(TUCollaborationNotice *)self sessionEventType];
  v6 = NSStringFromSelector(sel_sessionEventType);
  [coderCopy encodeInteger:sessionEventType forKey:v6];

  uUID = [(TUCollaborationNotice *)self UUID];
  v8 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v8];

  collaboration = [(TUCollaborationNotice *)self collaboration];
  v9 = NSStringFromSelector(sel_collaboration);
  [coderCopy encodeObject:collaboration forKey:v9];
}

@end