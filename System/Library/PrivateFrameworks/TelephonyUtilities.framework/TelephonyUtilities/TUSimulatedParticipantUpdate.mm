@interface TUSimulatedParticipantUpdate
- (TUSimulatedParticipantUpdate)init;
- (TUSimulatedParticipantUpdate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSimulatedParticipantUpdate

- (TUSimulatedParticipantUpdate)init
{
  v3.receiver = self;
  v3.super_class = TUSimulatedParticipantUpdate;
  result = [(TUSimulatedParticipantUpdate *)&v3 init];
  if (result)
  {
    *&result->_hasSet = 0;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  if (([(TUSimulatedParticipantUpdate *)self hasSet]& 1) != 0)
  {
    [v3 appendFormat:@" spatialPersonaEnabled=%d", -[TUSimulatedParticipantUpdate isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")];
  }

  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

- (TUSimulatedParticipantUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUSimulatedParticipantUpdate *)self init];
  if (v5)
  {
    v12 = 0;
    v6 = coderCopy;
    v7 = NSStringFromSelector(sel_hasSet);
    v8 = [coderCopy decodeBytesForKey:v7 returnedLength:&v12];

    if (v12 != 4)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v5->_hasSet = *v8;
    if (([(TUSimulatedParticipantUpdate *)v5 hasSet]& 1) != 0)
    {
      v9 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
      v5->_spatialPersonaEnabled = [coderCopy decodeBoolForKey:v9];
    }
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = NSStringFromSelector(sel_hasSet);
  [coderCopy encodeBytes:&self->_hasSet length:4 forKey:v4];

  if (([(TUSimulatedParticipantUpdate *)self hasSet]& 1) != 0)
  {
    isSpatialPersonaEnabled = [(TUSimulatedParticipantUpdate *)self isSpatialPersonaEnabled];
    v6 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
    [coderCopy encodeBool:isSpatialPersonaEnabled forKey:v6];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUSimulatedParticipantUpdate allocWithZone:?]];
  if (([(TUSimulatedParticipantUpdate *)self hasSet]& 1) != 0)
  {
    [(TUSimulatedParticipantUpdate *)v4 setSpatialPersonaEnabled:[(TUSimulatedParticipantUpdate *)self isSpatialPersonaEnabled]];
  }

  return v4;
}

@end