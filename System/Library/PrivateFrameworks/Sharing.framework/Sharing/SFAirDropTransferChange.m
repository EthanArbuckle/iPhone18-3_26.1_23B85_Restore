@interface SFAirDropTransferChange
- (NSString)description;
- (SFAirDropTransferChange)initWithBSXPCCoder:(id)a3;
- (SFAirDropTransferChange)initWithCoder:(id)a3;
- (SFAirDropTransferChange)initWithState:(int64_t)a3 progress:(double)a4 proxyIdentifier:(id)a5 displayName:(id)a6 status:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAirDropTransferChange

- (SFAirDropTransferChange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
  [v4 decodeFloatForKey:@"progress"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v10 = [v4 decodeIntegerForKey:@"state"];

  v11 = [(SFAirDropTransferChange *)self initWithState:v10 progress:v5 proxyIdentifier:v8 displayName:v9 status:v7];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  proxyIdentifier = self->_proxyIdentifier;
  v6 = a3;
  [v6 encodeObject:proxyIdentifier forKey:@"proxyIdentifier"];
  progress = self->_progress;
  *&progress = progress;
  [v6 encodeFloat:@"progress" forKey:progress];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_status forKey:@"status"];
  [v6 encodeInteger:self->_state forKey:@"state"];
}

- (SFAirDropTransferChange)initWithState:(int64_t)a3 progress:(double)a4 proxyIdentifier:(id)a5 displayName:(id)a6 status:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = SFAirDropTransferChange;
  v16 = [(SFAirDropTransferChange *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = a3;
    v16->_progress = a4;
    objc_storeStrong(&v16->_proxyIdentifier, a5);
    objc_storeStrong(&v17->_displayName, a6);
    objc_storeStrong(&v17->_status, a7);
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SFAirDropTransferChange;
  v4 = [(SFAirDropTransferChange *)&v8 description];
  v5 = SFAirDropTransferChangeStateDescription(self->_state);
  v6 = [v3 stringWithFormat:@"<%@ state:%@ progress:%f proxyIdentifier:%@ displayName:%@ status:%@>", v4, v5, *&self->_progress, self->_proxyIdentifier, self->_displayName, self->_status];

  return v6;
}

- (SFAirDropTransferChange)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
  [v4 decodeDoubleForKey:@"progress"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v10 = [v4 decodeInt64ForKey:@"state"];

  v11 = [(SFAirDropTransferChange *)self initWithState:v10 progress:v5 proxyIdentifier:v8 displayName:v9 status:v7];
  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  proxyIdentifier = self->_proxyIdentifier;
  v5 = a3;
  [v5 encodeObject:proxyIdentifier forKey:@"proxyIdentifier"];
  [v5 encodeDouble:@"progress" forKey:self->_progress];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_status forKey:@"status"];
  [v5 encodeInt64:self->_state forKey:@"state"];
}

@end