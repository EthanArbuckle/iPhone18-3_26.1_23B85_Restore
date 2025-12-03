@interface PRRenderingTransitionState
+ (id)stateFromTransition:(id)transition phase:(int64_t)phase;
- (NSString)description;
- (PRRenderingTransitionState)initWithBSXPCCoder:(id)coder;
- (PRRenderingTransitionState)initWithCoder:(id)coder;
- (PRRenderingTransitionState)initWithType:(id)type phase:(int64_t)phase initialStateMetadata:(id)metadata currentStateMetadata:(id)stateMetadata finalStateMetadata:(id)finalStateMetadata;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRRenderingTransitionState

+ (id)stateFromTransition:(id)transition phase:(int64_t)phase
{
  transitionCopy = transition;
  v7 = [self alloc];
  type = [transitionCopy type];
  initialStateMetadata = [transitionCopy initialStateMetadata];
  currentStateMetadata = [transitionCopy currentStateMetadata];
  finalStateMetadata = [transitionCopy finalStateMetadata];

  v12 = [v7 initWithType:type phase:phase initialStateMetadata:initialStateMetadata currentStateMetadata:currentStateMetadata finalStateMetadata:finalStateMetadata];

  return v12;
}

- (PRRenderingTransitionState)initWithType:(id)type phase:(int64_t)phase initialStateMetadata:(id)metadata currentStateMetadata:(id)stateMetadata finalStateMetadata:(id)finalStateMetadata
{
  typeCopy = type;
  metadataCopy = metadata;
  stateMetadataCopy = stateMetadata;
  finalStateMetadataCopy = finalStateMetadata;
  v26.receiver = self;
  v26.super_class = PRRenderingTransitionState;
  v17 = [(PRRenderingTransitionState *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, type);
    v18->_phase = phase;
    v19 = [metadataCopy copy];
    initialStateMetadata = v18->_initialStateMetadata;
    v18->_initialStateMetadata = v19;

    v21 = [stateMetadataCopy copy];
    currentStateMetadata = v18->_currentStateMetadata;
    v18->_currentStateMetadata = v21;

    v23 = [finalStateMetadataCopy copy];
    finalStateMetadata = v18->_finalStateMetadata;
    v18->_finalStateMetadata = v23;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"_type"];
  [coderCopy encodeInteger:self->_phase forKey:@"_phase"];
  [coderCopy encodeObject:self->_initialStateMetadata forKey:@"_initialStateMetadata"];
  [coderCopy encodeObject:self->_currentStateMetadata forKey:@"_currentStateMetadata"];
  [coderCopy encodeObject:self->_finalStateMetadata forKey:@"_finalStateMetadata"];
}

- (PRRenderingTransitionState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
  v6 = [coderCopy decodeIntegerForKey:@"_phase"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialStateMetadata"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentStateMetadata"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_finalStateMetadata"];

  v10 = [(PRRenderingTransitionState *)self initWithType:v5 phase:v6 initialStateMetadata:v7 currentStateMetadata:v8 finalStateMetadata:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"_type"];
  [coderCopy encodeInt64:self->_phase forKey:@"_phase"];
  [coderCopy encodeObject:self->_initialStateMetadata forKey:@"_initialStateMetadata"];
  [coderCopy encodeObject:self->_currentStateMetadata forKey:@"_currentStateMetadata"];
  [coderCopy encodeObject:self->_finalStateMetadata forKey:@"_finalStateMetadata"];
}

- (PRRenderingTransitionState)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
  v6 = [coderCopy decodeInt64ForKey:@"_phase"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialStateMetadata"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_currentStateMetadata"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_finalStateMetadata"];

  v10 = [(PRRenderingTransitionState *)self initWithType:v5 phase:v6 initialStateMetadata:v7 currentStateMetadata:v8 finalStateMetadata:v9];
  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_type];
  v5 = [builder appendInteger:self->_phase];
  v6 = [builder appendObject:self->_initialStateMetadata];
  v7 = [builder appendObject:self->_currentStateMetadata];
  v8 = [builder appendObject:self->_finalStateMetadata];
  v9 = [builder hash];

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

- (id)copyWithZone:(_NSZone *)zone
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