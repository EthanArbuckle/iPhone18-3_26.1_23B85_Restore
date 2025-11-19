@interface SXLayoutTask
- (SXLayoutTask)initWithOptions:(id)a3 instructions:(id)a4;
- (SXLayoutTask)initWithOptions:(id)a3 instructions:(id)a4 blueprint:(id)a5 DOM:(id)a6;
- (id)description;
@end

@implementation SXLayoutTask

- (SXLayoutTask)initWithOptions:(id)a3 instructions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SXLayoutTask;
  v9 = [(SXLayoutTask *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 0;
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    objc_storeStrong(&v10->_options, a3);
    objc_storeStrong(&v10->_instructions, a4);
    v10->_startTime = CACurrentMediaTime();
  }

  return v10;
}

- (SXLayoutTask)initWithOptions:(id)a3 instructions:(id)a4 blueprint:(id)a5 DOM:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = SXLayoutTask;
  v15 = [(SXLayoutTask *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = 1;
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    identifier = v16->_identifier;
    v16->_identifier = v18;

    objc_storeStrong(&v16->_options, a3);
    objc_storeStrong(&v16->_instructions, a4);
    v20 = [v13 copy];
    blueprint = v16->_blueprint;
    v16->_blueprint = v20;

    objc_storeStrong(&v16->_DOM, a6);
    v16->_startTime = CACurrentMediaTime();
  }

  return v16;
}

- (id)description
{
  v3 = [(SXLayoutTask *)self type];
  v4 = @"update";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"new";
  }

  v6 = MEMORY[0x1E696AD60];
  v7 = objc_opt_class();
  v8 = [(SXLayoutTask *)self identifier];
  v9 = [v6 stringWithFormat:@"<%@: %p type: %@; identifier: %@", v7, self, v5, v8];;

  v10 = [(SXLayoutTask *)self options];
  [v9 appendFormat:@"\noptions: \n%@", v10];

  v11 = [(SXLayoutTask *)self instructions];
  [v9 appendFormat:@"\ninstructions: \n%@", v11];

  [v9 appendFormat:@"\n>"];

  return v9;
}

@end