@interface PRRenderingTransitionState
+ (id)stateFromTransition:(id)a3 phase:(int64_t)a4;
- (NSString)description;
- (PRRenderingTransitionState)initWithBSXPCCoder:(id)a3;
- (PRRenderingTransitionState)initWithCoder:(id)a3;
- (PRRenderingTransitionState)initWithType:(id)a3 phase:(int64_t)a4 initialStateMetadata:(id)a5 currentStateMetadata:(id)a6 finalStateMetadata:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRenderingTransitionState

+ (id)stateFromTransition:(id)a3 phase:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [v6 type];
  v9 = [v6 initialStateMetadata];
  v10 = [v6 currentStateMetadata];
  v11 = [v6 finalStateMetadata];

  v12 = [v7 initWithType:v8 phase:a4 initialStateMetadata:v9 currentStateMetadata:v10 finalStateMetadata:v11];

  return v12;
}

- (PRRenderingTransitionState)initWithType:(id)a3 phase:(int64_t)a4 initialStateMetadata:(id)a5 currentStateMetadata:(id)a6 finalStateMetadata:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = PRRenderingTransitionState;
  v17 = [(PRRenderingTransitionState *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, a3);
    v18->_phase = a4;
    v19 = [v14 copy];
    initialStateMetadata = v18->_initialStateMetadata;
    v18->_initialStateMetadata = v19;

    v21 = [v15 copy];
    currentStateMetadata = v18->_currentStateMetadata;
    v18->_currentStateMetadata = v21;

    v23 = [v16 copy];
    finalStateMetadata = v18->_finalStateMetadata;
    v18->_finalStateMetadata = v23;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"_type"];
  [v5 encodeInteger:self->_phase forKey:@"_phase"];
  [v5 encodeObject:self->_initialStateMetadata forKey:@"_initialStateMetadata"];
  [v5 encodeObject:self->_currentStateMetadata forKey:@"_currentStateMetadata"];
  [v5 encodeObject:self->_finalStateMetadata forKey:@"_finalStateMetadata"];
}

- (PRRenderingTransitionState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
  v6 = [v4 decodeIntegerForKey:@"_phase"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialStateMetadata"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentStateMetadata"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_finalStateMetadata"];

  v10 = [(PRRenderingTransitionState *)self initWithType:v5 phase:v6 initialStateMetadata:v7 currentStateMetadata:v8 finalStateMetadata:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"_type"];
  [v5 encodeInt64:self->_phase forKey:@"_phase"];
  [v5 encodeObject:self->_initialStateMetadata forKey:@"_initialStateMetadata"];
  [v5 encodeObject:self->_currentStateMetadata forKey:@"_currentStateMetadata"];
  [v5 encodeObject:self->_finalStateMetadata forKey:@"_finalStateMetadata"];
}

- (PRRenderingTransitionState)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
  v6 = [v4 decodeInt64ForKey:@"_phase"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialStateMetadata"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentStateMetadata"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_finalStateMetadata"];

  v10 = [(PRRenderingTransitionState *)self initWithType:v5 phase:v6 initialStateMetadata:v7 currentStateMetadata:v8 finalStateMetadata:v9];
  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_type];
  v5 = [v3 appendInteger:self->_phase];
  v6 = [v3 appendObject:self->_initialStateMetadata];
  v7 = [v3 appendObject:self->_currentStateMetadata];
  v8 = [v3 appendObject:self->_finalStateMetadata];
  v9 = [v3 hash];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  phase = self->_phase;
  if (phase > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E78433B8[phase];
  }

  v9 = [v3 stringWithFormat:@"<%@:%p, type: %@, phase: %@, initialStateMetadata: %@, currentStateMetadata: %@, finalStateMetadata: %@>", v5, self, self->_type, v8, self->_initialStateMetadata, self->_currentStateMetadata, self->_finalStateMetadata];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRRenderingTransitionState alloc];
  type = self->_type;
  phase = self->_phase;
  initialStateMetadata = self->_initialStateMetadata;
  currentStateMetadata = self->_currentStateMetadata;
  finalStateMetadata = self->_finalStateMetadata;

  return [(PRRenderingTransitionState *)v4 initWithType:type phase:phase initialStateMetadata:initialStateMetadata currentStateMetadata:currentStateMetadata finalStateMetadata:finalStateMetadata];
}

@end