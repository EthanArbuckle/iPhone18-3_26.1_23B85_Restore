@interface SYNotesActivationContext
- (SYNotesActivationContext)init;
- (SYNotesActivationContext)initWithCoder:(id)a3;
- (SYNotesActivationContext)initWithUserActivityData:(id)a3 contextID:(unsigned int)a4 renderID:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYNotesActivationContext

- (SYNotesActivationContext)init
{
  [(SYNotesActivationContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SYNotesActivationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SYNotesActivationContext;
  v5 = [(SYNotesActivationContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
    userActivityData = v5->_userActivityData;
    v5->_userActivityData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processHandle"];
    processHandle = v5->_processHandle;
    v5->_processHandle = v8;

    v5->_contextID = [v4 decodeInt32ForKey:@"contextID"];
    v5->_renderID = [v4 decodeInt64ForKey:@"renderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SYNotesActivationContext *)self userActivityData];
  [v6 encodeObject:v4 forKey:@"userActivityData"];

  v5 = [(SYNotesActivationContext *)self processHandle];
  [v6 encodeObject:v5 forKey:@"processHandle"];

  [v6 encodeInt32:-[SYNotesActivationContext contextID](self forKey:{"contextID"), @"contextID"}];
  [v6 encodeInt64:-[SYNotesActivationContext renderID](self forKey:{"renderID"), @"renderID"}];
}

- (SYNotesActivationContext)initWithUserActivityData:(id)a3 contextID:(unsigned int)a4 renderID:(unint64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = SYNotesActivationContext;
  v9 = [(SYNotesActivationContext *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    userActivityData = v9->_userActivityData;
    v9->_userActivityData = v10;

    v12 = [MEMORY[0x277CF0CD0] processHandle];
    processHandle = v9->_processHandle;
    v9->_processHandle = v12;

    v9->_contextID = a4;
    v9->_renderID = a5;
  }

  return v9;
}

@end