@interface _WBSCRDTPositionGeneratorStride
- (_WBSCRDTPositionGeneratorStride)initWithRecordNames:(id)names beforePosition:(id)position afterPosition:(id)afterPosition;
- (id)description;
@end

@implementation _WBSCRDTPositionGeneratorStride

- (_WBSCRDTPositionGeneratorStride)initWithRecordNames:(id)names beforePosition:(id)position afterPosition:(id)afterPosition
{
  namesCopy = names;
  positionCopy = position;
  afterPositionCopy = afterPosition;
  v16.receiver = self;
  v16.super_class = _WBSCRDTPositionGeneratorStride;
  v11 = [(_WBSCRDTPositionGeneratorStride *)&v16 init];
  if (v11)
  {
    v12 = [namesCopy copy];
    recordNames = v11->_recordNames;
    v11->_recordNames = v12;

    objc_storeStrong(&v11->_beforePosition, position);
    objc_storeStrong(&v11->_afterPosition, afterPosition);
    v14 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSArray *)self->_recordNames componentsJoinedByString:@", "];
  v6 = [v3 stringWithFormat:@"<%@: %p, record names: [ %@ ], before position: %@, after position: %@>", v4, self, v5, self->_beforePosition, self->_afterPosition];

  return v6;
}

@end