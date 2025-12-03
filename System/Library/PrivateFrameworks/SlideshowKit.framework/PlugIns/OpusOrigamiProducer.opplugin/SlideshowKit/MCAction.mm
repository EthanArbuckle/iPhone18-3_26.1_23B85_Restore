@interface MCAction
- (MCAction)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (id)snapshot;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)setTracksInParent:(BOOL)parent;
@end

@implementation MCAction

- (MCAction)initWithImprint:(id)imprint
{
  v4 = [(MCAction *)self init];
  if (v4)
  {
    v4->_targetObjectID = [imprint objectForKey:@"targetObjectID"];
  }

  return v4;
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCAction;
  imprint = [(MCObjectLight *)&v5 imprint];
  [imprint setObject:self->_targetObjectID forKey:@"targetObjectID"];
  return imprint;
}

- (void)setTracksInParent:(BOOL)parent
{
  if (parent)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFF7 | v3;
}

- (id)snapshot
{
  v3.receiver = self;
  v3.super_class = MCAction;
  result = [(MCObjectBase *)&v3 snapshot];
  *(result + 2) |= 1u;
  return result;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  targetObjectID = self->_targetObjectID;
  if (targetObjectID)
  {
    *(snapshot + 2) = [(NSString *)targetObjectID copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCAction;
  return [-[MCAction description](&v3 "description")];
}

@end