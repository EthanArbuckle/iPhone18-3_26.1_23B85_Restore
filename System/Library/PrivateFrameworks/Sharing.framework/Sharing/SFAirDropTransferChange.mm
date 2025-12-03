@interface SFAirDropTransferChange
- (NSString)description;
- (SFAirDropTransferChange)initWithBSXPCCoder:(id)coder;
- (SFAirDropTransferChange)initWithCoder:(id)coder;
- (SFAirDropTransferChange)initWithState:(int64_t)state progress:(double)progress proxyIdentifier:(id)identifier displayName:(id)name status:(id)status;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAirDropTransferChange

- (SFAirDropTransferChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
  [coderCopy decodeFloatForKey:@"progress"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v10 = [coderCopy decodeIntegerForKey:@"state"];

  v11 = [(SFAirDropTransferChange *)self initWithState:v10 progress:v5 proxyIdentifier:v8 displayName:v9 status:v7];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  proxyIdentifier = self->_proxyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:proxyIdentifier forKey:@"proxyIdentifier"];
  progress = self->_progress;
  *&progress = progress;
  [coderCopy encodeFloat:@"progress" forKey:progress];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
}

- (SFAirDropTransferChange)initWithState:(int64_t)state progress:(double)progress proxyIdentifier:(id)identifier displayName:(id)name status:(id)status
{
  identifierCopy = identifier;
  nameCopy = name;
  statusCopy = status;
  v19.receiver = self;
  v19.super_class = SFAirDropTransferChange;
  v16 = [(SFAirDropTransferChange *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_state = state;
    v16->_progress = progress;
    objc_storeStrong(&v16->_proxyIdentifier, identifier);
    objc_storeStrong(&v17->_displayName, name);
    objc_storeStrong(&v17->_status, status);
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

- (SFAirDropTransferChange)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyIdentifier"];
  [coderCopy decodeDoubleForKey:@"progress"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v10 = [coderCopy decodeInt64ForKey:@"state"];

  v11 = [(SFAirDropTransferChange *)self initWithState:v10 progress:v5 proxyIdentifier:v8 displayName:v9 status:v7];
  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  proxyIdentifier = self->_proxyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:proxyIdentifier forKey:@"proxyIdentifier"];
  [coderCopy encodeDouble:@"progress" forKey:self->_progress];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_status forKey:@"status"];
  [coderCopy encodeInt64:self->_state forKey:@"state"];
}

@end