@interface MCAction
- (MCAction)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (id)snapshot;
- (void)_copySelfToSnapshot:(id)a3;
- (void)setTracksInParent:(BOOL)a3;
@end

@implementation MCAction

- (MCAction)initWithImprint:(id)a3
{
  v4 = [(MCAction *)self init];
  if (v4)
  {
    v4->_targetObjectID = [a3 objectForKey:@"targetObjectID"];
  }

  return v4;
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCAction;
  v3 = [(MCObjectLight *)&v5 imprint];
  [v3 setObject:self->_targetObjectID forKey:@"targetObjectID"];
  return v3;
}

- (void)setTracksInParent:(BOOL)a3
{
  if (a3)
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

- (void)_copySelfToSnapshot:(id)a3
{
  targetObjectID = self->_targetObjectID;
  if (targetObjectID)
  {
    *(a3 + 2) = [(NSString *)targetObjectID copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCAction;
  return [-[MCAction description](&v3 "description")];
}

@end