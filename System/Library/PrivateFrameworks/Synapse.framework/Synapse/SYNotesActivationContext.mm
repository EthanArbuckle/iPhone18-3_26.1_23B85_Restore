@interface SYNotesActivationContext
- (SYNotesActivationContext)init;
- (SYNotesActivationContext)initWithCoder:(id)coder;
- (SYNotesActivationContext)initWithUserActivityData:(id)data contextID:(unsigned int)d renderID:(unint64_t)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYNotesActivationContext

- (SYNotesActivationContext)init
{
  [(SYNotesActivationContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SYNotesActivationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SYNotesActivationContext;
  v5 = [(SYNotesActivationContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
    userActivityData = v5->_userActivityData;
    v5->_userActivityData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processHandle"];
    processHandle = v5->_processHandle;
    v5->_processHandle = v8;

    v5->_contextID = [coderCopy decodeInt32ForKey:@"contextID"];
    v5->_renderID = [coderCopy decodeInt64ForKey:@"renderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userActivityData = [(SYNotesActivationContext *)self userActivityData];
  [coderCopy encodeObject:userActivityData forKey:@"userActivityData"];

  processHandle = [(SYNotesActivationContext *)self processHandle];
  [coderCopy encodeObject:processHandle forKey:@"processHandle"];

  [coderCopy encodeInt32:-[SYNotesActivationContext contextID](self forKey:{"contextID"), @"contextID"}];
  [coderCopy encodeInt64:-[SYNotesActivationContext renderID](self forKey:{"renderID"), @"renderID"}];
}

- (SYNotesActivationContext)initWithUserActivityData:(id)data contextID:(unsigned int)d renderID:(unint64_t)iD
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = SYNotesActivationContext;
  v9 = [(SYNotesActivationContext *)&v15 init];
  if (v9)
  {
    v10 = [dataCopy copy];
    userActivityData = v9->_userActivityData;
    v9->_userActivityData = v10;

    processHandle = [MEMORY[0x277CF0CD0] processHandle];
    processHandle = v9->_processHandle;
    v9->_processHandle = processHandle;

    v9->_contextID = d;
    v9->_renderID = iD;
  }

  return v9;
}

@end