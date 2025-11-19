@interface SIRINLURRGroupIdentifier
- (SIRINLURRGroupIdentifier)initWithCoder:(id)a3;
- (SIRINLURRGroupIdentifier)initWithGroupId:(id)a3 seq:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURRGroupIdentifier

- (void)encodeWithCoder:(id)a3
{
  groupId = self->_groupId;
  v5 = a3;
  [v5 encodeObject:groupId forKey:@"groupId"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_seq];
  [v5 encodeObject:v6 forKey:@"seq"];
}

- (SIRINLURRGroupIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SIRINLURRGroupIdentifier;
  v5 = [(SIRINLURRGroupIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
    groupId = v5->_groupId;
    v5->_groupId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seq"];
    v5->_seq = [v8 intValue];
  }

  return v5;
}

- (SIRINLURRGroupIdentifier)initWithGroupId:(id)a3 seq:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLURRGroupIdentifier;
  v8 = [(SIRINLURRGroupIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupId, a3);
    v9->_seq = a4;
  }

  return v9;
}

@end