@interface TUSimulatedParticipantUpdate
- (TUSimulatedParticipantUpdate)init;
- (TUSimulatedParticipantUpdate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (TUSimulatedParticipantUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSimulatedParticipantUpdate *)self init];
  if (v5)
  {
    v12 = 0;
    v6 = v4;
    v7 = NSStringFromSelector(sel_hasSet);
    v8 = [v4 decodeBytesForKey:v7 returnedLength:&v12];

    if (v12 != 4)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v5->_hasSet = *v8;
    if (([(TUSimulatedParticipantUpdate *)v5 hasSet]& 1) != 0)
    {
      v9 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
      v5->_spatialPersonaEnabled = [v4 decodeBoolForKey:v9];
    }
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = NSStringFromSelector(sel_hasSet);
  [v7 encodeBytes:&self->_hasSet length:4 forKey:v4];

  if (([(TUSimulatedParticipantUpdate *)self hasSet]& 1) != 0)
  {
    v5 = [(TUSimulatedParticipantUpdate *)self isSpatialPersonaEnabled];
    v6 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
    [v7 encodeBool:v5 forKey:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TUSimulatedParticipantUpdate allocWithZone:?]];
  if (([(TUSimulatedParticipantUpdate *)self hasSet]& 1) != 0)
  {
    [(TUSimulatedParticipantUpdate *)v4 setSpatialPersonaEnabled:[(TUSimulatedParticipantUpdate *)self isSpatialPersonaEnabled]];
  }

  return v4;
}

@end