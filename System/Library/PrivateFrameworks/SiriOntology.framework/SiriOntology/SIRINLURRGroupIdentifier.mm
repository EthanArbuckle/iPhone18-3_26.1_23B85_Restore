@interface SIRINLURRGroupIdentifier
- (SIRINLURRGroupIdentifier)initWithCoder:(id)coder;
- (SIRINLURRGroupIdentifier)initWithGroupId:(id)id seq:(int)seq;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURRGroupIdentifier

- (void)encodeWithCoder:(id)coder
{
  groupId = self->_groupId;
  coderCopy = coder;
  [coderCopy encodeObject:groupId forKey:@"groupId"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_seq];
  [coderCopy encodeObject:v6 forKey:@"seq"];
}

- (SIRINLURRGroupIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SIRINLURRGroupIdentifier;
  v5 = [(SIRINLURRGroupIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
    groupId = v5->_groupId;
    v5->_groupId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seq"];
    v5->_seq = [v8 intValue];
  }

  return v5;
}

- (SIRINLURRGroupIdentifier)initWithGroupId:(id)id seq:(int)seq
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = SIRINLURRGroupIdentifier;
  v8 = [(SIRINLURRGroupIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupId, id);
    v9->_seq = seq;
  }

  return v9;
}

@end