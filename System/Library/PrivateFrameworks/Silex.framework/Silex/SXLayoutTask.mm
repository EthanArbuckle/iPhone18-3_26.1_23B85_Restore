@interface SXLayoutTask
- (SXLayoutTask)initWithOptions:(id)options instructions:(id)instructions;
- (SXLayoutTask)initWithOptions:(id)options instructions:(id)instructions blueprint:(id)blueprint DOM:(id)m;
- (id)description;
@end

@implementation SXLayoutTask

- (SXLayoutTask)initWithOptions:(id)options instructions:(id)instructions
{
  optionsCopy = options;
  instructionsCopy = instructions;
  v15.receiver = self;
  v15.super_class = SXLayoutTask;
  v9 = [(SXLayoutTask *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = uUIDString;

    objc_storeStrong(&v10->_options, options);
    objc_storeStrong(&v10->_instructions, instructions);
    v10->_startTime = CACurrentMediaTime();
  }

  return v10;
}

- (SXLayoutTask)initWithOptions:(id)options instructions:(id)instructions blueprint:(id)blueprint DOM:(id)m
{
  optionsCopy = options;
  instructionsCopy = instructions;
  blueprintCopy = blueprint;
  mCopy = m;
  v23.receiver = self;
  v23.super_class = SXLayoutTask;
  v15 = [(SXLayoutTask *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v16->_identifier;
    v16->_identifier = uUIDString;

    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v16->_instructions, instructions);
    v20 = [blueprintCopy copy];
    blueprint = v16->_blueprint;
    v16->_blueprint = v20;

    objc_storeStrong(&v16->_DOM, m);
    v16->_startTime = CACurrentMediaTime();
  }

  return v16;
}

- (id)description
{
  type = [(SXLayoutTask *)self type];
  v4 = @"update";
  if (type != 1)
  {
    v4 = 0;
  }

  if (type)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"new";
  }

  v6 = MEMORY[0x1E696AD60];
  v7 = objc_opt_class();
  identifier = [(SXLayoutTask *)self identifier];
  v9 = [v6 stringWithFormat:@"<%@: %p type: %@; identifier: %@", v7, self, v5, identifier];;

  options = [(SXLayoutTask *)self options];
  [v9 appendFormat:@"\noptions: \n%@", options];

  instructions = [(SXLayoutTask *)self instructions];
  [v9 appendFormat:@"\ninstructions: \n%@", instructions];

  [v9 appendFormat:@"\n>"];

  return v9;
}

@end