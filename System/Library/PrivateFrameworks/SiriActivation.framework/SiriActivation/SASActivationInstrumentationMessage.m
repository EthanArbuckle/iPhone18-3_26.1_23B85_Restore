@interface SASActivationInstrumentationMessage
- (BOOL)isEqual:(id)a3;
- (SASActivationInstrumentationMessage)initWithCoder:(id)a3;
- (SASActivationInstrumentationMessage)initWithEvent:(id)a3 activationEventIdentifier:(id)a4 machAbsoluteTime:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASActivationInstrumentationMessage

- (SASActivationInstrumentationMessage)initWithEvent:(id)a3 activationEventIdentifier:(id)a4 machAbsoluteTime:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = SASActivationInstrumentationMessage;
  v11 = [(SASActivationInstrumentationMessage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_event, a3);
    v13 = [v10 copy];
    activationEventIdentifier = v12->_activationEventIdentifier;
    v12->_activationEventIdentifier = v13;

    v12->_machAbsoluteTime = a5;
  }

  return v12;
}

- (id)description
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19.receiver = self;
  v19.super_class = SASActivationInstrumentationMessage;
  v4 = [(SASActivationInstrumentationMessage *)&v19 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(ACTVSchemaACTVClientEvent *)self->_event description];
  v7 = [v5 initWithFormat:@"event = %@", v6];
  v20[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [(NSUUID *)self->_activationEventIdentifier description];
  v10 = [v8 initWithFormat:@"activationEventIdentifier = %@", v9];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_machAbsoluteTime];
  v13 = [v11 initWithFormat:@"machAbsoluteTime = %@", v12];
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [v14 componentsJoinedByString:{@", "}];
  v16 = [v3 initWithFormat:@"%@ {%@}", v4, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (unint64_t)hash
{
  v3 = [(ACTVSchemaACTVClientEvent *)self->_event hash];
  v4 = [(NSUUID *)self->_activationEventIdentifier hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_machAbsoluteTime];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      machAbsoluteTime = self->_machAbsoluteTime;
      if (machAbsoluteTime == [(SASActivationInstrumentationMessage *)v5 machAbsoluteTime])
      {
        v7 = [(SASActivationInstrumentationMessage *)v5 event];
        event = self->_event;
        if (event == v7 || [(ACTVSchemaACTVClientEvent *)event isEqual:v7])
        {
          v9 = [(SASActivationInstrumentationMessage *)v5 activationEventIdentifier];
          activationEventIdentifier = self->_activationEventIdentifier;
          v11 = activationEventIdentifier == v9 || [(NSUUID *)activationEventIdentifier isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SASActivationInstrumentationMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASActivationInstrumentationMessage::event"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASActivationInstrumentationMessage::activationEventIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASActivationInstrumentationMessage::machAbsoluteTime"];

  v8 = [v7 unsignedLongLongValue];
  v9 = [(SASActivationInstrumentationMessage *)self initWithEvent:v5 activationEventIdentifier:v6 machAbsoluteTime:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  event = self->_event;
  v5 = a3;
  [v5 encodeObject:event forKey:@"SASActivationInstrumentationMessage::event"];
  [v5 encodeObject:self->_activationEventIdentifier forKey:@"SASActivationInstrumentationMessage::activationEventIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_machAbsoluteTime];
  [v5 encodeObject:v6 forKey:@"SASActivationInstrumentationMessage::machAbsoluteTime"];
}

@end